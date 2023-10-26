


// JAC. 18/06/2003 -- Toggle navigation bar on/off

//**WHY DO WE HAVE THIS ONE?**//
function toggleLeftNavBar()
{

	if (td1.style.display=="")
		td1.style.display="none";
	else
		td1.style.display="";

	if (MenuBarSpacer.style.display=="")
	{
		MenuBarSpacer.style.display="none";
		MenuBarSpacer2.style.display="";
	}
	else
	{
		MenuBarSpacer.style.display="";
		MenuBarSpacer2.style.display="none";
	}
}


// JAC. 18/06/2003 -- Make sure the navigation bar is ON
function showLeftNavBar()
{
	/*
	td1.style.display="";
	MenuBarSpacer.style.display="";
	MenuBarSpacer2.style.display="none";
	*/
	setLeftNavBarVisible(true);
}


// TO. 16/11/2004 -- Make sure the navigation bar is OFF
function hideLeftNavBar()
{
	/*
	td1.style.display="none";
	MenuBarSpacer.style.display="none";
	MenuBarSpacer2.style.display="";
	*/
	setLeftNavBarVisible(false);
}

// JAC. 18/06/2003 -- Toggle navigation bar on/off (for normal SSW pages)
function toggleSSWLeftNavBar()
{
	setLeftNavBarVisible(document.all.chkShowLeftNav.checked);
}

function setLeftNavBarVisible(vis)
{//document.write(vis);
	search = document.location.search;
	re = /HideLeftNav=(True|False)/i;
	matches = search.match(re);
	if (matches != null)
		search = search.replace(matches[0], "");
	
	lastChar = search.substring(search.length - 1, search.length);
	href = document.location.pathname + (search.indexOf("?") == 0 ? search + (lastChar != "?" && lastChar != "&" ? "&" : "") : "?") + "HideLeftNav=" +
		(vis ? "False" : "True");
	window.location = href;
}

function setShowLeftNav()
{
	setLeftNavBarVisible(getCookie("HideLeftNav") == "True");
}

// Retrieve the value of the cookie with the specified name.
function getCookie(sName)
{
  // cookies are separated by semicolons
  var aCookie = document.cookie.split("; ");
  for (var i=0; i < aCookie.length; i++)
  {
    // a name/value pair (a crumb) is separated by an equal sign
    var aCrumb = aCookie[i].split("=");
    if (sName == aCrumb[0]) 
      return unescape(aCrumb[1]);
  }

  // a cookie with the requested name does not exist
  return null;
}


function togglePrint() 
{
	
	var menuElement = document.getElementById("header");
	var leftNavElement = document.getElementById("leftNav");
	var showLeftNavElement = document.getElementById("showLeftNav");
	var printTitleElement = document.getElementById("printTitle");
	var isPrinting = (menuElement.style.display != "none");
	
	menuElement.style.display = (isPrinting ? "none" : "block");
	
	// Only toggle nav bar on/off if it was originally on
	if (leftNavVisible)
		leftNavElement.style.display = (isPrinting ? "none" : "block");
		
	printTitle.style.display = (isPrinting ? "block" : "none");
	
	showLeftNavElement.style.display = (isPrinting ? "none" : "block");
}

function togglePrintTPO() 
{
	
	var menuElement = document.getElementById("headerTPO");
	var leftNavElement = document.getElementById("leftNav");
	var showLeftNavElement = document.getElementById("showLeftNav");
	var printTitleElement = document.getElementById("printTitle");
	var isPrinting = (menuElement.style.display != "none");
	
	menuElement.style.display = (isPrinting ? "none" : "block");
	
	// Only toggle nav bar on/off if it was originally on
	if (leftNavVisible)
		leftNavElement.style.display = (isPrinting ? "none" : "block");
		
	printTitle.style.display = (isPrinting ? "block" : "none");
	
	showLeftNavElement.style.display = (isPrinting ? "none" : "block");
}

function TogglePrintByCheckbox()
{
	// Toggle display of left-hand navigation bar depending on
	// value in checkbox
	
	togglePrint();
}
