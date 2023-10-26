<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>
<%@ Page  MasterPageFile="~/Masters/Default.master" Title="[DECOMMISSIONED] SSW Sydney Consulting - Microsoft Speech Server"  %>


<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>v

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<h2 class="thinner">[DECOMMISSIONED] Manage your Telephony System with Microsoft Speech Server!</h2>
	<table width="100%" border="0" cellspacing="10" cellpadding="5">
		<tr>
			<td>
				<div class="gist">
					<ul>
						<li>Easy to integrate with ASP.NET web application using Speech Application SDK</li>
						<li>Uses SALT which supports XML and HTML and is currently supported by over 70+ industry leading companies</li>
						<li>Highly scalable, from single server configurations to distributed server farm topology</li>
						<li>Combines fully integrated telephony capabilities, speech recognition, and text-to-speech engines</li>
				    </ul>
				</div>
			</td>
			<td>
				<div class="floatRight">
					<div class="infoBox">
						<h4>What is a Speech-Enabled Application?</h4>
						<p>Speech-Enabled Applications provide solutions for a telephony system such as a phone menu system or a multimodal system such as video conferencing.</p>
					</div>
				</div>
			</td>
		</tr>
	</table>
<div id="mainContent">
<table width="100%" border="0" cellspacing="10" cellpadding="5">
  <tr>
    <td valign="top"><img src="../Company/Images/speech_beta.jpg" alt="MSS" width="140" height="100" /><br /><br /></td>
    <td valign="top"><h2 style="margin-top: 0px;">MS Speech Server</h2>
		<div class="floatRight">
			<div class="infoBox">
				<h4>More Information</h4>
				<p><a href="http://www.microsoft.com/en-us/Tellme/default.aspx" class="external" target="_blank">Overview</a></p>
				<p>Features & Benefits</p>
				<p>Minimum Requirements</p>
				<p>FAQ</p>
			</div>
		</div>
	  <p>MSS is built-in with seamless integration to the following:</p>
	  <ul>
	    <li>Telephony Application Services (<b>TAS</b>) components which provide a scalable and fault tolerant SALT application runtime environment that does the following:
	        <ul>
	            <li>Processes application dialogs, call control, speech requests, and call logging</li>
                <li>Interprets SALT-enabled HTML via SALT interpreter</li>
                <li>Coordinates all media processing and speech recognition requests</li>
                <li>Handles call sessions</li>
            </ul>
	    </li>
        <li>Supported Telephony Card / Voice Over Internet Protocol (VoIP) Connection</li>
	    <li>Supported Telephony Boards:
	        <ul>
	            <li>Aculab</li> 
                <li>AudioCodes</li>
                <li>Cantata Technology</li>
                <li>Eicon Networks</li>
                <li>Intel Dialogic</li>
	        </ul>
	    </li>
        <li>Supported Telephony Interface Manager (<b>TIM</b>):
	        <ul>
	            <li>Deals with enabling the Telephony board to communicate with MSS</li>
	            <li>Assigns an incoming call to an available SALT interpreter instance</li>
	            <li>Handles all media processing, such as recording the audio for a telephone call, and playing back prompts</li>
	        </ul>
	    </li>
	    <li>Speech Application Deployment Service (<b>SADS</b>) that provides the following scenario:
	        <ul>
	            <li>Exchange switch (PBX) > supplies telephony board with dialled number > associates the number with the relevant application</li>
	        </ul>
	    </li>
	    <li>Speech Engine Service (<b>SES</b>)
	        <ul>
	            <li>For speech recognition</li>
	        </ul>
	    </li>
	    <li>Standard Web components on server:
	        <ul>
	            <li>IIS</li>
	            <li>.NET Framework</li>
	            <li>Visual Studio.NET development environment for Web Applications (ASP.NET)</li>
	        </ul>
	    </li>
	  </ul>
      <p>Below is the Architecture that MS Speech Server provides for fully integrating a complex system:</p>
      <p>
        <img id="imgMSSArchitecture" src="../Company/Images/MSSArchitecture.jpg" alt="MSSArchitecture" width="577" height="345" />
      </p>
    </td>
  </tr>
</table>
</div>
	Want to know more about how SSW can help you develop your own custom speech and voice solution? <a href="/ssw/Company/ContactUs.aspx">Contact us</a> today.
</asp:content>
