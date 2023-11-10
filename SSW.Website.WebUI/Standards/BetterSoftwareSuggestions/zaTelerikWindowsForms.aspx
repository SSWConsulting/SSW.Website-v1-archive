<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Telerik Windows Forms Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')"> Let us know</a> what you think.</p>
    
    <div class="TableOfContents">
        <ol>
            <li><a href="#IdentifyFilters">Help me identify what filters I have set on my grid</a></li>
            <li><a href="#FindSampleCode">Help me find sample code to do common things</a></li>
            <li><a href="#DataLoss">Help me not have Data loss - please save on each green run '>" </a></li>
            <li><a href="#TextBeHidden">(little one) Help me know about the great debugger </a></li>
            <li><a href="#VersionUpdate">Rich client software comes with a responsibility to automatically update your software </a></li>
            <li><a href="#TransferToExcel">Testers need to debug #0 – Fix the Copy and Paste to Excel </a></li>
        </ol>
    </div>
   
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="IdentifyFilters"></a>Help me identify what filters I have set on my grid</h2>
                <p>In the RadGrid, when a column has been filtered, the indicator is too subtle and is hard to see. The filter icon should be filled with a more solid colour so it can be identified at a glance.</p>
                <p>Plus, the default out of the box experience should be "Black"</p>
                <dl class="image">
                    <dt><img src="Images/identify-filters.jpg" alt="The coloured filter icon on the grid is too subtle and is difficult to identify at a glance. Please make it completely black"/></dt>  
                    <dd>Figure: The coloured filter icon on the grid is too subtle and is difficult to identify at a glance. Please make it completely black</dd>
                </dl>
            </li>

            <li>
                <h2><a name="FindSampleCode"></a>Help me find sample code to do common things</h2>
                <p>I believe the RADGrid needs a sample code portal to show common things.</p>
                <p>Here is an example of something that finding documentation is extremely hard:</p>
                <dl class="code">
                    <dt>
                    <pre>
        private void radGVOptionalFiltering_MouseClick(object sender, MouseEventArgs e)
        {
            if (radGVOptionalFiltering.CurrentRow == null)
                return;

            GridViewRowInfo Row = radGVOptionalFiltering.CurrentRow;
            if (Row.HierarchyLevel == 1) // Top Level
                Row.IsExpanded = !Row.IsExpanded; // Toggle the expanded property
        }
                    </pre>
                    </dt>
                    <dd>Figure: The code to have the sub items with children expand in one click (rather than 4 clicks)</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/optionalFiltering.jpg" alt="With that code clicking on a row can be done in one click" /></dt>
                    <dd>Figure: With that code clicking on a row can be done in one click</dd>
                </dl>
            </li>
            <li>
              <h2><a name="DataLoss"></a>Help me not have Data loss - please save on each green run '>"</h2>
                <p>
                  Get your test working beautifully <br />
                    Run it<br />
                    Have a Blue Screen of Death (aka PC crashes)<br />
                    Restart PC<br />
                    Open VS 2010<br />
                    It asks to recover, I say "yes?<br />
                    And all my tests are lost!!!!               
                </p>
                <dl class="image">
                    <dt><img src="images/SaveTests.jpg" alt="Save all the tests" /></dt>
                    <dd>Figure: Save tests on each green run ">"</dd>
                </dl>
            </li>
             <li>
               <h2><a name="TextBeHidden">(little one) Help me know about the great debugger</a></h2>
             <p>When red have the hover text "Double click on red cross for help in debugging" on the *whole* record<br />
                And even better add a right click menu "Open Debugger"
            </p>
            <dl class="image">
                    <dt><img src="images/TextHidden.jpg" alt="Stuck on Step 5" /></dt>
                    <dd>Figure: I am now stuck on Step5 and I have no idea why - tell me about your great debugger</dd>
                </dl>
             </li> 
             <li>
               <h2><a name="VersionUpdate">Rich client software comes with a responsibility to automatically update your software</a></h2>
               <dl class="image">
                    <dt><img src="images/VersionUpdate.jpg" alt="The version should be automatically updated. " /></dt>
                    <dd>Figure: Are you ever running an old version of Chrome or TweetDeck? They always are proactive and get you on the latest version.</dd>
                </dl>
                Please read our rule about <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx">version update</a>.           
             </li>     
             <li>
               <h2><a name="TransferToExcel">Testers need to debug #0 – Fix the Copy and Paste to Excel</a></h2>
                <dl class="image">
                    <dt><img src="images/CopyPasteBug.jpg" alt="This is a bug. " /></dt>
                    <dd>Figure: Copying and Pasting to Excel does not work at all</dd>
                </dl>
                <ul>
                    Continued... After that I want:
                  <li> I also want <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#TesterDebug">Testers need to debug #1 – but they are *not* going to install and use some diff tool</a></li>
                  <li>And Testers need to debug #2 – sometimes they will want to compare 2 tests</li>
                </ul>
                <p>Note: Also requested in <a href="#TransferToExcel">Telerik Test: Testers need to debug #0 – Fix the Copy and Paste to Excel</a></p>
             </li>  
        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
    
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /></p>
</asp:Content>
