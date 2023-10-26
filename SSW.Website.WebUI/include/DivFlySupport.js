/*
* Reference: from http://office.microsft.com
* Last Update: 24/03/2004
*/


window.name = "CGL";
window.onerror = mHideErrors;
window.onload = mLoad;
window.onunload = mUnload;
var oPreview = null;
var fWindowLoaded = false;
var iSize;
var iTotal;
var isRtl = mIsRtl();
var sThumbSelected;
var fContextMenuOpened = false;
var fPageLoaded = false;
var fBasketLoaded = false;
var fIsOldEditorialContent = false;

var imgDownNorm = new Image (32,18);
imgDownNorm.src = "/global/images/imedwnld.gif";
var imgDownAnim = new Image (32,18);
imgDownAnim.src = "/global/images/animedwnld.gif";


function mUnload(){
	if (oPreview != null && !oPreview.closed)
		oPreview.bCloseWindow = false;

	mCloseWindow();
}

function mHideErrors(){
	return true;
}


function mIsRtl(){
	var htmlTagDir;
	if (document.documentElement)
		htmlTagDir = document.documentElement.dir;

	if(sBrowserVer > 5 && htmlTagDir && (htmlTagDir.toLowerCase() == "rtl"))
		return true;

	return false;
}


function mOpenPreview(AssetID){
	if(typeof(QStringAddOn) == "undefined" || QStringAddOn == null)
		QStringAddOn = "";
	oPreview = window.open("preview.aspx?AssetID=" + AssetID + QStringAddOn,"ONCMWin",
		"directories=0,location=0,menubar=0,resizable=1,scrollbars=1,status=0,toolbar=0,height=350,width=520");
}

function mUpdateBasketLink(){
	if (oPreview != null && !oPreview.closed && fWindowLoaded)
		oPreview.mChkBasketStatus();
}

function mClearWindow(){
	oPreview = null;
}

function mCloseWindow(){
	if (oPreview != null && !oPreview.closed){
		oPreview.close();
		oPreview = null;
	}
}

function mWindowFocus(){
	if (oPreview != null && !oPreview.closed){
		oPreview.focus();
	}
}

function mRefreshThumbs(){
	if (bRefresh && document.images){
		nImageGroup = document.images;
		for (nImageCounter = 0;nImageCounter < nImageGroup.length;nImageCounter++){
			if(nImageGroup[nImageCounter].name == "MM")
				nImageGroup[nImageCounter].src = nImageGroup[nImageCounter].src;
		}
	}
}

function mMouseOver(AssetID){
	if(sBrowser == "IE" && sBrowserVer >= 5.5 && eval(window.event.srcElement.id != "bt_" + AssetID) && !fContextMenuOpened){
		if(sThumbSelected != AssetID)
			mMouseOut(sThumbSelected);

		mThumbHighlight(AssetID);

		if(mMouseOver.arguments.length > 0){
			if(document.all("clCoD") != null && document.all("clCoDText") != null) {
				document.all("clCoD").style.backgroundColor='white';
				if(fIsOldEditorialContent)
					document.all("clCoDText").style.zIndex = -1;
			}
		}
	}
}

function mMouseOut(AssetID){
	if(sBrowser == "IE" && sBrowserVer >= 5.5 && !fContextMenuOpened){
		if(sThumbSelected != AssetID)
			AssetID = sThumbSelected

		mThumbNormal(AssetID);

		if(mMouseOut.arguments.length > 0){
			if(document.all("clCoD") != null && document.all("clCoDText") != null) {
				document.all("clCoD").style.backgroundColor='';
				if(fIsOldEditorialContent)
					document.all("clCoDText").style.zIndex = 10;
			}
		}
	}
}

