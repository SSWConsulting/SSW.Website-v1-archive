import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import requests
from bs4 import BeautifulSoup
import re

# TODO: eXtremeEmails
WHITELIST = [
    # "AccessReporter",
    # "AgileTemplate",
    # "DataMergePRO",
    # "DataPRO",
    # "DataRenovator",
    # "EmailMergePRO",
    # "Events",
    # "ExchangeReporter",
    # "HealthAuditor",
    # "LinkAuditor",
    # "LookOut",
    # "PerformancePRO",
    # "NETToolkit",
    # "PropertyAndEventPRO",
    # "SQLAuditor",
    # "SQLDeploy",
    # "SQLReportingServicesAuditor",
    # "SQLTotalCompare",
    # "Standards",
    # TODO: "StandardsInternal",
    "Training",
    # "TeamCalendar",
    # "UpsizingPRO",
    # "WebPager"
    # "NETUG",
    # "WisePRO","
]

IMAGE_REPLACEMENTS = {
    "adam_thumb.jpg": "https://www.ssw.com.au/ssw/Events/Training/Images/adam_thumb.jpg"
}

service = Service("C:\\selenium\\chromedriver.exe")
driver = webdriver.Chrome(service=service)

PARENT_DIR = "history/"
SSW_URL = "https://www.ssw.com.au"
SSW_V1_URL = SSW_URL + "/ssw"
SSW_REGEX = "((http(?:s?):\/\/(?:www.)?ssw.com.au\/?)?(?:\/ssw)?)"
SSW_V1_REGEX = "((http(?:s?):\/\/(?:www.)?ssw.com.au?)?(?:\/ssw\/+))"


def download_image(src, path):
    offset = 2
    base_url = ""
    if src.startswith(SSW_URL):
        offset = 4
    elif src.lower().startswith("/ssw"):
        base_url = SSW_URL
        offset = 2
    elif not src.startswith("/") and not src.startswith("http"):
        base_url = path + "/"
        offset = 0

    src = src.split("?")[0]
    split_src = src.split("/")
    image_name = split_src[-1]

    image_path = PARENT_DIR + "/".join(split_src[offset:-1])
    if not os.path.exists(image_path):
        os.makedirs(image_path)

    request_path = (base_url + src).strip()
    img_res = requests.get(request_path)
    img_data = img_res.content

    store_path = (image_path + "/" + image_name).replace("//", "/")

    if b"<!DOCTYPE html>" in img_data and img_res.status_code != 200:
        print("404 - " + request_path)

    if img_res.status_code != 200:
        print("Failed: " + request_path)
        return ""

    with open(store_path, "wb") as f:
        f.write(img_data)

    output_src = ("/" + PARENT_DIR + "/".join(split_src[offset:])).replace("//", "/")
    return output_src


def fix_images(soup, path):
    images = soup.find_all("img")
    for image in images:

        # Replace broken images with the correct URLs if possible
        for key in IMAGE_REPLACEMENTS:
            if image["src"].endswith(key):
                image["src"] = IMAGE_REPLACEMENTS[key]

        # Skip images that are not hosted on SSW + are not .axd files
        src = image["src"]
        if (
            src is None
            or src.endswith(".axd")
            or (src.startswith("http") and not src.startswith(SSW_URL))
        ):
            continue

        # Set the image src to the downloaded image's path
        image["src"] = download_image(src, path)

    return soup


def fix_css(soup, path):
    links = soup.find_all("link")
    css_files = os.listdir(
        "C:\\Users\\hazro\\code\\ssw\\SSW.Website-v1-Progress\\history\\css"
    )

    for link in links:
        if link["rel"] == ["stylesheet"]:
            href = link["href"]
            if href is None:
                continue
            if "ssw_raven_print" in href:
                link["href"] = "/history/ssw_raven_print.css"
            elif "ssw_raven" in href:
                link["href"] = "/history/ssw_raven.css"
            for css_file in css_files:
                if css_file in href:
                    link["href"] = "/history/css/" + css_file
        elif link["rel"] == ["icon"]:
            href = link["href"]
            if href is None:
                continue
            link["href"] = download_image(href, path)

    return soup

def fix_links(soup): 
    links = soup.find_all("a", href=True)
    for link in links:
        if link is None:
            continue
        href = link["href"]

        if not re.match(SSW_V1_REGEX, href):
            continue

        # These if statements are only to fix the breadcrumbs links on Training pages
        if href.endswith("Training/Default.aspx"):
            link["href"] = "index.html"
        elif href.endswith("Training/Courses.aspx"):
            link["href"] = "https://www.ssw.com.au/events"
    return soup

