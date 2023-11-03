import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import requests

WHITELIST = ["AccessReporter", "WisePRO"]

service = Service("C:\\selenium\\chromedriver.exe")
driver = webdriver.Chrome(service=service)


def output_csv(path):
    for item in os.listdir(path):
        item_path = os.path.join(path, item)

        if os.path.isdir(item_path):
            output_csv(item_path)

        elif os.path.isfile(item_path) and item_path.endswith(".aspx"):
            split_path = item_path.split("\\")
            if (not split_path[-1].startswith("zz")) and split_path[1] in WHITELIST:
                uri = "/".join(split_path[1:])
                url = "https://www.ssw.com.au/ssw/" + uri
                driver.get(url)
                page_source = driver.page_source

                images = driver.find_elements(By.TAG_NAME, "img")
                for image in images:
                    src = image.get_attribute("src")
                    if src is None or src.endswith(".axd"):
                        continue
                    if src.startswith("https://www.ssw.com.au"):
                        split_src = src.split("/")
                        image_name = split_src[-1]
                        image_path = "saved/" + "/".join(split_src[4:-1])
                        if not os.path.exists(image_path):
                            os.makedirs(image_path)
                        img_data = requests.get(src).content

                        store_path = (image_path + "/" + image_name).split("?")[0]
                        


                        with open(store_path, "wb") as f:
                            f.write(img_data)

                        
                        page_source = page_source.replace(src.replace("https://www.ssw.com.au", ""), "/saved/" + "/".join(split_src[4:]))
                        
                links = driver.find_elements(By.TAG_NAME, "link")
                for link in links:
                    if link.get_attribute("rel") == "stylesheet":
                        href = link.get_attribute("href")
                        if href is None:
                            continue
                        if "ssw_raven_print" in href:
                            page_source = page_source.replace(href.replace("https://www.ssw.com.au", ""), "/saved/ssw_raven_print.css")
                        elif "ssw_raven" in href:
                            page_source = page_source.replace(href.replace("https://www.ssw.com.au", ""), "/saved/ssw_raven.css")
                
                if not os.path.exists("saved/" + "/".join(split_path[1:-1])):
                    os.makedirs("saved/" + "/".join(split_path[1:-1]))
                with open("saved/" + uri + ".html", "w+", encoding="utf-8") as f:
                    f.write(page_source)


output_csv("./SSW.Website.WebUI")
