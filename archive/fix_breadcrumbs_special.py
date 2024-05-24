import os
import re
from bs4 import BeautifulSoup

### FIXES BREADCRUMBS ON THE NEWER PAGES

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
def fix_breadrumbs():
    for root, dirs, files, in os.walk("./"):
        for file in files:
            path = os.path.join(root, file)
            if file.endswith(".htm") or file.endswith(".html"):
                with open(path, "r+", encoding='utf-8') as f:
                    soup = BeautifulSoup(f.read())
                    if soup.find("span",id="ctl00_ctl00_Content_SiteMapPath1") is None:
                        continue
                    tag = soup.find("span",{'id': "ctl00_ctl00_Content_SiteMapPath1"})
                    for child in tag.findChildren("span", recursive=False):
                        a_tag = child.find("a")
                        if a_tag is None:
                            continue
                        href = a_tag['href']
                        if href.startswith("/ssw"):
                            href = href.replace("/ssw", "/archive", 1)
                            if href.endswith("Default.aspx"):
                                href = href.replace("/Default.aspx", "")
                            if href.endswith("Browse.aspx"):
                                href = href.replace("Browse.aspx", "")
                            elif href.endswith(".aspx"):
                                href = href.replace(".aspx", ".html")
                            href = pascal_to_kebab(href)
                            a_tag['href'] = pascal_to_kebab(href)
                            print(a_tag['href'])
                    f.seek(0)
                    f.truncate()
                    f.write(str(soup))
fix_breadrumbs()

