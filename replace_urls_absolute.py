

import subprocess
from bs4 import BeautifulSoup
import re
import os;
from urllib.parse import urlparse


ELIPSIS_REGEX = r"(?:\.\./)+"
def main():
    for root, dirs, files in os.walk("./SSW.Website.WebUI"):
        for file in files:
            if not (file.endswith(".aspx") or file.endswith(".htm") or file.endswith(".html")):
                # print(f"file is invalid type {file}")
                continue
            if file.startswith("zz") or file.startswith("zr"):
                # print("file is removed")
                continue
            file = file.replace("za", "",1 )
            # print(f"{root}\\{file}")


            path = path_to_html_equivalent(f"{root}\\{file}")
            path_exists = os.path.exists(path)
            if not os.path.exists(path):
                # print(f"WARNING: no archived file found at {path}")
                continue
            with open(path, "r+", encoding="utf-8") as f:
                soup = BeautifulSoup(f, "html5lib")
                hrefs = soup.findAll("a", href=True)
                if hrefs is None:
                    # print("no hrefs found")
                    continue
                for href in hrefs:
                    link = href['href']
                    if link == "":
                        continue 
                    elipses = re.findall(r"(?:\.\./)+",link)
                    url_points_upwards = len(elipses) > 0

                    if url_points_upwards:
                        print(f"url points upward {file}")
                        link = f"/ssw/{re.sub(ELIPSIS_REGEX,folder_of_upward_traversal(elipses[0], root,),link)}"
                        href["href"] = link
                        continue
                    domain = urlparse(link).netloc
                    link_hosted_ssw = "ssw.com.au" in domain or link.startswith("/ssw")
                    if not link_hosted_ssw and not link.startswith("http") and not link.startswith(" http") and not link.startswith("#") and not link.startswith("mailto") and not link.startswith("javascript") and not link.startswith("tel:") and not link.endswith(".pdf") and not link.endswith(".txt") and not link.endswith(".pdf") and not link.endswith(".png") and not link.startswith("mailto") and not link.startswith("javascript") and not link.startswith("tel:") and not link.endswith(".pdf") and not link.endswith(".txt") and not link.endswith(".pdf") and not link.endswith(".jpg") and not link.startswith("\\ssw"):
                        if not link.startswith("/") and not link.startswith("./"):
                            new_dir = root.replace("\\", "/")

                            new_dir = new_dir.replace("./SSW.Website.WebUI", "/ssw")
                            href["href"] = f'{new_dir}/{link}'
                f.seek(0)
                f.truncate()
                # print("writing changes")
                f.write(str(soup.prettify(formatter="html5")))
                # if path_exists:
                #     subprocess.run(["npx", "prettier", "--write", path], check=True)




def folder_of_upward_traversal(path: str, current_directory: str):
    elipses = re.findall(r"(?:\.\./)+",path)
    path_to_physical_folder = os.path.join(current_directory, elipses[0])
    print("path to physical folder")
    print(path_to_physical_folder)
    path_to_file = os.path.relpath(path_to_physical_folder)
    print("path_to_file")
    print(path_to_file)


    path_to_file = path_to_file.replace("SSW.Website.WebUI", "")

    if(not path_to_file.endswith("\\")):
        path_to_file += "\\"
    if(path_to_file.startswith("\\")):
        path_to_file = path_to_file[1:]
    return path_to_file.replace("\\", "/")
    



def path_to_html_equivalent(path : str) -> str:
    path = path.replace("SSW.Website.WebUI", "archive")
    path = path.replace("aspx", "html")
    path = pascal_to_kebab(path)
    return path 


def pascal_to_kebab(s: str) -> str:
    if s.endswith("demo-fms200203"):
        return s
    # Convert PascalCase to kebab-case
    regex = r"([a-z])([A-Z0-9])"
    replacements = {
        "About Me" : "about-me",
        "Chirag Modi": "chirag-modi",
        "Frand Jajo": "frand-jajo",
        "Jack Lin": "jack-lin",
        "PCAnywhere" : "pc-anywhere",
        "ThankyouShare": "thank-you-share",
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

main()