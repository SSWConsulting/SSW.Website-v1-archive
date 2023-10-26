<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Up and Running on Managing and Using SharePoint 2010 - First University course in the world on 2010" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>
                
                <div id="eventsummary">
                <h1>
                    <img class="thumbnail" alt="course image" src="../images/icon-SharePoint.jpg">
                    <a name="Register"></a>Up and Running on Managing and Using SharePoint 2010 - First University course in the world on 2010</h1>
                <ul class="vitals conferenceprice">
                    <li>Dates
                        <ul>
                            <li>Every Wednesday<br /> 6PM - 9PM</li>
                        </ul>
                    </li>
                    <li>Fees
                        <ul>
                            <li>$1600</li><br /><br />
                        </ul>
                    </li>
                    <li>Duration
                        <ul>
                            <li>30h total<br />
                            (3h x 10 weeks)</li>
                        </ul>
                    </li>
                </ul>
                <ul class="schedule conference">
                    <li><strong style="width:186px;">UTS City campus<br />
                        <span>10/08 to 07/09 - Part 1<br />21/09 to 19/10 - Part 2</span></strong>
                        <ul>
                            <li style="width:100px;"><span>Book Now</span></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <h1>Overview</h1>                
                <p>This course has a particular emphasis on real world applications and skills. Topics covered include: </p>
                    <ul>
                        <li>What is SharePoint</li>
                        <li>How to install SharePoint Server 2010</li>
                        <li>SharePoint Security</li>
                        <li>SharePoint User Interface</li>
                        <li>SharePoint Document management</li>
                        <li>How to Create a Portal</li>
                        <li>Setting up lists and documents libraries</li>
                        <li>Advanced SharePoint features</li>
                        <li>Migrating content into SharePoint</li>
                        <li>Workflow</li>
                        <li>SharePoint and Search</li>
                        <li>SharePoint Business Data Catalogue</li>
                        <li>SharePoint Administration</li>
                        <li>Form and Excel services</li>
                        <li>Web publishing</li>
                    </ul>
                
                <h2 class="accordionHeader">System Requirements*</h2>
                <p>* Systems will be provided during the demonstrations that have all necessary software installed.</p>
                <p>Note:</p>
                    <ul>
                        <li>Bring a USB Key so you can back up your solution to 
						take home from the labs</li>
                        <li>You are welcome to install VS.NET 2008 and SQL 
						Server 2008, but we don&#39;t provide any support </li>
                    </ul>

                <h2 class="accordionHeader">Instructions for Students: How to log in</h2>
                <ol>
                    <li>From the &quot;Session Menu&quot; on the login screen, choose the &quot;Windows XP.NET&quot;session</li>
                    <li>Type in your username and password. Your vmware image (session) will start automatically.
				    (You can also start it manually by running the command vmware from a terminal window.)</li>
                </ol>
                
                <h2 class="accordionHeader">Resources</h2>
                    <ul>
                       <li><a href="http://www.dymocks.com.au/ProductDetails/ProductDetail.aspx?R=9780596006990&Producode=9780596006990">Programming C#, Fourth Edition Building .NET Applications with C#</a> </li>
                       <li><a href="http://www.dymocks.com.au/ProductDetails/ProductDetail.aspx?R=9780596009496&Producode=9780596009496">Programming Visual Basic</a> </li>
                    </ul> 
                  <h2>Optional (For Beginners)</h2>
                    <ul>
                       <li><a href="http://www.dymocks.com.au/ProductDetails/ProductDetail.aspx?R=9780596007263&Producode=9780596007263"> Visual Basic 2005: A Developer&#8217;s Notebook</a> </li>
                       <li><a href="http://www.dymocks.com.au/ProductDetails/ProductDetail.aspx?R=9780596007997&Producode=9780596007997">Visual C# 2005: A Developer&#8217;s Notebook</a></li>
                    </ul>
                    <br />
                  <h2 class="accordionHeader">Course Resources </h2>
                    <ul>
                        <li><!--<a href="resources.aspx">Lecture Notes</a>-->None at this time</li>
                    </ul>
                <br />
                <h2 class="accordionHeader">Previous Year's Courses</h2>
                <ul>
                    <li><a href="/ssw/events/2009UTSSharePoint/default.aspx">2009</a></li>
                </ul>
                <h2 class="accordionHeader">Acknowledgements</h2>
                <p>
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a><br />
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Jatin Valabjee</a><br />
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
                </p>

</asp:Content>
