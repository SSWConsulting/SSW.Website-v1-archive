import os
import re
from urllib.parse import urlparse, urlunparse

historyroute = "archived"
webUi = "SSW.Website.WebUI"

### GENERATES INDEX PAGES AT THE BASE OF EACH ROUTE

def remove_first_part_of_uri(uri):
    # Parse the URI
    parsed_uri = urlparse(uri)

    # Split the path into parts
    path_parts = parsed_uri.path.split('/')

    # Remove the first part of the path
    if len(path_parts) > 1:
        path_parts.pop(1)
    else:
        path_parts.pop(0)

    # Reconstruct the path
    new_path = '/'.join(path_parts)

    # Replace the path in the parsed URI
    parsed_uri = parsed_uri._replace(path=new_path)

    # Reconstruct the URI
    new_uri = urlunparse(parsed_uri)
    return new_uri

whitelist = [
 "AccessReporter",
 "CodeAuditor"
 "DataMergePRO"
 "DataPRO"
 "default"
 "Download"
 "EmailMergePRO"
 "Encode"
 "Events"
 "ExchangeReporter"
 "eXtremeEmails"
 "include"
 "LinkAuditor"
 "LookOut"
 "NETUG"
 "not_found"
 "PerformancePRO"
 "Projects"
 "SSWCustomError404"
 "SSWCustomMaintenance"
 "Standards"
 "StandardsInternal"
 "TeamCalendar"
 "Testmockup"
 
 ]
def print_dictionary(dictionary):
    if dictionary.__len__() == 0:
        print("No items in dictionary")
        return
    for key, value in dictionary.items():
        print(f'Key: {key}, Value: {value}')


def history_route(path: str, name: str):
    return pascal_to_kebab(os.path.join(path.replace("SSW.Website.WebUI", f"/{historyroute}"), name).replace("aspx", "html")).replace("\\", "/")
def v1_site_route(path: str, name: str):
    return os.path.join(path.replace("SSW.Website.WebUI","https://www.ssw.com.au/ssw"), name).replace("\\", "/")


def history_archive_path(path: str):
    return pascal_to_kebab(os.path.join(path.replace("SSW.Website.WebUI", historyroute))).replace("\\", "/")


def add_index_in_folders(path: str, archived_routes) -> dict[str, str]:
    dictionary: dict[str, str] = {}
    for route in os.listdir(path):
        # for thing in whitelist:
        #     if not route.__contains__(thing):
        #         continue
        if os.path.isfile(os.path.join(path, route)):
            name_without_za = route
            if route.startswith("za"):
                name_without_za = route[2:]
            # Checks whether the file has an archived counterpart
            if route.endswith(".aspx") or route.endswith(".html"):
                html_location = pascal_to_kebab(os.path.join(path, name_without_za).replace("aspx", "html").replace(webUi, historyroute))
                if os.path.isfile(html_location):
                    dictionary[v1_site_route(path, name_without_za)] =  history_route(path, name_without_za)
                    continue
            # Checks whether the file has an archived counterpart
            elif route.endswith(".htm"):
                # print("file ends with htm")
                htm_location = pascal_to_kebab(os.path.join(path.replace(webUi, historyroute), name_without_za))
                # print("searching for htm file at:"+ htm_location)
                if os.path.isfile(htm_location):
                    # print("found an htm file")
                    dictionary[v1_site_route(path, name_without_za)] = history_route(path, name_without_za)
                    continue
        else: 

            # print("writing dictionary to: "+path)
            dictionary.update(add_index_in_folders(os.path.join(path, route), archived_routes))

   
    output_index_page(dictionary, path.replace(webUi, historyroute))
    return dictionary


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
            <td><a href='{file_list[file]}'>{file_list[file]}</a></td>
        </tr>"""

    buf += """
    </table>
</body>
</html>
"""
    index_path = os.path.join(pascal_to_kebab(path), "index.html")
    with open(index_path, "w") as f:
        f.write(buf)



print_dictionary(add_index_in_folders(webUi, {}))