function mContextMouseOver(AssetID){
	if(sBrowser == "IE" && sBrowserVer >= 5.5 && !fContextMenuOpened){
		if(sThumbSelected != AssetID)
			mMouseOut(sThumbSelected);

		var TbSp = document.all("sp_" + AssetID);
		var MenuBtn = document.all("bt_" + AssetID);
		if(TbSp != null && MenuBtn != null){
			TbSp.style.border = "solid #2254B1 1px";
			MenuBtn.src=imgThumMenu.src;
			sThumbSelected = AssetID;
		}

		if(mContextMouseOver.arguments.length > 0){
			if(document.all("clCoD") != null && document.all("clCoDText") != null) {
				document.all("clCoD").style.backgroundColor='white';
				if(fIsOldEditorialContent)
					document.all("clCoDText").style.zIndex = -1;
			}
		}
	}
}

function mThumbHighlight(AssetID){
	var TbSp = document.all("sp_" + AssetID);
	var MenuBtn = document.all("bt_" + AssetID);
	if(TbSp != null && MenuBtn != null){
		TbSp.style.border = "solid #2254B1 1px";
		MenuBtn.src=imgThumMenuHover.src;
		sThumbSelected = AssetID;
	}
}

function mThumbNormal(AssetID){
	var TbSp = document.all("sp_" + AssetID);
	var MenuBtn = document.all("bt_" + AssetID);

	if(TbSp != null && MenuBtn != null){
		TbSp.style.border = "solid white 1px";
		MenuBtn.src=imgThumMnTr.src;
		sThumbSelected = "";
	}
}

function getAxInstallUrl(){
	var iPos = strUrl.indexOf("{0}");
	sTmpURL = strUrl.substring(0, iPos) + "Clipart" + strUrl.substring(iPos + 3, strUrl.length);
	return sTmpURL;
}

function mAddToBasket(AssetID, fSize){
	mSetCookie(AssetCookie, AssetID, true);
	mSetCookie(fSizeCookie, fSize, true);
}

function mRemoveFromBasket(AssetID, fSize){
	mDelItems(AssetID);
	var doc;

	if(document.all){
		doc = document.all["lnkSelectPage"];
	}else if(!document.all && document.getElementById){
		var doc = document.getElementById("lnkSelectPage");
	}

	if(typeof(doc) == "object" && doc != null)
		doc.innerHTML = L_ClipToolBarSelectPage;

}

function mRemoveAllItems(){
	mDeleteCookie(AssetCookie);
	mDeleteCookie(fSizeCookie);
	window.location.href = window.location.href;
}

function mDeleteBasket(){
	mDeleteCookie(AssetCookie);
	mDeleteCookie(fSizeCookie);

	mUpdateBasket();
	mUpdateBasketLink();
}

function m_bItemsSelectedOnThisPage()
{
	if(mNumOfItemsSelectedOnPage() == arrAssetColl.length){
		return true;
	}else{
		return false;
	}
}

function mNumOfItemsSelectedOnPage(){
	var chkCount = 0;
	for (var i=0; i < arrAssetColl.length; i++) {
		eval("var chkAsset = document.frmMedia.cbx_" + arrAssetColl[i]);
		if(chkAsset != null && chkAsset.checked)
			chkCount++;
	}
	return chkCount;
}

function SelectPage(){
	var bUpdateLink = true;
	if(m_bItemsSelectedOnThisPage()){
		m_SlctAllAction = true; 
		for (var i=0; i < arrAssetColl.length; i++) {
			if(chkBxisChecked(arrAssetColl[i])){
				mRemoveFromBasket(arrAssetColl[i], mGetAssetSize(arrAssetColl[i]));
				chkBxUnChecked(arrAssetColl[i]);
			}
		}
		chkSelectPageLink()
		m_SlctAllAction = false;
	}else{
		m_SlctAllAction = true; 
		for (var i=0; i < arrAssetColl.length; i++) {
			if(!chkBxisChecked(arrAssetColl[i])){
				if(!mLimitExceded(mCalcSize() + mChkFileType(mGetAssetSize(arrAssetColl[i])), (mCalcNumItems() + 1))) {
					mAddToBasket(arrAssetColl[i], mGetAssetSize(arrAssetColl[i]));
					chkBxChecked(arrAssetColl[i]);
				}else{
					if(!mSelectionBasketMaxPrompt(arrAssetColl[i]))
					{
						chkBxUnChecked(arrAssetColl[i]);
						bUpdateLink = false;
						break;
					}
				}
			}
		}
		m_SlctAllAction = false;
		chkSelectPageLink()
	}
	mUpdateBasket();
	mUpdateBasketLink();
	mRefreshThumbs();
}

