import requests
import os

# Array of URLs to download files from
urls = [
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Mail.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/SSWXPDMManSmall.jpg",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XPDM.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/dm.gif?v=86&vst=1&id=60643_1141423212894&url=https%3Ahttp%3A//wwwhttps://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/XPDM.aspx&ref=&lng=en-GB&tz=0&scr=1707x1067%2024bpp&rnd=1141423212895",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Phone.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XPDMChart.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/images/SideBar_Contact_Directions.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_ReleasePlansInOutlookInsteadOfCards.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitFai.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitInOurProducts.gif",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_OneClick.jpg",
"https://web.archive.org/web/20060303220010im_/http://www.ssw.com.au/ssw/methodology/Images/XP_NUnitPas.gif",
]

# Directory to save downloaded files
download_dir = "downloads"
os.makedirs(download_dir, exist_ok=True)

def download_file(url, download_dir):
    try:
        # Get the file name from the URL
        file_name = os.path.basename(url)
        file_path = os.path.join(download_dir, file_name)
        
        # Send a GET request to the URL
        response = requests.get(url)
        response.raise_for_status()  # Check if the request was successful
        
        # Write the content to a file
        with open(file_path, 'wb') as file:
            file.write(response.content)
        
        print(f"Downloaded: {file_name}")
    except requests.exceptions.RequestException as e:
        print(f"Failed to download {url}: {e}")

# Loop through the array of URLs and download each file
for url in urls:
    download_file(url, download_dir)