const fs = require("fs");
const axios = require("axios");

const hostURL = "https://tfs365.com"; // https://www.ssw.com.au

// Function to generate HTML for the table
async function generateHTMLTable(obj) {
  const headHTML = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redirects URL Status Report</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
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

  let bodyHTML = "";
  let index = 1;
  let successCount = 0;

  for (const redirect of obj) {
    try {
      const finalURL = `${hostURL}${redirect.requestPaths[0].replace("/archive", "/history")}`;
      console.log(`🚀 ${index}) pinging: ${finalURL}`);
      const response = await axios.head(finalURL);
      const redirectedURL = response.request.res.responseUrl;
      const finalRedirectPath = `${hostURL}${redirect.redirectPath}`;
      const status = redirectedURL === finalRedirectPath ? "pass" : "fail";
      successCount += status === "pass" ? 1 : 0;

      bodyHTML += `
        <tr>
            <td>${index}</td>
            <td><a href="${finalURL}" target="_blank">${finalURL}</a></td>
            <td><a href="${finalRedirectPath}" target="_blank">${finalRedirectPath}</a></td>
            <td><i title="${status}" class="fa fa-circle ${status === "pass" ? "text-success" : "text-danger"}" aria-hidden="true"></i></td>
        </tr>
      `;
    } catch (error) {
      const finalURL = `${hostURL}${redirect.requestPaths[0].replace("/archive", "/history")}`;
      const finalRedirectPath = `${hostURL}${redirect.redirectPath}`;
      console.error(`Error fetching URL ${finalURL}:`, error);

      bodyHTML += `
        <tr class="bg-danger text-white">
            <td>${index}</td>
            <td><a class="text-white" href="${finalURL}" target="_blank">${finalURL}</a></td>
            <td><a class="text-white" href="${finalRedirectPath}" target="_blank">${finalRedirectPath}</a></td>
            <td class="text-white">${error.response?.status ?? "Error"}</td>
        </tr>
      `;
    }
    index++;
  }

  const footerHTML = `
        </tbody>
    </table>
    <hr>
    <b>Total Successful Redirects</b>: ${successCount}/${obj.length}
    <hr>
    <b>Errors to fix</b>: ${obj.length - successCount}
</body>
</html>
`;

  return headHTML + bodyHTML + footerHTML;
}

// Function to create HTML file for redirects
async function createHTMLFileForRedirects(obj) {
  const html = await generateHTMLTable(obj);
  fs.writeFileSync("url_redirect_report.html", html);
  console.log("📝 - HTML file has been created successfully.");
}

module.exports = createHTMLFileForRedirects;
