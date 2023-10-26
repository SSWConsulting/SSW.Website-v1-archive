<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="WebMessageBox.ascx.cs" Inherits=".WebMessageBox" %>


<h2 id="MsgboxTitleBarText">
    <span id="Content_maincontentFull_ctl00_lblHeader">
        <asp:Label ID="lblHeader" runat="server"></asp:Label>
    </span>
</h2>

<div class="greybox">
    <%--<img id="Content_maincontentFull_ctl00_ImageError" class="error" src="/ssw/Images/ErrorMessage/error.png">--%>
    <asp:Image runat="server" ID="MessageImage" CssClass="error" />
    <p>
        <asp:Label ID="lblText" runat="server"></asp:Label>
</div>
<!--Change it to use JQuery
	<script language="Javascript">
	document.all("MsgboxTitleBarText").style.top = (parseInt (document.all("MsgboxTitleBarText").style.top) + parseInt (document.all("MsgboxTitleBarBackground").style.height)) + "pt";
	document.all("MsgboxTitleBarText").style.zIndex = (parseInt (document.all("MsgboxTitleBarBackground").style.zIndex) + 1);
	</script>
-->
<script language="Javascript" type="text/javascript">
    var sTop = parseInt($("#MsgboxTitleBarText").css("top")) + parseInt($("#MsgboxTitleBarBackground").css("height"));
    $("#MsgboxTitleBarText").css("top", sTop + "pt");
    $("#MsgboxTitleBarText").css("zIndex", parseInt($("#MsgboxTitleBarBackground").css("zIndex")) + 1);
</script>
