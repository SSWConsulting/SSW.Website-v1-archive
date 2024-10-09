<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Windows & Web Apps using Visual Studio.NET 2010" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>
    
            <div id="eventsummary">
                <h1>
                    <img class="thumbnail" alt="course image" src="../images/VS.jpg">
                    <a name="Register"></a>Up and Running on Windows & Web Apps using Visual Studio.NET 2010</h1>
                <ul class="vitals conferenceprice">
                    <li>Dates
                        <ul>
                            <li>Every Thursday<br /> 6PM - 9PM</li>
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
                        <span>11/08 to 08/09 - Part 1<br />22/09 to 20/10 - Part 2</span></strong>
                        <ul>
                            <li style="width:100px;"><span>Book Now</span></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <h1>Overview</h1>
            <p>This course introduces students the Microsoft .NET 3.5 Framework through hands-on exercises and live demos. C# is provided side-by-side giving the students a deeper understanding of the commonalities between the languages. The class examples can be completed in C#. The course provides an introduction to the .NET Framework for students who want to pursue Microsoft certification, specifically MCAD (Microsoft Certified Application Developer).</p>
            <p>At course completion students will be able to:</p>
            <ul>
                <li>Explain the main concepts behind the common language runtime</li>
                <li>Create Windows-based applications </li>
                <li>Create Windows Forms with menus, system and user controls </li>
                <li>Create Web Forms with menus, system and user controls and Web Services</li>
                <li>Create and use components in Windows Forms-based and ASP.NET-based applications</li>
                <li>Use XML Web services in an application</li>
                <li>Create and use classes, interfaces, delegates</li>
                <li>Handle system events and generate custom events</li>
            </ul>
                
            <p>Registration and more details are available via the UTS Programming Short Courses page.</p>

            <h1>Schedule</h1>
            <table class="beautyTable">
                <tr class="odd">
                    <th>
                        Part 1: Developing Windows Applications using Visual Studio .Net (C#)
                    </th>
                    <th>
                        Part 2: Developing ASP.NET Web Applications using Visual Studio .Net (C#)
                    </th>
                </tr>
                <tr>
                    <td>Duration: 5 sessions - 15 hours over 5 weeks</td>
                    <td>Duration: 5 sessions - 15 hours over 5 weeks</td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li><strong>Session 1: Overview</strong>
                                <ul>
                                    <li>Overview of .NET</li>
                                    <li>Managed Objects in the CLR</li>
                                    <li>Reviewing Object Orientation
                                        <ul>
                                            <li>C# concepts</li>
                                            <li>Singleton</li>
                                        </ul>
                                    </li>
                                    <li>The 4 projects</li>
                                    <li>Creating Windows Forms</li>
                                    <li>Opening forms</li>
                                    <li>Event Handlers</li>
                                    <li>Menus</li>
                                    <li>Make a user control</li>
                                </ul>
                            </li>

                            <li><strong>Session 2: Data in Forms</strong>
                                <ul>
                                    <li>LINQ to SQL</li>
                                    <li>DataBinding </li>
                                    <li>DataGrid</li>
                                    <li>Input Validation</li>
                                </ul>
                            </li>

                            <li><strong>Session 3: Usability - Rules to Better Windows Forms</strong>
                                <ul>
                                    <li>Implement FxCop</li>
                                    <li>Implement SSW Code Auditor</li>
                                </ul>
                            </li>

                            <li><strong>Session 4: Deployment and Security of Windows Forms</strong>
                                <ul>
                                    <li>Setting files</li>
                                    <li>ClickOnce</li>
                                    <li>Authentication and Authorisation</li>
                                    <li>Impersonation</li>
                                    <li>Security Attributes</li>
                                    <li>Assembly Strong Naming</li>
                                </ul>
                            </li>
                        </ul>

                        <ul>
                            <li><strong>Session 5: Web Services and Threading</strong>
                                <ul>
                                    <li>Creating Web Services </li>
                                    <li>Consuming Web Services</li>
                                    <li>Background Worker process and Asynchronous programming</li>
                                </ul>
                            </li>
                        </ul>
                    </td>

                    <td style="width: 50%;">
                        <ul>
                            <li><strong>Session 1: Overview</strong>
                                <ul>
                                    <li>Creating Web Forms</li>
                                    <li>Opening pages</li>
                                    <li>Event Handlers</li>
                                    <li>Menus</li>
                                    <li>Make a user control</li>
                                    <li>Master Pages </li>
                                    <li>Web.config </li>
                                    <li>Session/View State </li> 
                                </ul>
                            </li>

                            <li><strong>Session 2: Data in Forms</strong>
                                <ul>
                                    <li>LINQ to SQL</li>
                                    <li>DataBinding </li>
                                    <li>DataGrid</li>
                                    <li>Input Validation</li>
                                </ul>
                            </li>

                            <li><strong>Session 3: Usability - AJAX and other ASP.NET Features </strong>
                                <ul>
                                    <li>Cross Page Post Backs  </li>
                                    <li>Validation Groups  </li>
                                    <li>XML Databinding </li>
                                    <li>URL Rewriting  </li>
                                    <li>Implement AJAX using Microsoft AJAX (formerly ATLAS) </li>           
                                </ul>
                            </li>

                            <li><strong>Session 4: Reporting Services and Web Security </strong>
                                <ul>
                                    <li>RS Capabities</li>
                                    <li>RS Architecture</li>
                                    <li>RS Configuration</li>
                                    <li>Security and authentication in web forms</li>
                                </ul>
                            </li>

                            <li><strong>Session 5: Advanced Topics & Future Technology </strong>
                                <ul>
                                    <li>Generics</li>
                                    <li>Unit Tests </li>
                                    <li>Logging</li> 
                                    <li>Profiling</li>
                                    <li>Visual Studio Team System</li>
                                    <li>WPF, WCF, WWF, Silverlight</li> 
                                </ul>
                            </li>
                    </td>
                </tr>
            </table>

            <h1>Session Dates</h1>
            <h2>Part 1: .NET Winforms</h2>
            <table class="beautyTable">
                <tr class="odd">
                    <td>&nbsp;</td>
                    <td><strong>Date</strong></td>
                    <td><strong>Time</strong></td>
                    <td><strong>Topic</strong></td>
                    <td><strong>Presenters</strong></td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>Thursday<br />
                        11-08-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Overview of .NET</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">2</td>
                    <td>Thursday<br />
                        18-08-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Data in Forms</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">3</td>
                    <td>Thursday<br />
                        25-08-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Usability - Rules to Better Windows Forms</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">4</td>
                    <td>Thursday<br />
                        01-09-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Deployment and Security of Windows Forms</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">5</td>
                    <td>Thursday<br />
                        08-09-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Web Services and Threading</td>
                    <td>Peter Gfader</td>
                </tr>
            </table>
            <h2>Part 2: .NET Webforms</h2>
            <table class="beautyTable">
                <tr class="odd">
                    <td>&nbsp;</td>
                    <td><strong>Date</strong></td>
                    <td><strong>Time</strong></td>
                    <td><strong>Topic</strong></td>
                    <td><strong>Presenters</strong></td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>Thursday<br />
                        22-09-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Overview of .NET</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">2</td>
                    <td>Thursday<br />
                        29-09-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Data in Webforms</td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">3</td>
                    <td>Thursday<br />
                        06-10-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Usability - AJAX and other ASP.NET Features </td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">4</td>
                    <td>Thursday<br />
                        13-10-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Web Security </td>
                    <td>Peter Gfader</td>
                </tr>
                <tr>
                    <td align="center">5</td>
                    <td>Thursday<br />
                        20-09-2011</td>
                    <td>6PM - 9PM</td>
                    <td>Advanced Topics & Future Technology </td>
                    <td>Peter Gfader</td>
                </tr>
            </table>
            <br /><br />
            <h2 class="accordionHeader">System Requirements*</h2>
            <p>* Systems will be provided during the demonstrations that have all necessary software installed.</p>
            <p>Note:</p>
            <div>
                <ul>
                    <li>Bring a USB Key so you can back up your solution to take home from the labs</li>
                    <li>You are welcome to install VS.NET 2010 and SQL Server 2008, but we don&#39;t provide any support </li>
					<li>Downloads for the VS.NET 2010 Release Candidate (RC) can be found on <a href="http://msdn.microsoft.com/en-au/vstudio/dd582936.aspx">msdn.microsoft.com</a></li>
                </ul>
            </div>

            <h2 class="accordionHeader">Instructions for Students: How to log in</h2>
            <ol>
                <li>From the &quot;Session Menu&quot; on the login screen, choose the &quot;Windows XP.NET&quot;session</li>
                <li>Type in your username and password. Your vmware image (session) will start automatically.
				(You can also start it manually by running the command vmware from a terminal window.)</li>
            </ol>
                
            <h2 class="accordionHeader">Resources</h2>
                <ul>
                    <li><a href ="http://www.dymocks.com.au/ProductDetails/ProductDetail.aspx?R=9780596006990&Producode=9780596006990">Programming C#, Fourth Edition Building .NET Applications with C#</a> </li>
                </ul> 

            <h2>Optional (For Beginners)</h2>
                <ul>
                    <li><a href="http://www.amazon.com/4-0-Nutshell-Definitive-Reference-OReilly/dp/0596800959">C# 4.0 in a Nutshell</a></li>
                    <li><a href="http://www.amazon.com/Windows-Forms-Programming-Chris-Sells/dp/0321116208">Windows Forms Programming in C#</a></li>
                    <li><a href="http://www.amazon.com/gp/product/0596510373?ie=UTF8&tag=cinanu-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0596510373">Programming WPF</a></li>
                </ul>

            <h2 class="accordionHeader">Books</h2>
                <ol>
                    <li><a href="http://www.amazon.com/C-4-0-Nutshell-Definitive-Reference/dp/0596800959" >C#&nbsp;4</a>
                     
                    </li>
                    <li><a href="http://www.amazon.com/gp/product/0321658701/ref=s9_simh_gw_p14_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=0QZ979SWNWDTBQPJ42YT&pf_rd_t=101&pf_rd_p=470938631&pf_rd_i=507846">Effective C# - best practices</a></li>
                    <li><a href="http://www.amazon.com/Sketching-User-Experiences-Interactive-Technologies/dp/0123740371">Sketching User experiences - Awesome for UX</a></li>
                    <li><a href="http://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882">Clean code</a></li>
                </ol>

            <h2 class="accordionHeader">Videos and Webcasts</h2>
                <ul>
                    <li><a href="http://www.dimecasts.net/">http://www.dimecasts.net/</a></li>
                    <li><a href="http://www.asp.net/get-started/">http://www.asp.net/get-started/</a></li>
                </ul>

            <h2 class="accordionHeader">Previous Year's Courses</h2>
            <p>2010 / <a href="/ssw/events/2009UTSNET/default.aspx">2009</a> / <a href="/ssw/events/2008UTSNET/default.aspx">2008</a> / <a href="/ssw/events/2007UTSNET/default.aspx">2007</a> / <a href="/ssw/events/2006UTSNET/default.aspx">2006</a> / <a href="/ssw/events/2005UTSNET/default.aspx">2005</a></p>

            <h2 class="accordionHeader">Acknowledgements</h2>
            <p>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=GMH">Greg Harris</a><br>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br />
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Peter Gfader</a><br/>                    
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a><br />
            </p>
            
</asp:Content>
