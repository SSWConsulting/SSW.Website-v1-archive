from bs4 import BeautifulSoup
import os

WHITELIST = [
    # "email-merge-pro",
    # "data-merge-pro",
    # "exchange-reporter",
    # "extreme-emails",
    # "link-auditor",
    # "team-calendar",
    # "sql-deploy",
    # "sql-auditor",
    # "sql-total-deploy",
    # "sql-reporting-services-auditor",
    # "sql-total-compare",
    # other routes this may affect
    "standards\\better-software-suggestions",
    # "performance-pro",
    # "access-reporter",
    # "data-pro",
    # "time-prosmart-tags",
    # "data-renovator",
    # "look-out",
    # "health-auditor",
    # "net-toolkit",
    # "code-auditor"
    # "team-calendar"
    # "web-pager",
    # "wise-pro",
    # "property-and-event-pro"
]




def is_whitelisted(route: str):
    for folder in WHITELIST:
        if route.startswith("./"+folder):
            return True
    return False
    
def updateBannerLink(link : str, link_text : str):
    for root, dirs, files in os.walk("./"):
        for file in files:
            # we still want to traverse every directory, we just might not archive each file under that route
            # if not is_whitelisted(root):
            #     continue
            if file.endswith(('.html', '.htm')):
                print(file)
                if file.endswith('index.html'):
                    continue
                full_file_path = os.path.join(root, file)
                with open(full_file_path, 'r+', encoding='utf-8') as f:
                    print(f'opening {file}')
                    soup = BeautifulSoup(f, 'html5lib')
                    
                    banner_div = soup.find("div", {"style":"color: white; font-size: 1.125rem !important; font-weight: 600" })
                    if  banner_div is not None: 
                        link_tag =  banner_div.findChild('a')
                        if link_tag is not None:
                            link_tag.string = link_text
                            link_tag['href'] = "https://www.{0}".format(link_text)
                            f.seek(0)
                            f.truncate()
                            f.write(str(soup.prettify(formatter="html5")))
                    else: 
                        print(f"banner div not found {file}")
                            
updateBannerLink("https://ssw.com.au/products", "ssw.com.au/netug")                

                


    