def add_archive_header(soup, url):
    archive_div = soup.new_tag("div")

    attention_span = soup.new_tag("div")
    attention_span.string = "ATTENTION"
    attention_span["style"] = "color: #cc4141; font-size: 24px; font-weight: 600;"

    archive_div.append(attention_span)

    content_p = soup.new_tag("p")

    content_p.append(" This is an archived page originally from " + url)
    content_p.append(" and is no longer maintained. Some links may not work and information may be out of date. Please navigate to ")

    new_link = soup.new_tag("a", href="https://www.ssw.com.au/events", style="color: #999")
    new_link.append("ssw.com.au/events")

    content_p.append(new_link)
    content_p.append(" for updated information.")

    archive_div.append(content_p)

    archive_div[
        "style"
    ] = """
        text-align: center; 
        font-size: 1.125rem; 
        color: #999; 
        background-color: #333333;
        padding-top: 1.25rem;
        padding-bottom: 1.25rem;
        padding-right: 0.75rem;
        padding-left: 0.75rem;
    """

    soup.body.insert(0, archive_div)

    return soup

def output_index_page(file_list: list[str], path: str):

    if len(file_list) <= 0:
        return

    buf = """<!DOCTYPE html>
<html>
<head>
    <title>Training Pages</title>
</head>
<body>
    <h1>Training Pages</h1>
    <ul>
"""
    for file in file_list:
        buf += (f"      <li><a href='{file}'>{file}</a></li>\n")

    buf += """
    </ul>
</body>
</html>
"""
    with open(os.path.join(path, "index.html"), "w") as f:
        f.write(buf)


def output_sitemap(path: str):
    # TODO: Output sitemap - use Pandas https://www.jcchouinard.com/create-xml-sitemap-with-python/
    pass

def archive_pages(path: str) -> None:
    items_written = []
    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        split_path = item_path.split("\\")

        if os.path.isdir(item_path) and split_path[1] in WHITELIST:
            archive_pages(item_path)
            output_sitemap(item_path)

        elif os.path.isfile(item_path) and item_path.endswith(".aspx") and not split_path[-1].startswith("zz") and split_path[1] in WHITELIST:
            if split_path[-1].startswith("za"):
                split_path[-1] = split_path[-1][2:]

            uri = "/".join(split_path[1:])
            url = SSW_URL + "/ssw/" + uri
            driver.get(url)

            if driver.current_url != url:
                print("Redirect: " + url + " -> " + driver.current_url)
                new_path_split = item_path.split("\\")
                new_path_split[-1] = "zr" + new_path_split[-1]
                os.rename(item_path, "/".join(new_path_split))
                continue

            soup = BeautifulSoup(driver.page_source, "lxml")

            for element in soup(["script", "iframe"]):
                if element.get("src") is not None:
                    if "javascript_bundles/ssw_pigeon" in element["src"]:
                        element["src"] = "/history/ssw_pigeon.js"
                        continue
                    elif "javascript_bundles/jquery" in element["src"]:
                        element["src"] = "/history/jquery.js"
                        continue
                    elif "javascript_bundles/moment" in element["src"]:
                        element["src"] = "/history/moment.js"
                        continue
                    # TODO: Fix as was removed as was causing errors with images, will not be responsive
                    # elif "dist/menu.js" in element["src"]:
                    #     element["src"] = "/history/menu.js"
                    #     continue
                element.extract()

            base_path = SSW_V1_URL + "/" + "/".join(split_path[1:-1])
            soup = fix_images(soup, base_path)
            soup = fix_css(soup, base_path)
            soup = fix_links(soup)

            soup = add_archive_header(soup, url)

            page_source = str(soup)

            dir = "/".join(split_path[1:-1])
            if not os.path.exists(PARENT_DIR + dir):
                os.makedirs(PARENT_DIR + dir)

            output_filename = PARENT_DIR + uri + ".html"
            with open(output_filename, "w+", encoding="utf-8") as f:
                f.write(page_source)
                items_written.append(output_filename)

            new_path_split = item_path.split("\\")

            if not new_path_split[-1].startswith("za"):
                new_path_split[-1] = "za" + new_path_split[-1]
                os.rename(item_path, "/".join(new_path_split))

    output_path = os.path.join("history", "/".join(path.split("\\")[1:]))
    output_index_page(items_written, output_path)

if __name__ == "__main__":
    archive_pages("SSW.Website.WebUI")
