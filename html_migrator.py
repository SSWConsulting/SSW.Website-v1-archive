from bs4 import BeautifulSoup
import re
import os
import csv
import chardet
import requests
import urllib.parse

SSW_URL = "https://www.ssw.com.au"
FULL_SSW_URL = SSW_URL + "/ssw"
BASE_DIRECTORY = "SSW.Website.WebUI"
SSW_V1_REGEX = r"((http(?:s?):\/\/(?:www.)?ssw.com.au?)?(?:\/ssw\/+))"
SSW_V1_REGEX_SUB = r"(https?:\/\/www\.ssw\.com\.au\/ssw)"
PARENT_DIR = "history/"

IMAGE_REPLACEMENTS: dict[str, str] = {
    "adam_thumb.jpg": "https://www.ssw.com.au/ssw/Events/Training/Images/adam_thumb.jpg",
    "mehmet-thumb.jpg": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/Mehmet.jpg",
    "eric_thumb.jpg": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/eric_phan.jpg",
    "SSWLogo-xmas.svg": "https://www.ssw.com.au/SSW/images/Raven/SSWLogo.svg",
    "Damian_profile_thumb.JPG": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/Damianphoto.JPG",
}
ARCHIVED_FILES : dict[str, str] = {}

def fix_scripts(soup: BeautifulSoup, path: str) -> BeautifulSoup:

    # Remove most scripts and iframes
    for element in soup(["script", "iframe"]):
        if element.get("src") is not None:
            # If the script is a common script, replace it with the local version
            if "javascript_bundles/ssw_pigeon" in element["src"]:
                element["src"] = "/history/ssw_pigeon.js"
                continue
            elif "javascript_bundles/jquery" in element["src"]:
                element["src"] = "/history/jquery.js"
                continue
            elif "javascript_bundles/moment" in element["src"]:
                element["src"] = "/history/moment.js"
                continue
            elif "javascript_bundles/ssw_consulting" in element["src"]:
                element["src"] = "/history/ssw_consulting.js"
                continue
            # TODO: Fix as was removed as was causing errors with images, will not be responsive
            # elif "dist/menu.js" in element["src"]:
            #     element["src"] = "/history/menu.js"
            #     continue
        # Removes the script tag
        element.extract()

    for element in soup(["meta"]):
        if element.get("http-equiv") is not None and element["http-equiv"] == "refresh":
            element.decompose()

        if element.get("content") is not None and (
            element["content"].endswith(".png") or element["content"].endswith(".jpg")
        ):
            href = element["content"]
            if href is None:
                continue
            element["content"] = download_file(href, path)

    for element in soup.select(
        'div[id*="batBeacon"]',
    ):
        element.decompose()

    # Add GTM script to the head
    gtm_script = soup.new_tag("script")
    gtm_script.string = """
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NXDBVV');
    """
    head_tag = soup.find("head")
    if head_tag is not None:
        head_tag.insert(0, gtm_script)

    # Add GTM noscript to the body
    gtm_noscript = soup.new_tag("noscript")
    gtm_iframe = soup.new_tag("iframe")
    gtm_iframe["src"] = "https://www.googletagmanager.com/ns.html?id=GTM-NXDBVV"
    gtm_iframe["height"] = "0"
    gtm_iframe["width"] = "0"
    gtm_iframe["style"] = "display:none;visibility:hidden"
    gtm_noscript.append(gtm_iframe)

    body_tag = soup.find("body")
    if body_tag is not None:
        body_tag.insert(0, gtm_noscript)

    return soup

def pascal_to_kebab(s: str) -> str:
    # Convert PascalCase to kebab-case
    regex = r"([a-z])([A-Z0-9])"
    replacements = {
        "NET": "Net",
        "NetUG": "Netug",
        "SQL": "Sql",
        "BI": "Bi",
        "ALM": "Alm",
        "SSW": "Ssw",
        "iOS": "Ios",
        "SignalR": "Signalr",
        "AngularJS": "Angularjs",
        "eXtremeEmails": "extreme-emails",
        "HoloLens": "Hololens",
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
# Chat GPT wrote this for me
def dict_to_csv(dict_obj, filename):
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["originalUrl", "newUrl"])
        for key, value in dict_obj.items():
            writer.writerow([key, value])


