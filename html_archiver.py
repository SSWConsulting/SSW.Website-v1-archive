import os
import requests
from bs4 import BeautifulSoup, Tag
import re
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

from selenium.webdriver.common.by import By
import urllib.parse
import re
import json

# TODO: eXtremeEmails
WHITELIST = [
    # "AccessReporter",
    # "AgileTemplate",
    # "DataMergePRO",
    # "DataPRO",
    # "DataRenovator",
    # "EmailMergePRO",
    # Same as for products below, for the hololens page to be generated correctly, you need to be on a VPN or external network
    # "Events",
    # "ExchangeReporter",
    # "HealthAuditor",
    # "LinkAuditor",
    # "LookOut",
    # "PerformancePRO",
    # "NETToolkit",
    # "PropertyAndEventPRO",
    # # "SQLAuditor",
    # "SQLDeploy",
    # "SQLReportingServicesAuditor",
    # "SQLTotalCompare",
    # "Standards",
    "StandardsInternal"
    # "Training",
    # "TeamCalendar",
    # "UpsizingPRO",
    # "NETUG",
    # "WebPager",
    # "WisePRO",
    # "TimePROSmartTags",
    # # Only uncomment this one if you aren't in the office (uses prod.ssw.com.au)
    # "Products",
]

IMAGE_REPLACEMENTS: dict[str, str] = {
    "adam_thumb.jpg": "https://www.ssw.com.au/ssw/Events/Training/Images/adam_thumb.jpg",
    "mehmet-thumb.jpg": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/Mehmet.jpg",
    "eric_thumb.jpg": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/eric_phan.jpg",
    "SSWLogo-xmas.svg": "https://www.ssw.com.au/SSW/images/Raven/SSWLogo.svg",
    "Damian_profile_thumb.JPG": "https://www.ssw.com.au/ssw/NETUG/SSWUpdate/Images/Damianphoto.JPG",
    "Images/OutlookCRMRebootAfterUpdate.gif	" : "Images/OutlookCRMRebootAfterUpdate.gif"


}

PAGE_REPLACEMENTS: dict[str, str] = {
    "https://www.ssw.com.au/ssw/DataPRO/Default.aspx": "https://web.archive.org/web/20190322231649/https://www.ssw.com.au/ssw/DataPro/",
    "https://www.ssw.com.au/ssw/ExchangeReporter/Default.aspx": "https://web.archive.org/web/20190404105934/https://www.ssw.com.au/ssw/ExchangeReporter/Default.aspx",
    "https://www.ssw.com.au/ssw/Products/3rdPartySoftware.aspx": "https://prod.ssw.com.au/ssw/Products/3rdPartySoftware.aspx",
    "https://www.ssw.com.au/ssw/Products/3rdPartySoftwarePriceIndicator.aspx": "https://prod.ssw.com.au/ssw/Products/3rdPartySoftwarePriceIndicator.aspx",
    "https://www.ssw.com.au/ssw/Products/Awards.aspx": "https://prod.ssw.com.au/ssw/Products/Awards.aspx",
    "https://www.ssw.com.au/ssw/Products/Default_bkp.aspx": "https://prod.ssw.com.au/ssw/Products/Default_bkp.aspx",
    "https://www.ssw.com.au/ssw/Products/Ineta.aspx": "https://prod.ssw.com.au/ssw/Products/Ineta.aspx",
    "https://www.ssw.com.au/ssw/Products/livedemonstration.aspx": "https://prod.ssw.com.au/ssw/Products/livedemonstration.aspx",
    "https://www.ssw.com.au/ssw/Products/pwpmag.aspx": "https://prod.ssw.com.au/ssw/Products/pwpmag.aspx",
    "https://www.ssw.com.au/ssw/Products/Source-Code-License-Agreement/Default.aspx": "https://prod.ssw.com.au/ssw/Products/Source-Code-License-Agreement/",
    "https://www.ssw.com.au/ssw/EmailMergePRO/Default.aspx": "https://web.archive.org/web/20190411004326/https://www.ssw.com.au/ssw/EmailMergePRO/Default.aspx",
    #"https://www.ssw.com.au/ssw/Events/HoloLens-experience.aspx": "https://prod.ssw.com.au/ssw/Events/Hololens-Experience.aspx",
}

