import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import requests
from bs4 import BeautifulSoup

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
    # TODO: "Standards",
    # TODO: "StandardsInternal",
    # "TeamCalendar",
    # "UpsizingPRO",
    # "WebPager"
    # "NETUG",
    # "WisePRO",
]

service = Service("C:\\selenium\\chromedriver.exe")
driver = webdriver.Chrome(service=service)

PARENT_DIR = "history/"
SSW_URL = "https://www.ssw.com.au"
SSW_V1_URL = SSW_URL + "/ssw"


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
        src = image["src"]
        if (
            src is None
            or src.endswith(".axd")
            or (src.startswith("http") and not src.startswith(SSW_URL))
        ):
            continue

        image["src"] = download_image(src, path)

    return soup


def fix_css(soup, path):
    links = soup.find_all("link")
    for link in links:
        if link["rel"] == ["stylesheet"]:
            href = link["href"]
            if href is None:
                continue
            if "ssw_raven_print" in href:
                link["href"] = "/history/ssw_raven_print.css"
            elif "ssw_raven" in href:
                link["href"] = "/history/ssw_raven.css"
        elif link["rel"] == ["icon"]:
            href = link["href"]
            if href is None:
                continue
            link["href"] = download_image(href, path)

    return soup


def output_csv(path: str) -> None:
    for item in os.listdir(path):
        item_path = os.path.join(path, item)

        if os.path.isdir(item_path):
            output_csv(item_path)

        elif os.path.isfile(item_path) and item_path.endswith(".aspx"):
            split_path = item_path.split("\\")
            if (not split_path[-1].startswith("zz")) and split_path[1] in WHITELIST:
                uri = "/".join(split_path[1:])
                url = SSW_URL + "/ssw/" + uri
                driver.get(url)

                if driver.current_url != url:
                    print("Redirect: " + url + " -> " + driver.current_url)
                    continue

                soup = BeautifulSoup(driver.page_source, "lxml")

                for element in soup.find_all(["script", "iframe"]):
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

                page_source = str(soup)

                dir = "/".join(split_path[1:-1])
                if not os.path.exists(PARENT_DIR + dir):
                    os.makedirs(PARENT_DIR + dir)
                with open(PARENT_DIR + uri + ".html", "w+", encoding="utf-8") as f:
                    f.write(page_source)


if __name__ == "__main__":
    output_csv("SSW.Website.WebUI")
