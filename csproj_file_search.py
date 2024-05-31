import re
import xml.etree.ElementTree as ET
import os

untouched = []
archived = []
removed = []
redirects = []
# files that are referenced in csproj but not the directory
non_existent = []




def pascal_to_kebab(s: str) -> str:
    if s.endswith("demo-fms200203"):
        return s
    # Convert PascalCase to kebab-case
    regex = r"([a-z])([A-Z0-9])"
    replacements = {
        "demo-fms200203" : "demo-fms200203",
        "NET": "Net",
        "NetUG": "Netug",
        "SQL": "Sql",
        "BI": "Bi",
        "ALM": "Alm",
        "SSW": "Ssw",
        "iOS": "Ios",
        "SignalR": "Signalr",
        "AngularJS": "Angularjs",
        "HoloLens": "Hololens",
        "eXtremeEmails": "extreme-emails",
        "UTS": "Uts",
        "DevOps": "Devops",
        "SharePoint": "Sharepoint",
        "_": "-",
    }
    for old, new in replacements.items():
        s = s.replace(old, new)
    s = re.sub(r"and([A-Z0-9])", r"And\1", s)
    s = re.sub(r"to([A-Z0-9])", r"To\1", s)
    # add dashes between words and numbers
    s = re.sub(r"(\d+)([A-Z])", r"\1-\2", s)
    return re.sub(regex, r"\1-\2", s).lower()

def html_location(path: str):
    # I'm just going to assume anything passed into this function has "za" in the name
    name_without_za = path.split("\\")[-1][2:]
    path_to_file = "\\".join(path.split("\\")[:-1])
    html_location = pascal_to_kebab(os.path.join(history_route, path).replace("aspx", "html", 1))
    return html_location

def htm_location(path: str):
    # Again, just assuming anything passed into this function will have "za" in the name. 
    # If it's not archived it shouldn't be in the archive folder
    name_without_za = path.split("\\")[-1][2:]
    path_to_file = "\\".join(path.split("\\")[:-1])
    htm_location = pascal_to_kebab(os.path.join(history_route, path))
    return htm_location


history_route = "archive"
v1_server_route = "SSW.Website.WebUI"
domain = "https://ssw.com.au/ssw/"

def file_exists(full_path: str, prefix : str = "") -> bool:
    file_name = full_path.split("\\")[-1]
    path_to_file = "\\".join(full_path.split("\\")[:-1])
    file_name = prefix + file_name
    full_path_with_prefx = os.path.join(path_to_file, file_name)
    return os.path.exists(full_path_with_prefx)

def path_to_url(path: str) : 
    path = path.replace('\\', '/')
    return domain + path

def file_is_html_content(path):
    return path.endswith('.aspx') or path.endswith(".htm") or path.endswith(".html")

def main():
    tree = ET.parse(os.path.join(v1_server_route,'SSW.Website.WebUI.csproj'))
    root = tree.getroot()

    # Get the namespace
    namespace = {'ns': root.tag.split('}')[0].strip('{')}
    # Find all 'Content' tags
    for content in root.findall(".//ns:Content", namespace):
        include = content.attrib['Include']



        file_path_v1_repo = os.path.join(v1_server_route, include)
        if file_is_html_content(include):
            file_in_dir = False
            if file_exists(file_path_v1_repo, "zz"): 
                file_in_dir = True
                removed.append(include)
            if file_exists(file_path_v1_repo, "za"):
                file_in_dir = True
                archived.append(include)
            if file_exists(file_path_v1_repo, "zr"):
                file_in_dir = True
                redirects.append(include)
                
            # Just checks if the file exists without an appendix
            if file_exists(file_path_v1_repo):
                file_in_dir = True
                untouched.append(include)
            if not file_in_dir:
                non_existent.append(include)

            with open("progress.txt", "w+" ,encoding="UTF-8") as file:
                file.write("Removed files: \n\n")
                for dir in removed:
                    file.write(path_to_url(dir) + "\n")
                file.write("\n\nRedirects (not archived)\n\n")
                for dir in redirects: 
                    file.write(path_to_url(dir) + "\n")
                file.write("\n\nArchived files: \n\n")
                for dir in archived:
                    if dir.endswith("htm") and not file_exists(htm_location(dir)):
                        dir += " - WARNING: there was no entry in the archive repo corresponding to this file"
                    if (dir.endswith("html") or dir.endswith(".aspx")) and not file_exists(html_location(dir)):
                        dir += " - WARNING: there was no entry in the archive repo corresponding to this file"
                    file.write(path_to_url(dir) + "\n")
                file.write("\n\nUntouched files: \n\n")
                for dir in untouched:
                    file.write(path_to_url(dir)+ "\n")
                file.write("\n\nReferenced in csproj only\n\n")
                for dir in non_existent:
                    file.write(path_to_url(dir) + "\n")
main()








# def add_index_in_folders(path: str, archived_routes) -> dict[str, str]:
#     # dictionary: dict[str, str] = {}
#     # for route in os.listdir(path):
#         # for thing in whitelist:
#         #     if not route.__contains__(thing):
#         #         continue
#         # if os.path.isfile(os.path.join(path, route)):
#         #     name_without_za = route
#         #     if route.startswith("za"):
#         #         name_without_za = route[2:]
#             # Checks whether the file has an archived counterpart
#             if route.endswith(".aspx") or route.endswith(".html"):
#                 html_location = pascal_to_kebab(os.path.join(path, name_without_za).replace("aspx", "html").replace(webUi, historyroute))
#                 if os.path.isfile(html_location):
#                     # dictionary[v1_site_route(path, name_without_za)] =  history_route(path, name_without_za)
#                     continue
#             # Checks whether the file has an archived counterpart
#             elif route.endswith(".htm"):
#                 # print("file ends with htm")
#                 htm_location = pascal_to_kebab(os.path.join(path.replace(webUi, historyroute), name_without_za))
#                 # print("searching for htm file at:"+ htm_location)
#                 if os.path.isfile(htm_location):
#                     # print("found an htm file")
#                     # dictionary[v1_site_route(path, name_without_za)] = history_route(path, name_without_za)
#                     continue
#         else: 

#             # print("writing dictionary to: "+path)
#             dictionary.update(add_index_in_folders(os.path.join(path, route), archived_routes))

   
#     output_index_page(dictionary, path.replace(webUi, historyroute))
#     return dictionary