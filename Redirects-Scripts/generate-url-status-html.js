const fs = require("fs");
const axios = require("axios");
const ProductionURL = "https://www.ssw.com.au";

// Function to generate HTML for the table
async function generateHTMLTable(urls) {
  let html = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Archival URL Status Report</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>

</head>
<body>

<h2 class="mb-5 mt-5">Archival URL Status Report</h2>

<table>
    <thead>
        <tr>
            <th>SR#</th>
            <th>URL</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
`;

  for (const url of urls) {
    try {
      const appendedURL = ProductionURL + url.replace("/archive", "/history"); // remove replace once history is migrated
      const response = await axios.head(appendedURL); // Use axios to send HEAD request
      const status = response.status;
      html += `
        <tr>
            <td>${urls.indexOf(url) + 1}</td>
            <td><a href=${appendedURL} target="_blank">${appendedURL}</a></td>
            <td><i title=${status} class="fa fa-circle ${
        status == 200 ? "text-success" : "text-danger"
      }
             " aria-hidden="true"></i>
            </td>
        </tr>
    `;
    } catch (error) {
      const appendedURL = ProductionURL + url.replace("/archive", "/history");
      console.error(`Error fetching URL ${appendedURL}:`, error);
      html += `
        <tr class="bg-danger text-white">
            <td>${urls.indexOf(url) + 1}</td>
            <td><a class="text-white" href=${appendedURL} target="_blank">${appendedURL}</a></td>
            <td class="text-white">${error.response.status}</td>

        </tr>
    `;
    }
  }

  html += `
    </tbody>
</table>

</body>
</html>
`;

  return html;
}

async function createHTMLFileForStatus(urls) {
  const html = await generateHTMLTable(urls);
  fs.writeFileSync("url_status_report.html", html);
  console.log("📝 - HTML file has been created successfully.");
}

module.exports = createHTMLFileForStatus;
