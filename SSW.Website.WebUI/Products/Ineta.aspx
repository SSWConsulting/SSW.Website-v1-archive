

<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Welcome INETA APAC User Group Members"  %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				

	
<a name="overview"></a>
		<SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="CODAUD" CatID="10DOTNET" DownloadID="CA" UserGuide="/ssw/CodeAuditor/UserGuide.aspx">
		</SSW:ProductPageSideBar>
			<p>
				<img src="../CodeAuditor/Images/CodeAuditorLogo.gif" alt="Code Auditor Logo" width="195" height="82" style="padding-right: 15px;">
				<img src="../LinkAuditor/Images/LinkAuditorLogo.gif" alt="Link Auditor Logo" width="179" height="82">
			</p>
			<p><b>Congratulations, you are eligible for a FREE 
			copy of SSW Code Auditor and SSW Link Auditor.</b></p>
	
	<p>Here is a list of instructions to follow in order to unlock you FREE copy 
	of SSW Code Auditor and SSW Link Auditor!</p>
			<p>When running SSW Code Auditor or SSW Link Auditor for 
			the first time, a screen like this should appear.</p>
			<ul>
				<li>Click on the Register now button</li>
			</ul>
			<p><img border="0" src="Images/Reg1.gif" alt="Register Now" width="450" height="384"></p>
			<ul>
				<li>Now Select the register over the web option, then press Next</li>
			</ul>
			<p><img border="0" src="Images/Reg2.gif" alt="Register over the web" width="450" height="384"></p>
			<ul>
				<li>Select New Client, then enter your email address and press 
				Next</li>
			</ul>
			<p><img border="0" src="Images/Reg3.gif" alt="New Client" width="450" height="384"></p>
			<ul>
				<li>Enter in all your details and a password which you will need 
				later, then press Next</li>
			</ul>
			<p><img border="0" src="Images/Reg4.gif" alt="Registration-Enter details" width="450" height="384"></p>
			<ul>
				<li>Enter in all your details, make sure your email address is 
				correct, then press Next</li>
			</ul>
			<p><img border="0" src="Images/Reg5.gif" alt="Enter Email and confirm" width="450" height="384"></p>
			<ul>
				<li>Select you would like to pay by cheque</li>
				<li>In the notes field type the code provided to you in your 
				User Group Kit.</li>
				<li>Then press next and you should receive your Unlock Key in 
				the next two days.</li>
			</ul>
			<!--p><img border="0" src="Images/Reg7.gif" alt="You will recieve the unlock key in 2 days time" width="450" height="376"></p!-->
			<p>We really hope you enjoy using this program and always welcome 
			feedback. <br>
			You can send feedback to 
			<a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Code Auditor Giveaway',this)"  category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer" >696e666f72407373772e636f6d2e6175 </a>
			</p>
		</asp:content>