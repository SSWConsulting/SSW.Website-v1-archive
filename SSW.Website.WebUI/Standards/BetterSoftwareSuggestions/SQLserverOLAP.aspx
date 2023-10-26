<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft SQL Server OLAP Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#CubeComparer">Is there a cube comparer? </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="CubeComparer"></a>Is there a cube comparer? </h2>
                <p>                
                 Wish there was a cube comparer<br />
                 (Did Microsoft release 2 identical cubes with different names?)
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/LookForDifferences.JPG" alt="Make the difference visually "/></dt>
                        
                    <dd>
                        Figure: I am trying to see if there are any differences, so I am doing it visually :-( </dd></dl>
                  <dl class="image">
                    <dt>
                        <img src="Images/CompareOLAPDatabases.JPG" alt="Compare OLAP Databases"/></dt>
                        
                    <dd>
                        Figure:  I wish there was a right click "Compare OLAP Databases" </dd></dl>                      
            </li>
            

        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>
