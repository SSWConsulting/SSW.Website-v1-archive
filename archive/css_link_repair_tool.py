import re
import requests
from bs4 import BeautifulSoup
import os

V1_HISTORY_DIRECTORY = "C:\\SSW Products\\SSW Website V1\\SSW.Website-v1-Progress\\history"

blacklist = [
    "AccessReporter",
    "CodeAuditor",
    "DataPro",
    "DataMergePRO",
    "Download",
    "EmailMergePRO",
    "Events",
    "ExchangeReporter",
    "eXtremeEmails",
    "LinkAuditor",
    "LookOut",
    "PerformancePRO",
    "Projects",
    "TeamCalendar"
]

def route_is_whitelisted(path):
    for page in blacklist:
        if path.startswith(f"./{page}"):
            return True
    return False

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

def fix_all_links(): 
    for i in range(blacklist.__len__()):
        blacklist[i] = pascal_to_kebab(blacklist[i])
    for page in blacklist:
        print(page)
    for root, dirs, files in os.walk("./"):

        for file in files:
            if file.endswith(".htm") or file.endswith(".html") and not file.endswith("index.html"):
                file_dir = os.path.join(root, file)
                with open(file_dir, 'r+', encoding='utf-8') as file:
                    soup = BeautifulSoup(file.read(), "html.parser")
                    for link in soup.find_all('link'):
                        if not link.has_attr('href'):
                            continue
                        href = link['href']
                        if href.startswith('/history'):
                            link['href'] = href.replace('/history', '/archived', 1)
                    file.seek(0)
                    file.truncate()
                    file.write(str(soup))
fix_all_links()

