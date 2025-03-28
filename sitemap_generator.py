import os
import pandas as pd


def get_urls(path: str) -> list[str]:
    urls: list[str] = []

    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        split_path = item_path.split("\\")

        if os.path.isdir(item_path):
            urls.extend(get_urls(item_path))
        elif item_path.endswith(".html") or item_path.endswith(".htm"):
            urls.append(("https://www.ssw.com.au/" + "/".join(split_path)).lower())

    return urls


def output_sitemap(path: str):
    urls = get_urls(path)

    xml_dicts = []

    for url in urls:
        xml_dicts.append(
            {
                "loc": url,
                "lastmod": "2023-12-12",
                "changefreq": "monthly",
                "priority": "0.4",
            }
        )

    df = pd.DataFrame(xml_dicts)

    xml_data = df.to_xml(
        root_name="urlset",
        row_name="url",
        index=False,
        xml_declaration=True,
        namespaces={"": "http://www.sitemaps.org/schemas/sitemap/0.9"},
    )

    with open("archive/sitemap-index.xml", "w") as f:
        f.write(xml_data)


def main():
    output_sitemap("archive")


if __name__ == "__main__":
    main()
