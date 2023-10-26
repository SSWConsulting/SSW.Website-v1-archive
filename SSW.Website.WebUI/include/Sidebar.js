// JScript File

function showLeftNavBarQS()
{
	var sidebar = document.getElementById("leftSidebar");
	//var content = document.getElementById("contentOuter");
	var sidebarTD = document.getElementById("ctl00_sidebarTD");
	var showLeftNavDIV = document.getElementById("showLeftNav");
	showLeftNavDIV.style.display="none";
	//sidebarTD.style.width=230;
	sidebar.style.display="";
	//content.style.left=220;
	//content.style.top=110;
	return true;
}

function hideLeftNavBarQS()
{
	var sidebar = document.getElementById("leftSidebar");
	//var content = document.getElementById("contentOuter");
	var sidebarTD = document.getElementById("ctl00_sidebarTD");
	var showLeftNavDIV = document.getElementById("showLeftNav");
	showLeftNavDIV.style.display="";
	sidebarTD.style.width=0;
	sidebar.style.display="none";
	//content.style.left=0;
	//content.style.top=130;
	return true;
}
 

