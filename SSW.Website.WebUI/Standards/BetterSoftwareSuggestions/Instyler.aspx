<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Instyler Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>

 <div class="TableOfContents">
        <ol>
		  <li><a href="#WIXFilesAndVotive">Add support for loose WIX files and Votive</a></li>
		  
        </ol>
</div>
 <div id="mainContent">
 <ol>
	<li>
		<h2><a name="WIXFilesAndVotive"></a> Add support for loose WIX files and Votive</h2>
		   <p>Although Instyler is a fantastic product we can't recommend it until you can have the standard Windows Installer XML (WiX) files under source control. Ideally it should open the standard Votive Visual Studio Project and add any extra settings into it. </p>
		     <dl class="image">
                    <dt>
                        <img src="Images/WIXVotiveFile.JPG" alt="Read the WIX Votive File "/></dt>
               <dd>
                  Figure: Read the standard WIX Votive project files </dd></dl>
        
		   <p>Instyler should have no problem beating the competition as it had the best UI by a mile.</p>
	         <dl class="image">
                    <dt>
                        <img src="Images/InstylerUI.JPG" alt="Instyler UI "/></dt>
               <dd>
                 Figure: Instyler has the friendliest and most feature full UI  </dd></dl> 
            
         <p>Note: Remember we will be doing builds on a build server that does not have Instyler installed!</p>
	</li>

	
</ol>
</div>
     <h2>
        Acknowledgements</h2>
      <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
      </p>
		</asp:content>