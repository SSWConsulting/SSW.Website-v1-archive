<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Utility to Automate your Code Reviews" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="CODAUD" CatID="10DOTNET"
        DownloadID="CA" UserGuide="UserGuide.aspx" Rules="../Standards/Default.aspx"
        Home="Default.aspx" BoxShotPath="/ssw/CodeAuditor/Images/productBox_CodeAuditor.jpg"></SSW:ProductPageSideBar>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <h2>Welcome Practical Web Projects Readers</h2>
    <h3>Congratulations, you are eligible for a FREE copy of SSW Code Auditor.</h3>

    <p>
        Here is a list of instructions to follow in order to unlock you FREE copy 
	of SSW Code Auditor!
    </p>
    <p>
        Firstly install the program, when running SSW Code Auditor for 
			the first time, a screen like this should appear.
    </p>
    <ul>
        <li>Click on the Register now button</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg1.gif" alt="" width="600" height="512">
    </p>
    <ul>
        <li>Now Select the register over the web option, then press Next</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg2.gif" alt="" width="600" height="512">
    </p>
    <ul>
        <li>Select New Client, then enter your email address and press 
				Next</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg3.gif" alt="" width="600" height="512">
    </p>
    <ul>
        <li>Enter in all your details and a password which you will need 
				later, then press Next</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg4.gif" alt="" width="600" height="512">
    </p>
    <ul>
        <li>Enter in all your details, make sure your email address is 
				correct, then press Next</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg5.gif" alt="" width="600" height="512">
    </p>
    <ul>
        <li>Select you would like to pay by cheque</li>
        <li>In the notes field type this code 'Special Offer 
				SWP-AD122004'</li>
    </ul>
    <p>
        <img border="0" src="Images/Reg6.gif" alt="" width="600" height="512">
    </p>

</asp:Content>
