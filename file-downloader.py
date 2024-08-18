import requests
import os
from generate_index_pages import pascal_to_kebab

urls = [
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Mail.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/SSWXPDMManSmall.jpg",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XPDM.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Phone.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XPDMChart.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Directions.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_ReleasePlansInOutlookInsteadOfCards.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitFai.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitInOurProducts.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_OneClick.jpg",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitPas.gif",
]


def download_file(url):
    try:
        # Base URL to remove
        base_url = "http://www.ssw.com.au/ssw/"
        
        # Get the relative path from the URL
        relative_path = "".join(url.split(base_url)[1:])
        
        # Get the directory and file name from the relative path
        directory = os.path.join("archive", os.path.dirname(relative_path))
        file_name = os.path.basename(relative_path)
        
        # Create the directory if it doesn't exist
        if not os.path.exists(directory):
            os.makedirs(directory, exist_ok=True)
        
        # Construct the full file path
        file_path = os.path.join(directory.lower(), pascal_to_kebab(file_name))
        
        # Send a GET request to the URL
        response = requests.get(url)
        response.raise_for_status()  # Check if the request was successful
        
        # Write the content to a file
        with open(file_path, 'wb') as file:
            file.write(response.content)
        print(f"Downloaded: {file_name} to {file_path}")
    except requests.exceptions.RequestException as e:
        print(f"Failed to download {url}: {e}")

# Loop through the array of URLs and download each file
for url in urls:
    download_file(url)