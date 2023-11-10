# SSW Website v1 Progress Tracking Repo

As per https://github.com/SSWConsulting/SSW.Website/issues/1263, we need a way to track the progress for which pages have been migrated to the v3 website. 

This repository serves as a tracker of which pages have been migrated, we will zz each page that we have migrated to the v3 Next.js site.

We are not zzing pages on the original repo because we want those pages to stay live so we can compare the new pages with them.

v1 site - https://dev.azure.com/ssw2/ssw.website   
bypass frontdoor (to see old pages) - https://prod.ssw.com.au/

## Script

To run the Python script that generates the `todos.md` file, run the following command:

```
python todooutputter.py
```

This will find and list all the aspx files in the project with associated directories, and tick off pages that have zz at the start. 

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