PARENT_DIR = "archive/"
FONTS_DIR = PARENT_DIR + "fonts/"
SSW_URL = "https://www.ssw.com.au"
SSW_V1_URL = SSW_URL + "/ssw"
SSW_REGEX = r"((http(?:s?):\/\/(?:www.)?ssw.com.au\/?)?(?:\/ssw)?)"
SSW_V1_REGEX = r"((http(?:s?):\/\/(?:www.)?ssw.com.au?)?(?:\/ssw\/+))"
SSW_V1_REGEX_SUB = r"(https?:\/\/www\.ssw\.com\.au\/ssw)"

SECOND_FOLDER_REGEX = r"(?:\/ssw\/)([a-zA-Z0-9\.]+)(?:\/\w*)"

service = Service("C:\\selenium\\chromedriver.exe")
driver = webdriver.Chrome(service=service)

# To block Google Tag Manager from inserting stuff
driver.execute_cdp_cmd(
    "Network.setBlockedURLs",
    {"urls": ["googletagmanager.com", "googlesyndication.com"]},
)
driver.execute_cdp_cmd("Network.enable", {})

# See fix_links comment for reason why this was commented out
# REDIRECT_CACHE_LOC = "redirect_cache.json"
# redirect_map: dict[str, str] = {}

# try:
#     with open(REDIRECT_CACHE_LOC, "r") as f:
#         redirect_map = json.load(f)
# except FileNotFoundError:
#     redirect_map = {}


def main():
    archive_pages("SSW.Website.WebUI")

    # See fix_links comment for reason why this was commented out
    # with open(REDIRECT_CACHE_LOC, "w+") as f:
    #     json.dump(redirect_map, f, indent=4)


def archive_pages(path: str) -> dict[str, str]:
    items_written: dict[str, str] = {}
    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        split_path = item_path.split("\\")
        # Recursively call archive_pages on subdirectories
        if os.path.isdir(item_path) and split_path[1] in WHITELIST:
            items_written.update(archive_pages(item_path))
        # If its an aspx file, and does not have zz at the start (redirect or migrated page), archive it
        elif (
            os.path.isfile(item_path)
            and item_path.endswith(".aspx")
            and not split_path[-1].startswith("zz")
            and split_path[1] in WHITELIST
        ):
            # If it starts with za (means it has been archived before), remove the za
            if split_path[-1].startswith("za") or split_path[-1].startswith("zr"):
                split_path[-1] = split_path[-1].replace("za", "").replace("zr", "")

            # URI on the v1 website e.g. Training/Default.aspx
            uri = "/".join(split_path[1:])
            # URL on the v1 website e.g. ssw.com.au/ssw/Training/Default.aspx
            url = SSW_URL + "/ssw/" + uri

            is_replaced = url in PAGE_REPLACEMENTS
            if is_replaced:
                url = PAGE_REPLACEMENTS[url]

            try:
                driver.get(url)
            except Exception as e:
                print(f"Failed to get {url}: {e}")
                continue

            # If the page has been redirected, rename the file to start with zr
            if driver.current_url != url and not is_replaced:
                print("Redirect: " + url + " -> " + driver.current_url)
                new_path_split = item_path.split("\\")
                if not new_path_split[-1].startswith("za") and not new_path_split[
                    -1
                ].startswith("zr"):
                    new_path_split[-1] = "zr" + new_path_split[-1]
                    os.rename(item_path, "/".join(new_path_split))
                continue

            # Parse HTML content
            page_content = "<!DOCTYPE html>\n" + driver.page_source
            soup = BeautifulSoup(page_content, "html5lib")
            base_path = SSW_V1_URL + "/" + "/".join(split_path[1:-1])
            soup = fix_wayback_machine(soup)
            soup = remove_header_and_menu(soup)
            soup = fix_scripts(soup, base_path)
            soup = fix_images(soup, base_path)
            soup = fix_css(soup, base_path)
            soup = fix_links(soup)
            soup = get_pdfs(soup, base_path)
            soup = fix_breadcrumbs(soup, split_path[1])
            soup = fix_menu(soup)
            soup = fix_head(soup)
            soup = delete_existing_header(soup)
            soup = add_archive_header(soup, url)

            # It's important that this method is called here because it will interfere with changes in the
            # previous fix breadcrum methods
            # soup = fix_breadcrumbs_v4(soup)


            page_source = soup.prettify(formatter="html5")

            dir = "/".join(split_path[1:-1])
            output_dir = (PARENT_DIR + pascal_to_kebab(dir)).lower()
            if not os.path.exists(output_dir):
                os.makedirs(output_dir)

            # Filename with .aspx removed and kebab-case
            # TODO: Change default to index.html, .replace("Default.aspx", "index") didn't work because it got overwritten by output_index_page
            filename = uri.replace(".aspx", "") + ".html"
            output_filename = PARENT_DIR + pascal_to_kebab(filename)
            with open(output_filename, "w+", encoding="utf-8") as f:
                f.write(page_source)
                items_written[url] = output_filename

            new_path_split = item_path.split("\\")

            # If the file has not been archived before, add za to the start of the filename
            if not new_path_split[-1].startswith("za"):
                new_path_split[-1] = "za" + new_path_split[-1]
                os.rename(item_path, "/".join(new_path_split))

    output_path = os.path.join(
        PARENT_DIR, pascal_to_kebab("/".join(path.split("\\")[1:]))
    )

    output_index_page(items_written, output_path)
    return items_written



