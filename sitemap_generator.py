import os

WHITELIST = [
    "Training"
]

def output_sitemap(path: str):
    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        split_path = item_path.split("\\")

        if os.path.isdir(item_path) and split_path[1] in WHITELIST:
            output_sitemap(item_path)
        elif item_path.endswith(".html"):
            print("/".join(split_path))
        

def main(): 
    output_sitemap("history")

if __name__ == "__main__":
    main()
