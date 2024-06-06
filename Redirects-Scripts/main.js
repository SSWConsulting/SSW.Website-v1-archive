const fs = require("fs");
const path = require("path");
const cheerio = require("cheerio");
const createHTMLFileForStatus = require("./generate-url-status-html");
const createHTMLFileForRedirects = require("./generate-redirect-report");

const archivedPath = "archive";
const folderPath = `../${archivedPath}`;
const mainIndexPagePath = `../${archivedPath}/index.html`;

let urls = [];
let oldURLs = [];
let frontDoorMapper = [];
let cloudFlareMapper = {};
const groupedUrls = {};

const ConflictingPathIcons = {
  "/ssw": "❌",
  "/ssw/NETUG": "❌",
  "/ssw/Consulting": "❌",
  "/ssw/Training": "❌",
  "/ssw/Events": "❌ & 📈",
  "/ssw/Standards": "📈",
};

// Traverse through the directory and apply callback function on each file
function traverseDirectory(dirPath, callback) {
  fs.readdirSync(dirPath).forEach((file) => {
    const filePath = path.join(dirPath, file);
    if (fs.statSync(filePath).isDirectory()) {
      traverseDirectory(filePath, callback);
    } else {
      callback(filePath);
    }
  });
}

// Extract <td> elements from an HTML file
function extractTDsFromFile(filePath) {
  if (path.basename(filePath) === "index.html") {
    const htmlContent = fs.readFileSync(filePath, "utf8");
    const $ = cheerio.load(htmlContent);
    $("td").each((_, element) => {
      const html = $(element).html();
      const href = $(html).attr("href");
      if (href) {
        if (href.includes("/ssw/")) {
          if (!oldURLs.includes(href)) oldURLs.push(href);
        } else if (href.includes("/archive/")) {
          if (!urls.includes(href)) urls.push(href);
        }
      }
    });
  }
}

// Transform a string by capitalizing and removing hyphens
function transformString(input) {
  return input
    .split(".")[0]
    .split("/")
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1).replace(/-/g, ""))
    .join("");
}

// Map redirects based on extracted data
function extractRedirectsFromIndex() {
  const html = fs.readFileSync(mainIndexPagePath, "utf-8");
  const $ = cheerio.load(html);
  $("tr").each((_, element) => {
    const redirectFrom = $(element).find("td:first-child").text().trim().replace("https://www.ssw.com.au", "");
    const redirectTo = $(element).find("td:nth-child(2)").text().trim();

    if (!redirectFrom || !redirectTo) return;

    const transformedName = transformString(redirectTo);
    const formattedFrom = redirectFrom.toLowerCase().replace(/\s/g, "%20");
    const formattedTo = redirectTo.replace(/\s/g, "%20");

    frontDoorMapper.push({
      name: transformedName,
      requestPaths: [formattedFrom],
      redirectPath: formattedTo,
    });

    cloudFlareMapper[formattedFrom] = formattedTo;
  });

  fs.writeFileSync("frontDoorRedirects.json", JSON.stringify(frontDoorMapper, null, 2));
  fs.writeFileSync("cloudFlareRedirects.json", JSON.stringify(cloudFlareMapper, null, 2));
  console.log("\n\n📝 - JSON Redirects CloudFlareWorker has been written to frontDoorRedirects.json and CloudFlareRedirects.json\n\n");
}

// Group URLs by route
function groupByRoute() {
  frontDoorMapper.forEach((element) => {
    const totalRoutes = element.requestPaths[0].split("/").length <= 3;
    const pathArr = element.requestPaths[0].split("/").slice(0, totalRoutes ? 2 : 3);
    const path = pathArr.join("/");

    if (!groupedUrls[path]) {
      groupedUrls[path] = { urls: [], count: 0 };
    }
    groupedUrls[path].count++;
    groupedUrls[path].urls.push(element);
  });
}

// Display grouped URLs and save filtered redirects to a file
function displayGroupedRoute() {
  const groupEntries = Object.entries(groupedUrls).sort((a, b) => a[1].count - b[1].count);
  const sortedGroupedUrls = Object.fromEntries(groupEntries);

  let count = 0;
  let index = 1;
  let filteredRedirects = [];

  Object.keys(sortedGroupedUrls).forEach((path) => {
    const pathInfo = groupedUrls[path];
    const emoji = ConflictingPathIcons[path] || "✅";
    console.log(`${index} - ${emoji} ${path}, Count: ${pathInfo.count}`);
    count += pathInfo.count;
    index++;
    filteredRedirects = [...filteredRedirects, ...pathInfo.urls];
  });

  console.log("\n\n 🚀~ Total count:", count);
  fs.writeFileSync("filtered-redirects.json", JSON.stringify(filteredRedirects, null, 2));
  console.log("\n\n📝 - JSON Redirects has been written to filtered-redirects.json\n\n");
}

// Get redirect mapping and generate required files
function getRedirectMapping() {
  extractRedirectsFromIndex();
  groupByRoute();
  displayGroupedRoute();
  return frontDoorMapper;
}

// Extract URL status
async function runThroughAllIndexFiles(folderPath) {
  traverseDirectory(folderPath, extractTDsFromFile);
  console.log("Extracted unique URLs: ", urls.length);
  await createHTMLFileForStatus(urls);
}

// Main function to run the script
async function main(folderPath) {
  // Uncomment this line to generate page to find out status of all URLs
  // await runThroughAllIndexFiles(folderPath);

  getRedirectMapping();
  await createHTMLFileForRedirects(frontDoorMapper);
}

main(folderPath);
