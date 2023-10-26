/*
'---------------------------------------------- 
' Copyright 2002 Superior Software for Windows 
' www.ssw.com.au All Rights Reserved.
 
' VERSION AUTHOR  DATE COMMENT  
' 1.0 PA 19/12/2000 
' 1.1 AC,JE,DH 23/09/2001 ' Update Code Comments 
' 1.2 PA 31/12/02 Removed style sheet from this js.
' 1.3 TO,PA 16/11/04 replaced green style with silver 
'---------------------------------------------- 
// Needs to be tested in Netscape
*/
var n;
var ie;
var fShow;
var fHide;
if (document.all) 
 {n=0;ie=1;fShow="visible";fHide="hidden";}
else if (document.layers) 
{n=1;ie=0;fShow="show";   fHide="hide";}
else if (navigator.appName == 'Netscape') //For all other Netscape including NS6 which doesn't have layers and all in document object by PA 31/12/02
 {n=1;ie=0;fShow="visible";fHide="hidden";}

//this is on error resume next
//this is left here because we do not have test PCs to test for all old browsers
//All OK in IE 6.0 23/9/2001 - AC
window.onerror=new Function("return true")
var Lookup;
var HTMLstr;
var rightX = 0;
var leftX = 0;
var leftY = 0
var rightY = 0;
var lastMenu;
var arrSelectOneMenus = null;  // used to hide combo select-one menus when DHTML
                            // menu is used. 


////////////////////////////////////////////////////////////////////////////
// Function Menu()                                                        //
////////////////////////////////////////////////////////////////////////////
function Menu()
{
	
	this.bgColor     ="#7d7d7d"//"darkblue"//"#7d7d7d";//"#6600cc";
	if (ie) this.menuFont = "bold xx-small Verdana";
	if (n)  this.menuFont = "bold x-small Verdana";
//	this.fontColor   = "white";

	this.addItem    = addItem;
	this.addSubItem = addSubItem;
	this.showMenu   = showMenu;
	this.mainPaneBorder = 0;
	this.subMenuPaneBorder = 0;

	this.subMenuPaneWidth = 150;

	lastMenu = null;
	
	rightY =0;
	leftY = 0;
	leftX = 0;

	HTMLstr = "";
	HTMLstr += "<!-- MENU PANE DECLARATION BEGINS -->\n";
	HTMLstr += "\n";

	HTMLstr += "<!-- MAIN MENU STARTS -->\n";
	HTMLstr += "<!-- MAIN_MENU -->\n";
	HTMLstr += "<!-- MAIN MENU ENDS -->\n";
	HTMLstr += "\n";
	HTMLstr += "<!-- SUB MENU STARTS -->\n";
	HTMLstr += "<!-- SUB_MENU -->\n";
	HTMLstr += "<!-- SUB MENU ENDS -->\n";
	HTMLstr += "\n";
	HTMLstr += "<!-- MENU PANE DECALARATION ENDS -->\n";
	
}

function addItem(idItem, text, hint, location, altLocation)
{
	var Lookup = "<!-- ITEM "+idItem+" -->";
	if (HTMLstr.indexOf(Lookup) != -1)
	{
		alert(idParent + " already exist");
		return;
	}
	var MENUitem = "";
	MENUitem += "\n<!-- ITEM "+idItem+" -->\n";
		MENUitem += "<div id='"+idItem+"' class='headerMenuItem'>\n";
		MENUitem += "<a ";
		
		if (hint != null)
			MENUitem += "title='"+hint+"' ";
		if (location != null)
		{
			MENUitem += "href='"+location+"' ";
			MENUitem += "onmouseover=\"hideAll()\" ";
		}
		else
		{
			if (altLocation != null)
			{
				MENUitem += "href='"+altLocation+"' ";
			}
			else
			{
				MENUitem += "href='.' ";
			}
			MENUitem += "onmouseover=\"displaySubMenu('"+idItem+"')\" ";
			MENUitem += "onclick=\"return false;\" "
		}
		MENUitem += ">";
		MENUitem += text;
		MENUitem += "</a></div>\n";
	MENUitem += "<!-- END OF ITEM "+idItem+" -->\n\n";
	MENUitem += "<!-- MAIN_MENU -->\n";

	HTMLstr = HTMLstr.replace("<!-- MAIN_MENU -->\n", MENUitem);
	
}