function chkSelectPageLink(){
	var doc;
	if(document.all)
		doc = document.all["lnkSelectPage"];
	else if(!document.all && document.getElementById)
		doc = document.getElementById("lnkSelectPage");

	if(typeof(doc) == "object" && doc != null)
		if(m_bItemsSelectedOnThisPage())
			doc.innerHTML = L_ClipToolBarDeSelectPage;
		else
			doc.innerHTML = L_ClipToolBarSelectPage;
}

function ChkCODChkBoxStatus() {
	if(document.forms[1].length == 1){
		var ChkObj, ChkBxName;
		ChkObj = document.forms["frmMedia"].elements[0];
		ChkBxName = ChkObj.name;
		if(mChkIfExsists(ChkBxName.substring(4, ChkBxName.length)))
			ChkObj.checked = true;
		else
			ChkObj.checked = false;
	}
}

function mGetAssetSize(AssetID){
	for(var i=0; i <=arrAssetColl.length; i++)
		if(arrAssetColl[i] == AssetID)
			return parseInt(arrAssetCollSize[i]);

	return 0;
}

function chkBxChecked(AssetID){
	eval("document.frmMedia.cbx_" + AssetID + ".checked = true;");
}

function chkBxUnChecked(AssetID){
	eval("document.frmMedia.cbx_" + AssetID + ".checked = false;");
}

function chkBxisChecked(AssetID){
	eval("var fChkBxval = document.frmMedia.cbx_" + AssetID + ".checked")
	if (fChkBxval)
		return true

	return false
}

function mCalcSize(fAssumeMPF){

	if ("undefined" == typeof(fAssumeMPF))
		fAssumeMPF = isMPF;

	var itmpTotal = 0;
	fSize = mGetCookie(fSizeCookie);
	if(fSize != "na"){
		afSize = fSize.split(",");
		for(var i = 0; i < afSize.length; i++){
			if(afSize[i].length > 0)
				itmpTotal += mChkFileType(afSize[i], fAssumeMPF);
		}
	}
	return parseInt(itmpTotal + 0.5);
}

function mCalcNumItems(){
	fSize = mGetCookie(fSizeCookie);
	if(fSize != "na"){
		afSize = fSize.split(",");
		return afSize.length;
	}
	return 0;
}

function mCalcSpeed(){
	return 56;
}

function DownloadTime(){
	return (((iSize/(mCalcSpeed()/8))/60) + .1);
}

function mChkFileType(iFileSize, fAssumeMPF){
	var iRealFileSize;

	if ("undefined" == typeof(fAssumeMPF))
		fAssumeMPF = isMPF;

	if(fAssumeMPF)
		iRealFileSize = 0.9765625 * (1.423 * parseInt(iFileSize) + 1);
	else
		iRealFileSize = 0.9765625 * (1.575 + parseInt(iFileSize));

	return parseInt(Math.round(iRealFileSize));
}

function mLimitExceded(iSize, Total){
	if(iSize >= iMaxKB || Total > iMaxClips)
		return true;

	return false;
}

function mChkIfExsists(AssetID){
	var sCookieVal, nPosition, tString;
	sCookieVal = mGetCookie(AssetCookie)

	if(sCookieVal.indexOf(AssetID) >= 0){
		return true;
	}else{
		return false;
	}
}

