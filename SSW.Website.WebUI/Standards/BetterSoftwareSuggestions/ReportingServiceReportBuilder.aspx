<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft SQL Reporting Services Report Builder 2.0 Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    
            <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
            style="width: 100%">
            <tr>
                <td>
                    <b> Microsoft Report Builder 2.0 Suggestions  <br />
                    </b>
                    <ol>
                        <li><a href="#copybackground">Copy text background color</a></li>	
                        <li><a href="#showhtml">View html source </a></li>	
					</ol>
                </td>
            </tr>
        </table>
        <h2>
            Microsoft Report Builder 2.0 Suggestions   </h2>     
<ol>
 <li>
    <h2>
        <a name="copybackground"></a>Copy text background color</h2>
        <p>
            We suggest to add a feature of supporting copying the text background color (yellow in the image).
        </p>
        <dl class="image">
                    <dt>
                        <img src="Images/ReportBuilder_Copy.JPG" alt="Copy text background color"/>
                    </dt> 
                    <dd>
                    Figure: Copy text background color
                    </dd>
                </dl>
    
 </li>
  <li>
    <h2>
        <a name="showhtml"></a>View html source
    </h2>
    <p>
        Give us a right click option "View HTML" (so I we can manually modify it)
    </p>
 </li>
</ol>

        <h2>Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p> 
</asp:Content>