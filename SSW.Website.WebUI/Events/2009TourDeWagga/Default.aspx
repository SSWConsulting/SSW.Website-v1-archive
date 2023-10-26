<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Tour De Wagga" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Tour De Wagga - Bike Trip to Wagga Wagga</h1>
    <h2>SQL Code Camp October 5 Day Detox .NET/SharePoint/SQL Bike Trip</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="featureimage" runat="server">
    <img src="../images/header_TourDeWagga.jpg" height="200" width="799" alt="Tour De Wagga" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="index" runat="server">    
	<h2>Tour De Wagga:</h2>
    <ul>
        <li><a href="#dates">Dates</a></li>
        <li><a href="#maps">Maps</a></li>
        <li><a href="#required">Required</a></li>
        <li><a href="#included">Included</a></li>
        <li><a href="#registration">Registration</a></li>
        <li><a href="#agenda">Agenda</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="maincontentFull" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
    </p>
    <p>Tour de Wagga is an annual bike ride from Sydney to Wagga and takes place during the five days before the SDU SQL Code Camp. Participants, in addition to training the body, train the mind in the latest Microsoft technologies in an entertaining way with a group of like-minded geeks.</p>
	<div class="section">          
        <ul class="benefits">
            <li>Get healthy ?Detox with no junk</li>
            <li>Get fit - lots of exercise</li>
            <li>Get smart - lots of learning</li>
        </ul>
    </div>
    
    <div class="section">   
    <h1><a name="dates"></a>Dates</h1>
        <ul>
            <li>Tour De Wagga - October 5th?th 2009</li>
            <li>SQL Code Camp - October 10th-11th 2009 </li>
            <li>.NET Code Camp - April 2010</li>
        </ul>
    </div>
    
    <div class="section">   
    <h1><a name="maps"></a>Maps</h1>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga.jpg"/>
            </dt>
            <dd>
            Figure: Can you ride from Sydney to Wagga Wagga?
            </dd>
        </dl>
        
        <p><a href="DailyBreakdown.aspx">See Daily Breakdown</a></p>
        
    </div>
    
    <div class="section"></div>
    
    <div class="section">   
    <h1><a name="required"></a>Required</h1>
        <ul>
            <li>Attend a preparation half day ?“fail to plan, plan to fail?/li>
            <li>A good quality bike</li>
            <li>Basic fitness</li>
            <li>iPod</li>
        </ul>
    </div>
    
    <div class="section">   
    <h1><a name="cost"></a>Cost</h1>
        <p>$500 + GST</p>
        <small>*Accommodation extra</small>
    </div>
    
    <div class="section">   
    <h1><a name="included"></a>Included</h1>
        <ul>
            <li>Safety vehicle travelling behind</li>
            <li>Pit crew to help with breakdowns</li>
            <li>We carry your gear (computer, luggage)</li>
            <li>Training as you ride - Range of podcasts provided to listen too</li>
            <li>Tests to check you were listening</li>
            <li>Discounted/organised accommodation</li>
            <li>Nightly presentations on range of topics (see below)</li>
            <li>Fun</li>
            <li>Great company / networking</li>
            <li>Sense of achievement</li>
            <li>Certificate</li>
            <li>Plus a great weekend at the SQL Code Camp learning about SQL Server</li>
        </ul>
    </div>
    
    <div class="section">
    <h1><a name="registration"></a>Registration</h1>
        <p><a href="http://www.ssw.com.au/ssw/Shop/BasketInsert.aspx?ProductID=TdeW09">Register now</a> for the Tour de Wagga*</p>
        <small>*NOTE: Registration for the Tour de Wagga does NOT cover registration fees for the SDU Code Camp</small>
    </div>
    
    
    <div class="section">   
    <h1><a name="covered"></a>What's covered</h1>
        <ul>
            <li>.NET 3.51 + 4.0 </li>
            <li>SharePoint 2007 + 2010</li>
            <li>CRM 4</li>
            <li>VSTS and TFS 2008 + 2010</li>
        </ul><br />
         <p>Register for the
            SDU Code Camp
            <img src="/ssw/Images/LeaveSite.gif" width="17" height="11" alt="leave site" />
             separately.</p>
    </div>
    
    <div class="section">   
    <h1><a name="agenda"></a>Agenda</h1>
        
        <table class="outline">
            <tbody>
            <tr>
                <th scope="row"><strong>Time</strong></th>
                <th scope="row"><strong>Activity</strong></th>
            </tr>
            
            <tr>
                <td>08:00AM - 09:00AM</td>
                <td>Breakfast</td>
            </tr>
            
            <tr>
                <th scope="row"></th>
                <th scope="row"></th>
            </tr>
            
            <tr>
                <td>09:00AM ?10:30AM</td>
                <td>Riding</td>
            </tr>
            
            <tr>
                <td>10:30AM ?11:00AM</td>
                <td>Test and Food*</td>
            </tr>
            
            <tr>
                <td>11:00AM ?12:30PM </td>
                <td>Riding</td>
            </tr>
            
            <tr>
                <th scope="row"></th>
                <th scope="row"></th>
            </tr>
            
            <tr>
                <td>12:30PM ?01:30PM </td>
                <td>Lunch*</td>
            </tr>
            
            <tr>
                <th scope="row"></th>
                <th scope="row"></th>
            </tr>
            
            <tr>
                <td>01:30PM ?03:00PM</td>
                <td>Riding</td>
            </tr>
            
            <tr>
                <td>03:00PM ?05:00PM</td>
                <td>Relax*</td>
            </tr>
            
            <tr>
                <td>05:00PM ?06:00PM</td>
                <td>Daily Presentation</td>
            </tr>
            
            <tr>
                <th scope="row"></th>
                <th scope="row"></th>
            </tr>
            
            <tr>
                <td>06:00PM ?07:30PM</td>
                <td>Dinner*</td>
            </tr>
            
            <tr>
                <td>07:30PM ?close</td>
                <td>Free time / Networking</td>
            </tr>
            </tbody>
        </table>
        <p><small>*If you're ahead of schedule you’ll have time to return calls</small></p>
        
        <p><small><strong>DISCLAIMER:</strong> SSW makes every effort to guarantee the accuracy of information contained within this site, it accepts no liability for any inaccuracies. Participant assumes all risk of use, damage, or injury. You agree that we have no liability for any damages. We are not liable for any consequential, incidental, indirect, or special damages. You indemnify us for claims caused by you.</small></p>
    </div>
</asp:Content>