WHITELIST = [
    # "AccessReporter",
    # "CodeAuditor",
    # "DataMergePRO",
    # "DataPRO",
    # "default",
    # "Download",
    # "EmailMergePRO",
    # "Encode",
    # "Events",
    # "ExchangeReporter",
    "Employees"
    # "eXtremeEmails",
    # "include",
    # "LinkAuditor",
    # "LookOut",
    # "NETUG",
    # "not_found",
    # "PerformancePRO",
    # "Projects",
    # "Redirect",
    # "SSWCustomError404",
    # "SSWCustomMaintenance",
    # "Standards",
    # "StandardsInternal",
    # "TeamCalendar",
    # "Testmockup",
]

def main():
    fix_html_files_in_dir(BASE_DIRECTORY)
    dict_to_csv(ARCHIVED_FILES, "urls.csv")


# 
def fix_images(soup: BeautifulSoup, path: str) -> BeautifulSoup:
    images = soup.find_all("img")
    for image in images:

        # Replace broken images with the correct URLs if possible
        for key in IMAGE_REPLACEMENTS:
            if image.get("src") is None:
                print("WHY ON GOD IS THERE AN IMAGE TAG WITH NO SRC?")
                return soup
            if image["src"].endswith(key):
                image["src"] = IMAGE_REPLACEMENTS[key]

        # Skip images that are not hosted on SSW + are not .axd files
        src = image["src"]
        if src is None or (src.startswith("http") and not src.startswith(SSW_URL)):
            continue

        # Added to remove .axd files from the HTML doc as they are not images
        if ".axd" in src:
            image.extract()
            continue

        # Set the image src to the downloaded image's path
        image["src"] = download_file(src, path)

    return soup

def fix_html_files_in_dir(path : str):
    for dir in os.listdir(path):
        archive_directory = path.replace("SSW.Website.WebUI", "history")
        current_file = os.path.join(path, dir)
        base_subdirectory = ""
        if "\\" in path:
            base_subdirectory = path.split("\\")[1]
        #base_subdirectory = path.split("\\")[1]
        # print(base_subdirectory)
        if os.path.isfile(current_file) and base_subdirectory in WHITELIST:
            if dir.endswith(".html") or dir.endswith(".htm") and not (dir.startswith("zz") or dir.startswith("zr")):
                new_dir = current_file.replace("SSW.Website.WebUI", "history")
                if dir.startswith("za"):
                    new_dir = new_dir.replace("za", "")
                new_dir = pascal_to_kebab(new_dir)
                encoding = return_probable_encoding(current_file)
                with open(current_file, "r", encoding=encoding) as f:
                    soup = BeautifulSoup(f, "html.parser")
                    soup = fix_links(soup)
                    print("adding banner to :"+ (path + "/" +dir).replace("SSW.Website.WebUI", FULL_SSW_URL).replace("\\", "/"))
                    soup = add_fixed_header(soup)
                    base_path = path.replace("SSW.Website.WebUI", FULL_SSW_URL).replace("\\", "/")
                    soup = fix_images(soup, base_path)
                    soup = fix_scripts(soup, base_path)
                    archive_directory = pascal_to_kebab(archive_directory)
                    if not os.path.exists(archive_directory):
                        # directory must exist for a file to be written there
                        os.makedirs(archive_directory)
                    with open(new_dir, "w", encoding=
                    "utf-8") as f2:
                        # print("Writing file to "+ pascal_to_kebab(new_dir))
                        f2.write(str(soup))     
                    ARCHIVED_FILES[current_file.replace("SSW.Website.WebUI", FULL_SSW_URL)] = new_dir
                current_file_split = current_file.split("\\")
                name = current_file_split[-1]
                if not name.startswith("za"):
                    archive_uri = os.path.join("\\".join(current_file_split[:-1]), "za"+ name)
                else:
                    archive_uri = current_file
                # mark the file as archived using za prefix
                os.rename(current_file, archive_uri)
        elif os.path.isdir(current_file):
            fix_html_files_in_dir(current_file)


