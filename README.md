# SSW Website v1 Progress Tracking Repo

As per https://github.com/SSWConsulting/SSW.Website/issues/1263, we need a way to track the progress for which pages have been migrated to the v3 website. 

This repository serves as a tracker of which pages have been migrated, we will zz each page that we have migrated to the v3 Next.js site.

We are not zzing pages on the original repo because we want those pages to stay live so we can compare the new pages with them.

v1 site - https://dev.azure.com/ssw2/ssw.website   
bypass frontdoor (to see old pages) - https://prod.ssw.com.au/

## Scripts

### HTML Output Script

This script will save every page from the v1 website as HTML files in the `history` folder. It will scan each page and locate any images and save them in the `history` folder as well, preserving the original path of the images on the v1 site. 

Core CSS and JS files exist in the `history` folder, and will be added to each page if required. Files include:

- `jquery.js` - JQuery
- `menu.js` - Megamenu script
- `moment.js` - Moment.js
- `ssw_pigeon.js` - the most important script to include, the entire JS bundle for most of the v1 sites
- `ssw_raven_print.css` 
- `ssw_raven.css`
- All contents of the `css` directory (`Base.css`, `Content.css`, etc.) - only for archiving Standards

The script also removes all `iframe` and `script` tags to ensure we do not recieve unecessary noise + interaction (e.g. Chatbase, Google Analytics, etc.) when we are viewing these archived pages.

To run the Python script that generates the `history` folder, run the following command:

```bash
python html_archiver.py
```

### Markdown Todo List

To run the Python script that generates the `todos.md` file, run the following command:

```bash
python todo_outputter_md.py
```

This will find and list all the aspx files in the project with associated directories, and tick off pages that have zz or za at the start. 

### CSV Todo List

To run the Python script that generates the `todos.csv` file, run the following command:

```bash
python todo_outputter_csv.py
```

This will output a file called `todos.csv` that can be exported to Excel if required. The status of a page is determined by the prefix of the page name (more detail on prefixes below).


## Tasks
- [ ] Turn off the v1 website's server 
- [ ] Remove this repo once all pages have been migrated to v3 


## Prefix Meaning 
- zz - migrated to v3 or contains no content
- zr - redirects to another page
- za - migrated to archive

## CSV Headings
- `Page` - URL of the page
- `Status` - Either Done, Archived, Redirect or To-do
- `Priority` - value in powers of 2 e.g. 1, 2, 4, etc. - higher no. = higher priority
- `Complexity` - value in powers of 2 e.g. 1, 2, 4, etc. - higher no. = higher complexity
- `Notes` - additional info if required