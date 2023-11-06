import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import requests
from bs4 import BeautifulSoup

WHITELIST = ["AccessReporter"]

service = Service("C:\\selenium\\chromedriver.exe")
driver = webdriver.Chrome(service=service)

PARENT_DIR = "history/"
SSW_URL = "https://www.ssw.com.au"
SSW_V1_URL = SSW_URL + "/ssw"


def fix_images(driver, page_source: str) -> str:
    modified_page_source = page_source

    images = driver.find_elements(By.TAG_NAME, "img")
    for image in images:
        src = image.get_attribute("src")
        if src is None or src.endswith(".axd"):
            continue
        if src.startswith(SSW_URL):
            split_src = src.split("/")
            image_name = split_src[-1]
            image_path = PARENT_DIR + "/".join(split_src[4:-1])
            if not os.path.exists(image_path):
                os.makedirs(image_path)
            img_data = requests.get(src).content

            store_path = (image_path + "/" + image_name).split("?")[0]

            with open(store_path, "wb") as f:
                f.write(img_data)

            modified_page_source = page_source.replace(
                src.replace(SSW_URL, ""), "/" + PARENT_DIR + "/".join(split_src[4:])
            )
    return modified_page_source


def fix_css(driver, page_source: str) -> str:
    modified_page_source = page_source

    links = driver.find_elements(By.TAG_NAME, "link")
    for link in links:
        if link.get_attribute("rel") == "stylesheet":
            href = link.get_attribute("href")
            if href is None:
                continue
            if "ssw_raven_print" in href:
                modified_page_source = page_source.replace(
                    href.replace(SSW_URL, ""), "/saved/ssw_raven_print.css"
                )
            elif "ssw_raven" in href:
                modified_page_source = page_source.replace(
                    href.replace(SSW_URL, ""), "/saved/ssw_raven.css"
                )
    return modified_page_source


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
                page_source = driver.page_source

                page_source = fix_images(driver, page_source)
                page_source = fix_css(driver, page_source)

                soup = BeautifulSoup(page_source, "lxml")
                for element in soup.find_all(["script", "iframe"]):
                    element.extract()
                page_source = str(soup)

                dir = "/".join(split_path[1:-1])
                if not os.path.exists(PARENT_DIR + dir):
                    os.makedirs(PARENT_DIR + dir)
                with open(PARENT_DIR + uri + ".html", "w+", encoding="utf-8") as f:
                    f.write(page_source)

if __name__ == "__main__":
    output_csv("./SSW.Website.WebUI")