function addSubItem(idParent, textOriginal, hint, location)
{
	var MENUitem = "";
	Lookup = "<!-- ITEM "+idParent+" -->";
	var text = UserLoggedIn(textOriginal);
	if (HTMLstr.indexOf(Lookup) == -1)
	{
		alert(idParent + " not found");
		return;
	}
	Lookup = "<!-- NEXT ITEM OF SUB MENU "+ idParent +" -->";
	if (HTMLstr.indexOf(Lookup) == -1)
	{
		/*if (n)
		{
			MENUitem += "\n";
			MENUitem += "<layer id='"+idParent+"submenu' visibility=hide bgcolor='"+this.bgColor+"'>\n";
			MENUitem += "<table border='"+this.subMenuPaneBorder+"' bgcolor='"+this.bgColor+"' width="+this.subMenuPaneWidth+">\n";
			MENUitem += "<!-- NEXT ITEM OF SUB MENU "+ idParent +" -->\n";
			MENUitem += "</table>\n";
			MENUitem += "</layer>\n";
			MENUitem += "\n";
		}
		if (ie)
		{*/
			MENUitem += "\n";
			MENUitem += "<div id='"+idParent+"submenu' class='headerSubmenu' >\n";
			MENUitem += "<!-- NEXT ITEM OF SUB MENU "+ idParent +" -->\n";
			MENUitem += "</div>\n";
			MENUitem += "\n";
		//}
		MENUitem += "<!-- SUB_MENU -->\n";
		HTMLstr = HTMLstr.replace("<!-- SUB_MENU -->\n", MENUitem);
	}

	Lookup = "<!-- NEXT ITEM OF SUB MENU "+ idParent +" -->\n";
	/*if (n)  MENUitem = "<a class='headerSubmenuItem' title='"+hint+"' href='"+location+"'>"+text+"</a>\n";
	if (ie) */MENUitem = "<a class='headerSubmenuItem' title='"+hint+"' href='"+location+"'>"+text+"</a>\n";
	MENUitem += Lookup;
	HTMLstr = HTMLstr.replace(Lookup, MENUitem);

}

//function showOrHideSelectOneMenu(strVisibility)
//
// additions to hide all the select menus when the drop down menu is
// used, select menus have very high z values and the DHTML menu appears
// underneath it.  
// see also: http://search.support.microsoft.com/kb/c.asp?fr=0&SD=GN&LN=EN-US
// John Liu 06/2001
// set display to "hidden" to hide, set it to "visibility" to show
// IE version only, untested on Netscape but we know that Netscape does not 
// support elem.style tag, but we think Netscape does not need this workaround
// because it will display the elements correctly anyway
//
// TO ADD menus to the array to hide them, add the following script to your
// file, after the controls are created.
// 	if (ie) { 
//		arrSelectOneMenus = new Array(); 
//		arrSelectOneMenus[0] = document.all.ctlProduct; 
//      arrSelectOneMenus[1] = document.add.ctlMonths;
//      ... etc
//	}
function showOrHideSelectOneMenu(strVisibility)
{
	var i, e;
	if (arrSelectOneMenus == null || arrSelectOneMenus.length == 0)
		return;
//	alert(arrSelectOneMenus.length + "\n" + strVisibility);
	for (i=0; i < arrSelectOneMenus.length; i++) 
	{
		e = arrSelectOneMenus[i];
		if (!e || !e.style) 
			continue;
		e.style.visibility=strVisibility;
	}
	
}

//function playWave()
//{
//	document.all.sound.src="/ssw/Images/UtopiaCriticalStop.WAV";//Sound
//}
function showMenu()
{
	if (!bMenuDrawn)
	{
		document.writeln(HTMLstr);
		bMenuDrawn = true;
	}
}

