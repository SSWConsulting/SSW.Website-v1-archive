<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master" title="SSW Microsoft Query Designer Suggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <br />
    <div class="TableOfContents">
       
        <ol>
            <li><a href="#QryDesner"> Highlight the current field in yellow in the &quot;Diagram Pane&quot;</a> </li>
        </ol>
       
    </div>
    
    <div id="mainContent"> 
      <ol>
            <li>
              <h2>  <a name="QryDesner"></a> <p class="MsoNormal" style="font-size: small; font-weight: bold">
                    Highlight the current field in yellow in the &quot;Diagram Pane&quot;</p></h2>
                                <p class="MsoNormal">
                                    Highlight the current field in yellow in the &quot;Diagram Pane&quot; (aka Query By Design 
                                    window) when you select a row in the &quot;Grid Pane&quot; it would be so useful when you 
                                    are working on an unfamiliar database schema.</p>
                            </li>
        </ol>
        <dl class="image">
            <dt>
                <img src="Images/QueryDesigner.JPG" alt="The message when loss network" 
                    style="width: 1301px"/></dt>
            <dd>
                        Figure: The Diagram Pane without any highlights</dl>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">tristan kurniawan</a>
    </p>
</asp:Content>
