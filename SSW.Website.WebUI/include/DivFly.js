/*
* Reference: from http://office.microsft.com
* Last Update: 24/03/2004
*/

/*
function fnstart(cbid)
{
		var oClip = document.all(cbid);
		//alert (navigator.appVersion);
		
		if (Obj.checked == true)
			fnMoveObject(oClip, conShrinking);
		else
			fnMoveObject(oClip, conGrowing);
}
*/

//var conGrowing = -1;
//var conShrinking = 1;
var iFinishTop, iFinishLeft

function fnMoveObject(oObj, iStep){
	var conTravelTime = 300;
	var iStartLeft, iStartTop, iStartWidth, iStartHeight, iDistance, iSteps;
	var iFinishWidth, iFinishHeight;
	var oDocBody, iTop, iLeft, iWidth, iHeight;
	var oSourceObject, oMoveObj;
	var iLeftDistance, iTopDistance, iWidthDistance, iHeightDistance, iLeftInc, iTopInc, iWidthInc, iHeightInc;

	//alert ("in fnMoveObject");

	if("object" == typeof(eMoveObj)) fnEndMove(true);

	//if(sBrowserVer > 5)
		oDocBody = document.body;
	//alert(fnGetDistance(oObj, "top"));
	
	try {
		iTop = fnGetDistance(oObj, "top") - oObj.parentElement.scrollTop;
		//		alert ("try");
		iLeft = fnGetDistance(oObj, "left");
		
		//alert(iLeft);
		
		iWidth = oObj.offsetWidth;
		iHeight = oObj.offsetHeight;
		
		oMoveObj = oAnimationSource.cloneNode(true);
		oDocBody.insertBefore(oMoveObj);
		oMoveObj.id = "eMoveObj";
		//oMoveObj.style.borderColor = "#2254B1";
		oMoveObj.style.borderColor = "Blue";
		//alert("within the first try");

	}catch(e){
		return false;
	}

	//alert("midway");

	oSourceObject = document.all("oAnimationTarget");
	iSourceObjectTop = fnGetDistance(oSourceObject, "top") + parseInt(oSourceObject.offsetHeight/2) + 35;
	iSourceObjectLeft = fnGetDistance(oSourceObject, "left") + parseInt(oSourceObject.offsetWidth/2);

	if(iStep == conShrinking){
		iStartTop = iTop;

		iStartLeft = iLeft;
		iStartWidth = iWidth + 10;
		iStartHeight = iHeight + 10;

		iFinishTop = iSourceObjectTop;
		iFinishLeft = !isRtl ? iSourceObjectLeft + 58 : iSourceObjectLeft - 55;
		iFinishWidth = 0;
		iFinishHeight = 0;
	}else{
		iStartTop = iSourceObjectTop;
		iStartLeft = !isRtl ? iSourceObjectLeft + 58 : iSourceObjectLeft - 55;
		iStartWidth = 8;
		iStartHeight = 8;

		iFinishTop = iTop;

		iFinishLeft = iLeft;
		iFinishWidth = iWidth + 15;
		iFinishHeight = iHeight + 15;
	}

	iTopDistance = iFinishTop - iStartTop;
	iLeftDistance = iFinishLeft - iStartLeft;
	iWidthDistance = iFinishWidth - iStartWidth;
	iHeightDistance = iFinishHeight - iStartHeight;

	iDistance = Math.sqrt(Math.pow(iLeftDistance, 2) + Math.pow(iTopDistance, 2));
	iSteps = parseInt(iDistance/25);
	iSpeed = parseInt(conTravelTime/iSteps);

	iLeftInc = parseInt(iLeftDistance/iSteps);
	iTopInc = parseInt(iTopDistance/iSteps);
	iWidthInc = parseInt(iWidthDistance/iSteps);
	iHeightInc = parseInt(iHeightDistance/iSteps);

	if(iStartHeight == 0) iStartHeight = 1;

	g_oMoveObjStyle = eMoveObj.style;
	g_oMoveObjStyle.left = iStartLeft;
	g_oMoveObjStyle.top = iStartTop;
	g_oMoveObjStyle.width = iStartWidth;
	g_oMoveObjStyle.height = iStartHeight;

	g_iMoveTimerVariables = ", " + iWidthInc + ", " + iHeightInc + ", " + iLeftInc + ", " + iTopInc + ", " + iSteps + ", " + iSpeed;
	g_iMoveTimer = window.setTimeout("fnMove(" + 0 + g_iMoveTimerVariables + ");", 0);
}

