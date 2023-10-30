<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Hosted TFS | SSW Consulting - Sydney, Brisbane, Melbourne" %>
 
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
<img src="Images/thumbs/thumb-vs.jpg" alt="Hosted TFS" class="icon" />
    <h1>SSW TFS Hosting</h1>
    <h2>Save time and money</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="AboutUs"></a>About SSW:</h2>
    <ul>
        <li><a href="#Team">SSW TFS Hosting Team</a></li>
        <li><a href="#Price">Pricing</a></li>
        <li><a href="#OptionalExtras">Optional Extras</a></li>
        <li><a href="#GetStarted">How to Get Started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
            <p>This service is discontinued. See <a href="http://adamcogan.com/2017/04/13/moved-tfs-cloud/ ">Adam's Blog - We moved our TFS to the cloud</a>.</p>
        </div>

    <div class="section">
        <p>
           SSW is proud to announce our Team Foundation Server hosting solution. 
        </p>
        <p>
            Save time and money by using a TFS hosting solution. Let us worry about everything behind the scenes, letting you work on your projects:
        </p>
        <ul>
            <li>No need to purchase hardware</li>
            <li>No need to purchase software or licences</li>
            <li>No need to worry about backups</li>
            <li>No need to worry about server maintenance </li>
            <li>No need to train staff to administer the server</li>
        </ul>
        <p>
            You can read more about TFS and the Application Lifecycle Management process here: <a href="http://www.ssw.com.au/ssw/Consulting/ALM-TFS.aspx">SSW Sydney ALM & TFS Consulting</a>
        </p>
    </div>
    
    <div class="section">
        <h2>
            <a name="Price"></a>Pricing</h2>
      <p>
        There are two different TFS Hosting packages depending on your needs,<strong>TFS Standard</strong>  and<strong> TFS Professional</strong>.
      </p>
     <table class="clsSSWTable data" width="100%">
        <tr style="height:20px">
            <th style="width:40%"></th>
            <th style="width:30%">TFS Standard</th>
            <th style="width:30%">TFS Professional</th>
        </tr>
        <tr style="height:15px">
            <td colspan="3"></td>
        </tr>
        <tr>
            <th colspan="3" style="text-align:center">Basic Features</th>
        </tr>

        <tr>
            <td>Team Project Collections</td>
               <td style="text-align:center">1</td>
               <td style="text-align:center">1</td>
        </tr>
         <tr>
            <td>Team Projects</td>
               <td style="text-align:center">1</td>
               <td style="text-align:center">10</td>
        </tr>
         <tr>
            <td>Free Support Hours per Month</td>
              <td style="text-align:center">1</td>
               <td style="text-align:center">2</td>
        </tr>
         <tr>
            <td>Database Storage</td>
            <td style="text-align:center">2GB</td>
               <td style="text-align:center">8GB</td>
        </tr>
         <tr>
            <td>HTTPS Support</td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
             <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td>Work Items</td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
             <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td>Agile Template</td>
          <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td>Scrum Template (Optional)</td>
             <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
           <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>

         <tr>
            <th colspan="3" style="text-align:center">Advanced Features</th>
        </tr>
          <tr>
            <td>Reporting</td>
          <td style=" text-align:center"><img src="/ssw/images/cross.png" /></td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td>SharePoint Portal</td>
             <td style=" text-align:center"><img src="/ssw/images/cross.png" /></td>
           <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>

         <tr>
            <th colspan="3" style="text-align:center">Extras</th>
        </tr>
          <tr>
            <td>SSW Code Auditor Licence</td>
          <td style=" text-align:center"><img src="/ssw/images/cross.png" /></td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
        </tr>

            <tr>
            <th colspan="3" style="text-align:center">Backup and Security</th>
        </tr>
          <tr>
            <td>Hard Drive Protection</td>
          <td style=" text-align:center">Mirrored (RAID1)</td>
            <td style=" text-align:center">Mirrored (RAID1)</td>
        </tr>
          <tr>
            <td>UPS Power Backup</td>
          <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
            </tr>
               <tr>
            <td>On-Site Backup</td>
          <td style=" text-align:center">Every 3 Hours</td>
            <td style=" text-align:center">Every 3 Hours</td>
        </tr>
          <tr>
            <td>Off-Site Backup</td>
          <td style=" text-align:center">Weekly</td>
            <td style=" text-align:center">Weekly</td>
        </tr>
        <tr>
            <td>Money Back Guarantee</td>
          <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
            <td style=" text-align:center"><img src="/ssw/images/tick.png" /></td>
            </tr>

        <tr>
            <th colspan="3" style="text-align:center">Price</th>
        </tr>
        <tr>
            <td>Each User</td>
          <td style=" text-align:center"><strong>$100 USD per month</strong></td>
            <td style=" text-align:center"><strong>$200 USD per month</strong></td>
            </tr>
     </table>
      <p>
        When you sign up for 6 months we will give you the first month free, so you pay for 5 months, and we give you 6!
      </p>
    </div>
    <div class="section">
        <h2>
            <a name="OptionalExtras"></a>Optional Extras</h2>
        <p>
            Need a little something extra to for fill your Team Foundation Server experience? Let us help.
        </p>

       <table class="clsSSWTable data" width="100%">
        <tr>
            <th colspan="2" style="text-align:center">Build Server</th>
        </tr>
        <tr>
            <td colspan="2">
                Do you want to have daily automated build or some more advanced check in policies like Gated Check-In? Get your own isolated Virtual Machine to do all your builds.
            </td>
        </tr>
        <tr>
            <td style="width:60%">Isolated Virtual Machine</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">FTP Access To Build Server Drop Folder</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">Setup Fee (Once Off)</td>
            <td style="width:40%">$300 USD</td>
        </tr>
          <tr>
            <td style="width:60%">Monthly Fee</td>
            <td style="width:40%">$75 USD per month</td>
        </tr>
       </table>
       <table class="clsSSWTable data" width="100%">
        <tr>
            <th colspan="2" style="text-align:center">Source Code Migration</th>
        </tr>
        <tr>
            <td colspan="2">
                Our consultants can help you migrate your Source Code, Documents and Work Items to TFS, with the least hassle. 
            </td>
        </tr>
        <tr>
            <td style="width:60%">Migration of Source Code (No History)</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">Migration of Documents</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">Migration of Work Items</td>
                  <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
          <tr>
            <td style="width:60%">Price (Once Off)</td>
            <td style="width:40%">$265 USD</td>
        </tr>
       </table>
       <table class="clsSSWTable data" width="100%">
        <tr>
            <th colspan="2" style="text-align:center">ALM Process Consulting</th>
        </tr>
        <tr>
            <td colspan="2">
               Every development shop is a little different. Our TFS/ALM consultants help you implement policies, methodologies and best practices. We can customize TFS process templates and use the best 3rd party tools.
            </td>
        </tr>
        <tr>
            <td style="width:60%">Improve methodologies and practices</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">Learn to use the best 3rd party tools</td>
            <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
         <tr>
            <td style="width:60%">Improve team productivity</td>
                  <td style="width:40%"><img src="/ssw/images/tick.png" /></td>
        </tr>
          <tr>
            <td style="width:60%">More Information</td>
            <td style="width:40%">Read about SSW&#8217;s ALM consulting in detail here <a href="http://ssw.com.au/ssw/Consulting/ALM.aspx">http://ssw.com.au/ssw/Consulting/ALM.aspx</a>, or give us a call</td>
        </tr>
       </table>
       
    </div>
    <div class="section">
        <h2>
            <a name="GetStarted"></a>How To Get Started</h2>
      <p>
        To find out if SSW can help your business, give us a call on +61 2 9953 3000 or contact us by email to get started!
      </p>
    </div>
    
   
</asp:Content>


