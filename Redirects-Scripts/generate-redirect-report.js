const fs = require("fs");
const axios = require("axios");
const ProductionURL = "https://www.tfs365.com"; //https://www.ssw.com.au";

// Function to generate HTML for the table
async function generateHTMLTable(obj) {
  let html = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redirects URL Status Report</title>
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

<h2 class="mb-5 mt-5">Redirects URL Status Report</h2>

<table>
    <thead>
        <tr>
            <th>SR#</th>
            <th>URL</th>
            <th>Redirect URL</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
`;

  let index = 1;
  for (const redirect of obj) {
    try {
      const finalURL =
        ProductionURL +
        redirect.requestPaths[0].replace("/archived", "/history"); // remove replace once history is migrated
      console.log("🚀 pinging :", finalURL);
      const response = await axios.head(finalURL); // Use axios to send HEAD request
      const redirectedURL = response.request.res.responseUrl;
      const finalRedirectPath = ProductionURL + redirect.redirectPath;

      const status = redirectedURL == finalRedirectPath ? "pass" : "fail";
      html += `
        <tr>
            <td>${index}</td>
            <td><a href=${finalURL} target="_blank">${finalURL}</a></td>
            <td><a href=${finalRedirectPath} target="_blank">${finalRedirectPath}</a></td>
            <td><i title=${status} class="fa fa-circle ${
        status == "pass" ? "text-success" : "text-danger"
      }
             " aria-hidden="true"></i>
            </td>
        </tr>
    `;
    } catch (error) {
      const finalURL =
        ProductionURL +
        redirect.requestPaths[0].replace("/archived", "/history");
      const finalRedirectPath = ProductionURL + redirect.redirectPath;

      console.error(`Error fetching URL ${finalURL}:`, error);
      html += `
        <tr class="bg-danger text-white">
            <td>${index}</td>
            <td><a class="text-white" href=${finalURL} target="_blank">${finalURL}</a></td>
            <td><a class="text-white" href=${finalRedirectPath} target="_blank">${finalRedirectPath}</a></td>
            <td class="text-white">${error.response?.status ?? "Error"}</td>

        </tr>
    `;
      index++;
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

async function createHTMLFileForRedirects(obj) {
  const obj2 = [
    {
      requestPaths: ["/ssw/Standards/Rules/Training.aspx"],
      redirectPath: "/events",
    },
  ];
  const html = await generateHTMLTable(obj2);
  fs.writeFileSync("url_redirect_report.html", html);
  console.log("📝 - HTML file has been created successfully.");
}

module.exports = createHTMLFileForRedirects;