def add_fixed_header(soup: BeautifulSoup) -> BeautifulSoup: 
    body = soup.find("body")
    if body is not None: 
        archive_banner = BeautifulSoup("""<div style="
            line-height: 1.5;
            text-align: center; 
            font-size: 1.125rem; 
            color: #999;
            background-color: #333333;
            padding-top: 1.25rem;
            padding-bottom: 1.25rem;
            padding-right: 0.75rem;
            padding-left: 0.75rem;
            ">
            <div style="color: white; font-size: 2rem !important; font-weight: 600;">
                ⚠️ This page has been archived
            </div>
            <div style="color: white; font-size: 1.125rem !important; font-weight: 600;">
                <p>
                    ✅ New page with updated info:
                    <a href="https://www.ssw.com.au" style="color: white">
                        ssw.com.au
                    </a>
                </p>
            </div>
        </div>""", "html.parser")
        banner = archive_banner.find_all("div")[0]
        body.insert(0, banner)
    return soup


def return_probable_encoding(path: str)-> str | None:
    with open(path, 'rb') as f:
        result = chardet.detect(f.read())
    return result['encoding']



def download_file(src: str, path: str) -> str:
    # TODO: Change to Regex
    # This offset thing is done because we split by slash
    # imagine the offset for: https://www.ssw.com.au/ssw/Events/Training/Images/adam_thumb.jpg
    # where the split would return: [https:, , www.ssw.com.au, ssw, Events, Training, Images, adam_thumb.jpg]
    # and the offset would be 4
    # so the array with an offset of 4 would be [Events, Training, Images, adam_thumb.jpg]
    offset = 2
    base_url = ""

    src = src.split("?")[0]
    img_src = src

    RELATIVE_REGEX = r"\/(\w+\/\.\.)"
    RELATIVE_REPLACEMENT = r"((\.\.\/)+)"

    if src.startswith(SSW_URL):
        offset = 4
    elif src.lower().startswith("/ssw"):
        base_url = SSW_URL
        offset = 2
    elif not src.startswith("/") and not src.startswith("http"):
        base_url = path + "/"
        offset = 0
        if not img_src.startswith("../"):
            img_src = re.sub(SSW_V1_REGEX_SUB, "", base_url) + img_src

    split_src = img_src.split("/")
    image_name = split_src[-1]

    image_path = os.path.normpath(PARENT_DIR + "/".join(split_src[offset:-1])).replace(
        "\\", "/"
    )

    image_path = re.sub(
        r"/+",
        "/",
        image_path,
    )

    if re.match(r"\/?history\/\w+", image_path) is None:
        if image_path.startswith("/"):
            image_path = image_path[1:]
        image_path = ("history/" + image_path).replace("//", "/")

    image_path = pascal_to_kebab(image_path)

    store_path = urllib.parse.unquote(
        pascal_to_kebab(image_path + "/" + image_name).replace(" ", "")
    )

    store_path = re.sub(RELATIVE_REPLACEMENT, "", store_path)

    folder_path = "/".join(store_path.split("/")[:-1])

    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    request_path = re.sub(RELATIVE_REGEX, "", (base_url + src).strip())
    img_res = requests.get(request_path)
    img_data = img_res.content

    if b"<!DOCTYPE html>" in img_data and img_res.status_code != 200:
        print("404 - " + request_path)

    if img_res.status_code != 200:
        print("Failed: " + request_path)
        return ""

    with open(store_path, "wb") as f:
        f.write(img_data)

    return "/" + store_path


def fix_links(soup: BeautifulSoup) -> BeautifulSoup:
    links = soup.find_all("a", href=True)
    for link in links:
        if link is None:
            continue
        href = link["href"]

        # If it's not on the v1 site, skip it
        if not re.match(SSW_V1_REGEX, href):
            continue

        # Direct book now buttons to the new book now page
        # should this cover all shop pages?
        inner_text = link.get_text()
        if (
            inner_text is not None
            and "book now" in inner_text.lower()
            and "/shop/" in href.lower()
        ):
            link["href"] = "https://www.ssw.com.au/booknow"
            continue

        # These if statements are only to fix the breadcrumbs links on Training pages
        if href.endswith("Training/Default.aspx"):
            link["href"] = "index.html"
        elif href.endswith("Training/Courses.aspx"):
            link["href"] = "https://www.ssw.com.au/events"
    return soup


if __name__ == "__main__":
    main()

