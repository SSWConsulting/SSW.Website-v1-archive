const fs = require("fs");
const path = require("path");
const cheerio = require("cheerio");
const createHTMLFileForStatus = require("./generate-url-status-html");
const createHTMLFileForRedirects = require("./generate-redirect-report");

let urls = [];
let oldURLs = [];
let redirectMap = [];
let cloudFlareMapper= {};
const archivedPath = "archive";
const folderPath = `../${archivedPath}`;
const mainIndexPagePath = `../${archivedPath}/index.html`;
const groupedUrls = {};

const ConflictingPathIcons = {
  "/ssw": "❌",
  "/ssw/NETUG": "❌",
  "/ssw/Consulting": "❌",
  "/ssw/Training": "❌",
  "/ssw/Events": "❌ & 📈",
  "/ssw/Standards": "📈",
};

function traverseDirectory(dirPath, callback) {
  fs.readdirSync(dirPath).forEach((file) => {
    const filePath = path.join(dirPath, file);
    if (fs.statSync(filePath).isDirectory()) {
      //console.log(`${path.basename(filePath)},`);
      traverseDirectory(filePath, callback);
    } else {
      callback(filePath);
    }
  });
}

// Function to extract <td> elements from an HTML file
function extractTDsFromFile(filePath) {
  if (path.basename(filePath) === "index.html") {
    const htmlContent = fs.readFileSync(filePath, "utf8");
    const $ = cheerio.load(htmlContent);
    $("td").each((index, element) => {
      //console.log($(element).html());
      const html = $(element).html();
      const href = $(html).attr("href");
      if (href && href.includes("/ssw/")) {
        if (oldURLs.indexOf(href) === -1) {
          oldURLs.push(href);
        }
      } else {
        if (href && href.includes("/archive/")) {
          if (urls.indexOf(href) === -1) {
            urls.push(href);
          }
        }
      }
    });
  }
}

function transformString(input) {
  const removeExtention = input.split(".")[0];
  const words = removeExtention.split("/");

  const transformedWords = words.map((word, index) => {
    if (index === 0) {
      return word.charAt(0).toUpperCase() + word.slice(1).replace(/-/g, "");
    } else {
      return word.charAt(0).toUpperCase() + word.slice(1).replace(/-/g, "");
    }
  });

  const result = transformedWords.join("").replace("-", "");

  return result;
}

function mapRedirects() {
  const html = fs.readFileSync(mainIndexPagePath, "utf-8");
  const $ = cheerio.load(html);
  $("tr").each((index, element) => {
    // Extract data from the first and second columns of each row
    const redirectFrom = $(element)
      .find("td:first-child")
      .text()
      .trim()
      .replace("https://www.ssw.com.au", "");

    const redirectTo = $(element).find("td:nth-child(2)").text().trim();

    if (redirectFrom === "" || redirectTo === "") return;
    redirectMap.push({
     name: transformString(redirectTo),
      requestPaths: [redirectFrom],
      redirectPath: redirectTo,
    });

    cloudFlareMapper[redirectFrom.toLowerCase()] = redirectTo;
  });

  const frontDoorRedirects = JSON.stringify(redirectMap, null, 2);
  const cloudFlarRedirects = JSON.stringify(cloudFlareMapper);
//  console.log("🚀 ~ mapRedirects ~ cloudFlarRedirects:", frontDoorRedirects)
  fs.writeFileSync("redirects.json", frontDoorRedirects);
  fs.writeFileSync("cloudFlarRedirects.json", cloudFlarRedirects);
  console.log("\n\n📝 - JSON Redirects CloudFlareWorker has been written to redirects.json and CloudFlareWorker.js\n\n");
}

function groupByPath() {
  redirectMap.forEach((element) => {
    const totalRoutes = element.requestPaths[0].split("/").length <= 3;
    const pathArr = element.requestPaths[0]
      .split("/")
      .slice(0, totalRoutes ? 2 : 3);
    const path = pathArr.join("/"); //element.redirectFrom.substring(0, lastSlashIndex);
    if (groupedUrls[path] === undefined) {
      groupedUrls[path] = { urls: [], count: 0 };
    }
    groupedUrls[path].count++;

    groupedUrls[path].urls.push(element);
  });
}

function displayGroupBy(numberOfPaths) {
  let count = 0;
  let indexx = 1;
  let filteredRedirects = [];

  const groupEnteries = Object.entries(groupedUrls);
  groupEnteries.sort((a, b) => a[1].count - b[1].count);
  const sortedGroupedUrls = Object.fromEntries(groupEnteries);

  Object.keys(sortedGroupedUrls).forEach((path, index) => {
    const pathInfo = groupedUrls[path];
    const emoji = ConflictingPathIcons[path] ?? "✅";

    //if (pathInfo.count > 16 && pathInfo.count < 114) 
      {
      //>= 17)
      console.log(`${indexx} - ${emoji} ${path}, Count: ${pathInfo.count}`);
      count += pathInfo.count;
      indexx++;
      //console.log("URLs:", pathInfo.urls);
      filteredRedirects = [...filteredRedirects, ...pathInfo.urls];
    }
  });
  console.log("\n\n 🚀~ Total count:", count);
  //console.log("🚀 ~ displayGroupBy ~ filteredRedirects:", filteredRedirects);
  //console.log("🚀 ~ displayGroupBy ~ filteredRedirects:", filteredRedirects)
  const frontDoorRedirects = JSON.stringify(filteredRedirects, null, 2);
  fs.writeFileSync("filtered-redirects.json", frontDoorRedirects);
  console.log(
    "\n\n📝 - JSON Redirects has been written to filtered-redirects.json\n\n"
  );
}

function getRedirectMapping() {
  mapRedirects();
  groupByPath();
  displayGroupBy(400);
  return redirectMap;
}

async function extractURLStatus(folderPath) {
  traverseDirectory(folderPath, extractTDsFromFile);
  console.log("Extracted unique URLs: ", urls.length);
  await createHTMLFileForStatus(urls);
  //await createHTMLFileForRedirects(urls);
}

// Main function to run the script
async function main(folderPath) {
  // Uncomment this line to generate page for all archived URL status
  //await extractURLStatus(folderPath);

  getRedirectMapping();
  await createHTMLFileForRedirects(redirectMap);
}

main(folderPath);
