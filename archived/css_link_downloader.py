import os
import re
import requests
import cssutils


def path_without_file(arg):
    return "/".join(arg.split("/")[:-1])

def build_url(arg): 
    return f"url('{arg}')"

def convert_url(url):
    url = url.replace("url(", "")
    url = url.split(")")[0]
    return url.strip("'").strip("\"")

# Fixes css links that point to the v1 server


# Repalces the following with the location of your v1 repo
save_location  = ".."


def download_images_in_css(): 
    for route in os.listdir("./"):
        
        if not os.path.isfile(route):
            continue
        if not route.endswith(".css"):
            continue
        print(f"route {route}")
        css = cssutils.parseFile(route, 'utf-8')
        for rule in css:
            if not rule.type == rule.STYLE_RULE:
                continue
            for property in rule.style:
                if not property.value.startswith("url("):
                    continue
                if property.name == "background-image" or property.name == "background":
                    image_url = convert_url(property.value)
                    if image_url.startswith("/ssw"):
                        req = requests.get(f"https://ssw.com.au{image_url}")
                    else: continue
                    new_location = image_url.replace("/ssw", "/history", 1)
                    #property.value = build_url(new_location)
                    if property.value.split(")")[-1] is not None:
                        property.value = build_url(new_location)+property.value.split(")")[-1] 
                    else: property.value = build_url(new_location)
                    css_text = css.cssText.decode("utf-8")
                    path_to_file = f"{save_location}{path_without_file(new_location)}"
                    print(f"path to file {path_to_file}")
                    if not os.path.exists(path_to_file):
                        print(f"making directory {path_to_file}")
                        os.makedirs(path_to_file)
                    else: print("directory already exists")
                    # Writes the contents of the http request to a file
                    loc = f"{save_location}{new_location}"
                    print(f"save location {loc}")
                    with open (loc, "wb") as file:
                        file.write(req.content)
                    with open (route, "w", encoding="utf-8") as file:
                        file.write(css_text)
download_images_in_css()