function mDelItems(AssetID){
var aCookieVal, nPosition
var sAssetID = "";
var sfSize = "";
AssetCookieVal = mStripDelimeter(mGetCookie(AssetCookie));
FSizeCookieVal = mStripDelimeter(mGetCookie(fSizeCookie));

if(AssetCookieVal != "na" && FSizeCookieVal != "na")
{
	aAssetID = AssetCookieVal.split(",");
	afSize = FSizeCookieVal.split(",");

	if(aAssetID.length == 1){
		mDeleteCookie(AssetCookie);
		mDeleteCookie(fSizeCookie);
	}else{
		for(var i = 0; i < aAssetID.length; i++){
			if(aAssetID[i] != AssetID){
				sAssetID += "," + aAssetID[i];
				sfSize += "," + afSize[i];
			}
		}
		mSetCookie(AssetCookie, mStripDelimeter(sAssetID), false);
		mSetCookie(fSizeCookie, mStripDelimeter(sfSize), false);
	}
}
}

function mStripDelimeter(tValue){
var tmpValue = tValue;
if(tmpValue.substring(0,1) == ",")
	tmpValue = tmpValue.substring(1,tmpValue.length);

if(tmpValue.substring(tmpValue.length -1, tmpValue.length) == ",")
	tmpValue = tmpValue.substring(0, tmpValue.length -1);

return tmpValue;
}

function UpdateOption(){
var ThumbsPerPageValue;
var ThumbSizeValue;
var PreviewSizeValue;

for (nCounter = 0;nCounter < document.frmMedia.rdoThumbsPerPage.length;nCounter++){
	if (document.frmMedia.rdoThumbsPerPage[nCounter].checked == true){
		ThumbsPerPageValue = document.frmMedia.rdoThumbsPerPage[nCounter].value;
		break;
	}
}

for (nCounter = 0;nCounter < document.frmMedia.rdoThumnailSize.length;nCounter++){
	if (document.frmMedia.rdoThumnailSize[nCounter].checked == true){
		ThumbSizeValue = document.frmMedia.rdoThumnailSize[nCounter].value;
		break;
	}
}

for (nCounter = 0;nCounter < document.frmMedia.rdoPreviewSize.length;nCounter++){
	if (document.frmMedia.rdoPreviewSize[nCounter].checked == true){
		PreviewSizeValue = document.frmMedia.rdoPreviewSize[nCounter].value;
		break;
	}
}

var exp = new Date();
exp.setDate (exp.getDate() +365);

mSetCookie(ThumbsPerPageCookie, ThumbsPerPageValue, false, exp);
mSetCookie(ThumbSizeCookie, ThumbSizeValue, false, exp);
mSetCookie(PreviewSizeCookie, PreviewSizeValue, false, exp);

history.back(1);
}

function ResetOption(){

for (nCounter = 0;nCounter < document.frmMedia.rdoThumbsPerPage.length;nCounter++){
	if (document.frmMedia.rdoThumbsPerPage[nCounter].value == "12"){
		document.frmMedia.rdoThumbsPerPage[nCounter].checked = true;
		break;
	}
}

for (nCounter = 0;nCounter < document.frmMedia.rdoThumnailSize.length;nCounter++){
	if (document.frmMedia.rdoThumnailSize[nCounter].value == "0"){
		document.frmMedia.rdoThumnailSize[nCounter].checked = true;
		break;
	}
}

for (nCounter = 0;nCounter < document.frmMedia.rdoPreviewSize.length;nCounter++){
	if (document.frmMedia.rdoPreviewSize[nCounter].value == "0"){
		document.frmMedia.rdoPreviewSize[nCounter].checked = true;
		break;
	}
}

var exp = new Date();
exp.setDate (exp.getDate() +365);

mSetCookie(ThumbsPerPageCookie, 12, false, exp);
mSetCookie(ThumbSizeCookie, 0, false, exp);
mSetCookie(PreviewSizeCookie, 0, false, exp);
}