////////////////////////////////////////////////////////////////////////////
// Private declaration
function displaySubMenu(idMainMenu)
{

	var menu;
	var submenu;
	//document.all.sound.src="/ssw/Images/WHOOSH.WAV";//Sound
/*
	if (n)
	{
		submenu = document.layers[idMainMenu+"submenu"];
		if (lastMenu != null && lastMenu != submenu) hideAll();
		submenu.left = document.layers[idMainMenu].pageX;
		submenu.top  = document.layers[idMainMenu].pageY + 25;
		submenu.visibility = fShow;

		leftX  = document.layers[idMainMenu+"submenu"].left;
		rightX = leftX + document.layers[idMainMenu+"submenu"].clip.width;
		leftY  = document.layers[idMainMenu+"submenu"].top+
			document.layers[idMainMenu+"submenu"].clip.height;
		rightY = leftY;
	} else if (ie) {*/
		//menu = eval(idMainMenu);
		menu = document.getElementById(idMainMenu);
	
		submenu = document.getElementById(idMainMenu+"submenu").style;
	
//		submenu.left = calculateSumOffset(menu, 'offsetLeft') - 10;
		submenu.left = menu.offsetLeft - 10;
//		submenu.top  = calculateSumOffset(menu, 'offsetTop') + 30;
		submenu.top  = 106;
		submenu.visibility = fShow;     
		if (lastMenu != null && lastMenu != submenu) hideAll();
		showOrHideSelectOneMenu("hidden");
		if (ie) {
		leftX  = document.all[idMainMenu+"submenu"].style.posLeft;
		rightX = leftX + document.all[idMainMenu+"submenu"].offsetWidth;

		leftY  = document.all[idMainMenu+"submenu"].style.posTop+
			document.all[idMainMenu+"submenu"].offsetHeight;		 
		 }
		else {
			var submenuElement = document.getElementById(idMainMenu+"submenu");
			leftX  = parseIntPixel(submenuElement.style.left);
			rightX = leftX + submenuElement.offsetWidth;
			leftY  = parseIntPixel(submenuElement.style.top) + submenuElement.offsetHeight;
		}
		rightY = leftY;
	//}
	lastMenu = submenu;
	
}
//parse string value with px to integer (for Netscape)
function parseIntPixel(pixelValue)
{
	var pos = pixelValue.indexOf("px");

	if (pos > 0)
	{
		return parseInt(pixelValue.substring(0,pos));
	}
	else
	{
		return parseInt(pixelValue);
	}
}
function hideAll()
{
	if (lastMenu != null) 
	{
		lastMenu.visibility = fHide;lastMenu.left = 0;
	}

	showOrHideSelectOneMenu(fShow);
}

/* TO, PA 16Nov04 - Function no longer required
function calculateSumOffset(idItem, offsetName)
{
//alert(idItem + ' ' + offsetName);
	var totalOffset = 0;
	var item = document.getElementById(idItem);
	alert("test 1 worked");
	do
	{
		totalOffset += item.offsetLeft;
		alert("test 2 worked");
		item = item.offsetParent;
	} while (item != null);
	return totalOffset;
}
*/

function updateIt(e)
{
var x;
var y;
	if (ie)
	{
		 x = window.event.clientX;
		 y = window.event.clientY-45;//done by Peter ahn
		if (x > rightX || x < leftX) hideAll();
		else if (y > rightY) hideAll();
	}
	else
	{
		 x = e.pageX;
		 y = e.pageY;
		if (x > rightX || x < leftX) hideAll();
		else if (y > rightY) hideAll();		
	}
}

if (ie)
{
	document.body.onclick=hideAll;
	document.body.onscroll=hideAll;
	document.body.onmousemove=updateIt;
}
else
{
	//When you mousedown on the link firefox and netscape hide instantly.
	//So commented a next line.
	//document.onmousedown=hideAll;
	window.captureEvents(Event.MOUSEMOVE);
	window.onmousemove=updateIt;
}


		  function UserLoggedIn(strText)
		  {
		    if ((strText.indexOf("Logon/Join") == 0) && (UserLoggedStatus() == true))
		    {
		      return "Log Off";
		    }
		    else
		    {
		      return strText;
		    }
		  }		
