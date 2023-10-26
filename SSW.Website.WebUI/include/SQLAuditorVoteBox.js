var processingText = "<img src=/ssw/images/process.gif align=absmiddle />&nbsp; Processing...";
var webServicesFaildText = "Sorry, The server is busy now. Try again later please."

function PreLoad(ControlID)
{
     var tblContent;
     tblContent = document.all(ControlID+"DivContent").innerHTML;
	 document.getElementById(ControlID+"tblContent").style.display= "none";
     document.all(ControlID+"DivContent").innerHTML = processingText;
     self.setTimeout(function(){HandleTimeOut(ControlID,tblContent)}, 30000); 
}

function HandleTimeOut(ControlID,tblContent)
{
    if((document.all(ControlID+"DivContent").innerHTML == processingText)||(document.all(ControlID+"DivContent").innerHTML == webServicesFaildText))
     {
         if(tblContent.indexOf(webServicesFaildText) == -1)
         {
           document.all(ControlID+"DivContent").innerHTML = tblContent + "<br />" + webServicesFaildText;
         }
         else
         {
           document.all(ControlID+"DivContent").innerHTML = tblContent;
         }
     }
}

function HandlePostback(result, context)
{
    var sArray = new   Array(); 
    sArray=result.split("|"); 
    if(sArray[0] != "")
    {
        FormatControl(sArray[0],sArray[1]);
    }
    else
    {
        location.href=sArray[1];
    }
}

function FormatControl(resultData,ControlID)
{
    document.all(ControlID+"DivContent").style.width=760;
    document.all(ControlID+"DivContent").innerHTML= resultData;
}
