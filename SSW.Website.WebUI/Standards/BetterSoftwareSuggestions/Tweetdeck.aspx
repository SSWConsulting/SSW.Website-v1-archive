
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Tweetdeck Suggestions" %>
    
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b');return true;"  
onmouseout="javascript:clearStatus(); return true;" > Let us know
 </a> what you think.</p>
    
        <div class="TableOfContents">
            <ol>
               
                <li><a href="#WorkOffline">Make it work offline</a></li>
                <li><a href="#RemoveButton">Remove unnecessary button</a></li>
                <li><a href="#RefreshButton">Make the 'refresh' button green</a></li>
                <li><a href="#Settings">Suggestions for Settings</a></li>
            </ol>
        </div>
        
        <div id="mainContent">
     <ol>
        <li>
          <h2><a name="WorkOffline"></a>Make it work offline</h2>
           <dl class="image">
               <dt><img src="Images\OfflineWork.jpg" alt="It doesn't support offline work."/>
               <dd>Figure: I am on a plane and want to read offline</dd>
               </dt>
            </dl>         
        </li>
        <li>
          <h2><a name="RemoveButton"></a>Remove unnecessary button</h2>
            <dl class="image">
               <dt><img src="Images\UnnecessaryButton.jpg" alt="The unnecessary button."/>
               <dd> Figure: The red cross does the same job</dd>
               </dt>
            </dl>  
        </li>
        <li>
         <h2><a name="RefreshButton"></a>Make the 'refresh' button green</h2>
           <dl class="image">
               <dt><img src="Images\RefreshButton.jpg" alt="The refresh button looks weird."/>
               <dd> Figure: make this button consistent with the button in IE</dd>
               </dt>
            </dl> 
        </li>
        <li>
          <h2><a name="Settings"></a>Suggestions for Settings</h2>
         <ul>
             Improve Settings
           <li>Rename from "Settings" to "Options" (then it is consistent with the common Tools | Options</li>
           <li>Change the horrible default on 'Press Enter to Send an Update' to False<br />
              PS: Better option to ask them after they press 'Enter' for the first time
           </li>
           <li>Tell me what the keyboard shortcuts are <br />
               PS: Better would be to move to their own group
            </li>
            <li>Add a group "Feedback" with an email address </li>
            <li>Add a group "About" with the version number </li>
         </ul>
           <dl class="image">
               <dt><img src="Images\Settings.jpg" alt="Things need to be fixed"/>
               <dd>Figure: 5 things to fix</dd>
               </dt>
            </dl> 
         
        </li>
        
    </ol>
  
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    </p>
</asp:Content>