function fnMove(i, iWidthInc, iHeightInc, iLeftInc, iTopInc, iMax, iSpeed){
	try{
		g_oMoveObjStyle = document.all("eMoveObj").style;
		g_oMoveObjStyle.posWidth += iWidthInc;
		g_oMoveObjStyle.posHeight += iHeightInc;
		g_oMoveObjStyle.posLeft += iLeftInc;
		g_oMoveObjStyle.posTop += iTopInc;

		if(g_oMoveObjStyle.posHeight == 0) g_oMoveObjStyle.posHeight = -1;

		if(++i < iMax - 1){
			g_iMoveTimer = window.setTimeout("fnMove(" + i + g_iMoveTimerVariables + ");", iSpeed);
		}else{
			g_oMoveObjStyle.posLeft = iFinishLeft;
			g_oMoveObjStyle.posTop = iFinishTop;
			window.setTimeout("fnEndMove();", 50);
		}
	}catch(e){
		return false;
	}
}

function fnEndMove(bInterrupted){
	if(bInterrupted == null) bInterrupted = false;

	var sProductID, sItemID, oLink, oNode, iSize;
	if(typeof(g_iMoveTimer) != "undefined")
		window.clearTimeout(g_iMoveTimer);
	if("object" != typeof(eMoveObj)) return false;
	document.all("eMoveObj").removeNode(true);
}


function fnGetDistance(oFromObj, sFromPoint, oParent, sToPoint, bIgnoreScrollbars){
	//if(oParent == null && sBrowserVer > 5) 
		
	oParent = document.body;
	if(sToPoint == null) sToPoint = "top";
	if(bIgnoreScrollbars == null) bIgnoreScrollbars = true;

	var i, bFromBottom, bFromRight, bFromLeft, bFromTop, bToBottom, bToRight, bToLeft, bToTop;

	//alert("fnGetDistance called");

	bFromBottom = (sFromPoint == "bottom");
	bFromRight = (sFromPoint == "right");
	bFromLeft = (sFromPoint == "left" || bFromRight);
	bFromTop = (sFromPoint == "top" || bFromBottom);

	bToBottom = (sToPoint == "bottom");
	bToRight = (sToPoint == "right");
	bToLeft = (sToPoint == "left" || bToRight);
	bToTop = (sToPoint == "top" || bToBottom);

	i = 0;

	try{
		if(bFromBottom){
			i = oFromObj.offsetHeight;
		}else if(bFromRight){
			i = oFromObj.offsetWidth;
		}

		while(oFromObj != oParent){
			i += bFromTop ? oFromObj.offsetTop : oFromObj.offsetLeft;

			oFromObj = oFromObj.offsetParent;

			if(bToBottom){
				i -= oFromObj.offsetHeight;
			}else if(bToRight){
				i -= oFromObj.offsetWidth;
			}

			if(!bIgnoreScrollbars){
				i -= bToTop ? oFromObj.scrollTop : oFromObj.scrollLeft;

				if(bToBottom){
					i += oFromObj.scrollHeight;
				}else if(bToRight){
					i += oFromObj.scrollWidth;
				}
			}
		}
	}catch(e){}

	return Math.abs(i);
}

function fnCancel(){
	if(window.event) window.event.cancelBubble = true;
}
// JavaScript Document