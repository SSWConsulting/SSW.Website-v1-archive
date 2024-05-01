<%@ Page Language="C#" AutoEventWireup="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>SSW Download Redirect</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
  </head>
  <body MS_POSITIONING="GridLayout" stats=1>
<!-- Start of DeepMetrix (.NET) StatScript -->
<script language="javascript">

var DMNETdomain = "";
var DMNETpage = window.location;
var DMNETversion = "86";
var DMNETsendTo = "//www.ssw.com.au/dm.gif?";
var DMNETsession;

function dmneterr(){return true;}

window.onerror=dmneterr;
var s = new Date();

if (navigator.userAgent.indexOf('Mac') >= 0 && s.getTimezoneOffset() >= 720)
  s.setTime (s.getTime() - 1440*60*1000);

var dmnetURL = location.protocol + DMNETsendTo+"v="+DMNETversion+"&vst=1";
var dmnetCookieString = document.cookie.toString();

if(dmnetCookieString.indexOf("_dmnid") == -1)
  {
    DMNETsession = parseInt( Math.random()*1000000 ) + "_" + s.getTime();
    var domStr = "";
    if(DMNETdomain != "")
    {
      domStr = "domain="+ DMNETdomain +";";
    }
    document.cookie = "_dmnid=" + DMNETsession + ";expires=Mon, 31-Dec-2008 00:00:00 GMT;"+domStr+"path=/;";
  }
dmnetCookieString = document.cookie.toString();
if(dmnetCookieString.indexOf('_dmnid') == -1)
  {
    DMNETsession = "";
  }
else
  {
    if(dmnetCookieString.indexOf(';') == -1)
      dmnetCookieString = dmnetCookieString.replace(/_dm/g, ';_dm');

    var start = dmnetCookieString.indexOf("_dmnid=") + 7;
    var end = dmnetCookieString.indexOf(";",start);

    if (end == -1)
      end = dmnetCookieString.length;
    DMNETsession = unescape(dmnetCookieString.substring(start,end));
  }
dmnetURL += "&id="+DMNETsession+"&url="+escape(DMNETpage) + "&ref="+escape(document.referrer)+"&lng=" + ((!document.all ||  navigator.userAgent.match('Opera')) ? navigator.language : navigator.userLanguage) + "&tz=" + (Math.round(new Date('dec 1, 2002').getTimezoneOffset()/60)*-1);
if(screen)
  dmnetURL += "&scr=" + escape( screen.width + "x" + screen.height + " " + screen.colorDepth + "bpp" );

dmnetURL += "&rnd=" + new Date().getTime();

if(document.layers)
{
  document.write("<la"+"yer name=\"DMStats\" visibility=hide><img src=\""+dmnetURL+"\" height=1 width=1></la"+"yer>");
}
else
{
  document.write("<di"+"v id=\"DMStats\" STYLE=\"position:absolute;visibility:hidden;\"><img src=\""+dmnetURL+"\" height=1 width=1></di"+"v>");
}

</script>
<!-- End of DeepMetrix (.NET) StatScript -->
<script runat="server">
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        '/ssw/Download/GetDownloadURL.aspx?DownloadID
        If Not Page.Request.QueryString("DownloadID") Is Nothing Then
            Page.Response.Redirect("/ssw/Download/GetDownloadURL.aspx?DownloadID=" + Page.Request.QueryString("DownloadID"))
        End If
    End Sub
</script>

    <form id="Form1" method="post" runat="server">

    </form>

  </body>
</html>