def add_history_link_to_navbar(soup: BeautifulSoup, bread_crumb_id: str) -> BeautifulSoup:
    archive_url = "archive"
    breadcrumbs = soup.find("span", {"id": bread_crumb_id})
    archive_breadcrumb = soup.new_tag("span")
    archive_link = soup.new_tag("a")
    archive_link.string  = archive_url.capitalize()
    archive_link['href'] = f"/{archive_url}"
    archive_breadcrumb.append(archive_link)
    if breadcrumbs is None:
        raise Exception("No breadcrumb element was found in the html provided")
    breadcrumbs.findAll("span")[1].insert_after(archive_breadcrumb)
    arrow = soup.new_tag("span")
    arrow.string = ">"
    archive_breadcrumb.insert_after(arrow)
    # breadcrumbs.insert(7, archive_breadcrumb)
    return soup

def delete_existing_header (soup: BeautifulSoup) -> BeautifulSoup:
    head = soup.find("div", id="header")
    if head is not None:    
        head.decompose()
    return soup

def pascal_to_kebab(s: str) -> str:
    # Convert PascalCase to kebab-case
    regex = r"([a-z])([A-Z0-9])"
    replacements = {
        # This method is not idempotent, so has issues converting this string
        "demo-fms200203" : "demo-fms200203", 
        "RulestoBetterCommandLines": "rules-to-better-command-lines",
        "eXtremeEmails": "extreme-emails",        
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

def get_pdfs(soup: BeautifulSoup, path: str) -> BeautifulSoup:
    for link in soup.find_all("a"):
        if not link.has_attr("href"):
           continue
        elif link["href"].endswith(".pdf"):
            href = link["href"]
            link["href"] = download_file(href, path)
    return soup

def fix_scripts(soup: BeautifulSoup, path: str) -> BeautifulSoup:

    # Remove most scripts and iframes
    for element in soup(["script", "iframe"]):
        if element.get("src") is not None:
            # If the script is a common script, replace it with the local version
            if "javascript_bundles/ssw_pigeon" in element["src"]:
                element["src"] = "/archive/ssw_pigeon.js"
                continue
            elif "javascript_bundles/jquery" in element["src"]:
                element["src"] = "/archive/jquery.js"
                continue
            elif "javascript_bundles/moment" in element["src"]:
                element["src"] = "/archive/moment.js"
                continue
            elif "javascript_bundles/ssw_consulting" in element["src"]:
                element["src"] = "/archive/ssw_consulting.js"
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


def fix_images(soup: BeautifulSoup, path: str) -> BeautifulSoup:
    images = soup.find_all("img")
    for image in images:

        # Replace broken images with the correct URLs if possible
        for key in IMAGE_REPLACEMENTS:
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

    if re.match(r"\/?archive\/\w+", image_path) is None:
        if image_path.startswith("/"):
            image_path = image_path[1:]
        image_path = ("archive/" + image_path).replace("//", "/")

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


def fix_css(soup: BeautifulSoup, path: str) -> BeautifulSoup:

    # remove inline styles from body (i.e. fix for opacity)
    soup("body")[0]["style"] = "opacity: 1 !important;"

    links = soup.find_all("link")
    css_files = os.listdir("./archive/css")

    for link in links:
        if link["rel"] == ["stylesheet"]:
            href = link["href"]
            if href is None:
                continue

            if "Import.css" in href:
                link.extract()
                continue

            if "ssw_raven_print" in href:
                link["href"] = "/archive/ssw_raven_print.css"
            elif "ssw_raven" in href:
                link["href"] = "/archive/ssw_raven.css"
            # TODO: Fix up the references to /ssw images in these CSS files
            elif "ssw_consulting_slim" in href:
                link["href"] = "/archive/css/ssw_consulting_slim.css"
            elif "ssw_consulting_defer" in href:
                link["href"] = "/archive/css/ssw_consulting_defer.css"

            for css_file in css_files:
                if css_file.lower() in href.lower():
                    link["href"] = "/archive/css/" + css_file

        elif link["href"].endswith(".png") or link["href"].endswith(".jpg"):
            href = link["href"]
            if href is None:
                continue
            link["href"] = download_file(href, path)

    font_filename_pattern = r"url\(['\"](.+\/(.+\.(?:eot|ttf|woff2|woff|svg)).+)['\"]\)"
    webkit_frame_pattern = r"@-webkit-keyframes.*-launcherOnOpen"

    styles = soup.find_all("style")
    for style in styles:
        if style.string is None:
            continue

        # to remove weird style tag (likely generated by chrome) that changes every time you run the script
        if re.search(webkit_frame_pattern, style.string):
            style.decompose()
            continue

        matches = re.findall(font_filename_pattern, style.string)
        for match in matches:
            font_buf = requests.get(match[0])

            if font_buf.status_code != 200:
                print(f"Failed to download font: {match[0]}")
                continue

            font_path = (FONTS_DIR + match[1]).lower()
            if not os.path.exists(FONTS_DIR):
                os.makedirs(FONTS_DIR)

            if os.path.exists(font_path):
                continue

            with open(font_path, "wb") as f:
                f.write(font_buf.content)
            style.string = style.string.replace(match[0], f"/archive/fonts/{match[1]}")

    return soup


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

        # TODO: If it's a link to an employee profile, change to SSW people

        # This code replaces broken links with the correct URLs if possible, but has been commented
        # as it adds unncessary complexity. It does work, and doesn't slow the script down significantly
        # because of the redirect cache, but it's not necessary because we can use Front Door.

        # What this does is that instead of just running the below for loop to fix links that already
        # exist in history, has additional testing to check if there's a redirect, as if there's a redirect
        # then it knows that the page hasn't been saved. e.g. /history/events/2007-uts-net/default.html is
        # not a real history page, because https://www.ssw.com.au/ssw/Events/2007UTSNET/default.aspx redirects
        # to an error page.

        # This will also fix the above todo relating to links to employee profile - as it will redirect to /people.

        # match = re.search(SECOND_FOLDER_REGEX, link["href"])
        # if match != None:
        #     req_url = link["href"]
        #     if req_url.startswith("/ssw"):
        #         req_url = SSW_URL + req_url

        #     if (
        #         redirect_map.get(req_url) is not None
        #         and match.group(1) not in WHITELIST
        #     ):
        #         print("Cached: " + req_url + " -> " + redirect_map[req_url])
        #         # If in the cache, use the cached value
        #         link["href"] = redirect_map[req_url]
        #         continue

        #     # TODO: Add multi-threading cos this slows it down significantly
        #     test_res = requests.get(req_url)

        #     if (
        #         test_res.status_code >= 400
        #         or "ErrorPage".lower() in test_res.url.lower()
        #     ):
        #         print("error here: " + link["href"])
        #         link["href"] = ""
        #         redirect_map[req_url] = ""
        #         continue
        #     # if the page has been redirected, change the link to the new page
        #     elif test_res.history or "Redirect" in match.group(1):
        #         # if the link redirected to is on the v3 site, change the link to the new page
        #         if re.search(SECOND_FOLDER_REGEX, test_res.url) == None:
        #             print("v3 redirect: " + req_url + " -> " + test_res.url)
        #             link["href"] = test_res.url
        #             redirect_map[req_url] = test_res.url
        #         # If the link redirects to something on the v1 site, skip it
        #         else:
        #             print(
        #                 "Redirected to v1 site: " + link["href"] + "->" + test_res.url
        #             )

        #             has_been_archived = False
        #             for folder in WHITELIST:
        #                 if folder.lower() == match.group(1).lower():
        #                     has_been_archived = True

        #             if has_been_archived:
        #                 link["href"] = transform_path(test_res.url)
        #             else:
        #                 link["href"] = ""

        #             redirect_map[req_url] = link["href"]

        #     # If page has been migrated, change the link to the history page
        #     for folder in WHITELIST:
        #         # Examples matched from regex: /ssw/Events/Training/Default.aspx, http://ssw.com.au/ssw/Events/Training/Default.aspx
        #         if folder.lower() == match.group(1).lower():
        #             # If the link has zz or zr at the start know it hasn't been archived
        #             link["href"] = transform_path(link["href"])

        # TODO: Add replacing of links to /history when pages have been moved to /history
    return soup

def fix_breadcrumbs(soup: BeautifulSoup, whitelist_folder: str) -> BeautifulSoup:
    breadcrumbs = soup.select("div[class='breadcrumb'] > span > span > a")

    if len(breadcrumbs) < 2:
        return fix_breadcrumbs_v2(soup)

    # Reset to non-aspx root (i.e. ssw.com.au/)
    breadcrumbs[0]["href"] = "/"
    breadcrumbs[0].string = "Home"

    # Replace second crumb with history
    breadcrumbs[1]["href"] = "/archive"
    breadcrumbs[1].string = "Archive"

    if len(breadcrumbs) > 2:
        # Remove the third crumb
        breadcrumbs[2]["href"] = "/archive/" + whitelist_folder.lower()

    return soup


def fix_breadcrumbs_generic(BreadCrumbs: Tag):
    for i, child in enumerate(BreadCrumbs.findChildren("span", recursive=False)):
        a_tag = child.find("a")
        if a_tag is None:
            continue
        if i == 0:
            a_tag['href'] = "/"
            continue
        href = a_tag['href']
        if href is None:
            continue
        href = href.replace("/ssw", "/archive", 1)
        href = href.replace("/SSW", "/archive")
        href = href.replace("/Default.aspx", "")
        href = href.replace("/default.aspx", "")
        href = href.replace("/browse.aspx", "")
        href = href.replace("/Browse.aspx", "")
        href = href.replace(".aspx", ".html")

        a_tag['href'] = pascal_to_kebab(href)



def determine_breadcrumb_id(soup: BeautifulSoup) -> str | None:
    internal_id = "ctl00_SiteMapPathStandardsInternal"
    regular_id = "ctl00_mainContentPlaceHolder_SiteMapPath1"
    # Some of the newer pages use this breadcrumb ID
    v2_regular_id = "ctl00_ctl00_Content_SiteMapPath1"
    if soup.find("span",id=regular_id) is not None:
        return regular_id
    if soup.find("span",id=internal_id) is not None:
        return internal_id
    if soup.find("span",id=v2_regular_id) is not None:  
        return v2_regular_id
    return None

def fix_breadcrumbs_v2(soup: BeautifulSoup) -> BeautifulSoup:
    # Some of the newer pages use this breadcrumb ID


    # 
    assosciated_id = determine_breadcrumb_id(soup)
    if assosciated_id is None:
        return soup
    tag = soup.find("span",{'id': assosciated_id})
    fix_breadcrumbs_generic(tag)
    add_history_link_to_navbar(soup, assosciated_id)
    return soup

def remove_header_and_menu(soup: BeautifulSoup) -> BeautifulSoup:
    for div in soup.find_all("div", id="MenuUpper"):
        div.decompose()
    for div in soup.find_all("div", id="MenuLower"):
        div.decompose()
    nav_div = soup.find("div", id="nav")

    # we are keeping the red banner because it breaks some pages with the carousel
    # red_banner = soup.find("div", id="ctl00_ctl00_Content_CategoryColor")
    # if red_banner is not None:
    #     red_banner.decompose()

    if nav_div:
        # Find the first <ul> child in nav div that contains menu
        ul = nav_div.find("ul")
        if ul:
            ul.decompose()

    return soup


def fix_menu(soup: BeautifulSoup) -> BeautifulSoup:
    for i in soup.find_all("div", id="livestream"):
        i.extract()

    return soup


def fix_head(soup: BeautifulSoup) -> BeautifulSoup:
    # Change the canonical to the new URL
    for i in soup.find_all("link", rel="canonical"):
        i["href"] = transform_path(i["href"]).replace("http://", "https://")

    return soup


def fix_wayback_machine(soup: BeautifulSoup) -> BeautifulSoup:
    # remove all divs with wm- attributes
    for div in soup.find_all("div", id=re.compile("wm-")):
        div.decompose()
    return soup


def add_archive_header(soup: BeautifulSoup, url: str) -> BeautifulSoup:
    archive_div = soup.new_tag("div")

    attention_span = soup.new_tag("div")
    attention_span.string = "⚠️ This page has been archived"
    attention_span["style"] = (
        "color: white; font-size: 2rem !important; font-weight: 600;"
    )

    archive_div.append(attention_span)

    content_div = soup.new_tag("div")
    content_div["style"] = (
        "color: white; font-size: 1.125rem !important; font-weight: 600;"
    )
    content_p = soup.new_tag("p")
    content_p['style'] = 'color:white;'
    content_p.append("✅ New page with updated info: ")

    if "Training" in url or "Events" in url:
        new_link = soup.new_tag(
            "a", href="https://www.ssw.com.au/events", style="color: white"
        )
        new_link.append("ssw.com.au/events")
    else:
        new_link = soup.new_tag(
            "a", href="https://www.ssw.com.au", style="color: white"
        )
        new_link.append("ssw.com.au")

    content_p.append(new_link)

    content_div.append(content_p)

    archive_div.append(content_div)

    # TODO: Maybe should be red
    archive_div[
        "style"
    ] = """
        line-height: 1.5;
        text-align: center; 
        font-size: 1.125rem; 
        color: #999;
        background-color: #333333;
        padding-top: 1.25rem;
        padding-bottom: 1.25rem;
        padding-right: 0.75rem;
        padding-left: 0.75rem;
    """

    if soup.body is not None:
        soup.body.insert(0, archive_div)

    return soup


def output_index_page(file_list: dict[str, str], path: str):

    if len(file_list) <= 0:
        return

    formatted_path = path.replace("\\", "/")
    title = formatted_path.split("/")[-1]

    buf = (
        """<!DOCTYPE html>
<html>
<head>
    <title>"""
        + formatted_path.split("/")[-1]
        + """ Pages</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
        }
    </style>
    <link rel="canonical" href="https://www.ssw.com.au/"""
        + formatted_path
        + '">'
        + """
</head>
<body>
    <h1>"""
        + title
        + """ Pages</h1>
    <table>
        <tr>
            <th>Old URL (TODO: delete after signoff from Adam)</th>
            <th>New URL</th>
        </tr>"""
    )

    for file in file_list:
        buf += f"""      
        <tr>
            <td><a href='{file}'>{file}</a></td>
            <td><a href='/{file_list[file]}'>{file_list[file]}</a></td>
        </tr>"""

    buf += """
    </table>
</body>
</html>
"""
    index_path = os.path.join(pascal_to_kebab(path), "index.html")
    with open(index_path, "w") as f:
        f.write(buf)


def transform_path(input_url: str) -> str:
    return pascal_to_kebab(
        input_url.replace("/ssw/", "/archive/").replace(".aspx", ".html")
    )


if __name__ == "__main__":
    main()