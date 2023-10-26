
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft SharePoint 2010 - PerformancePoint Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
        <div class="TableOfContents">
            <ol>
               
                <li><a href="#Dates">Suggestion, please automatically work out the dates</a></li>
                <li><a href="#URLChanged">Performance Point 2010 BUGS - it changes my URL!</a></li>
                <li><a href="#Annotation">Love the annotations, but can't find them</a></li>
                <li><a href="#Focus">Deleting should put the focus to the next one (little UI one)</a></li>
                <li><a href="#Checkbox">Turning on checkboxes accidently (little UI one)</a></li>
                <li><a href="#Filterbox">Adding a Web Part  - Filter box please</a></li>
                <li><a href="#PopupForm">Adding a Web Part  - Popup form please</a></li>
                <li><a href="#PrintSingleItem">Help Me Print a Single Item in a List</a></li>
            </ol>
        </div>
        
        <div id="mainContent">
     <ol>
        <li>
          <h2><a name="Dates"></a>Suggestion, please automatically work out the dates</h2>
           <dl class="image">
               <dt><img src="Images\DateOnDashboardDesigner.jpg" alt="The date on the dashboard designer "/>
               <dd>Figure: PerformancePoint Data Connections 'Time' tab is unnecessarily intimidating</dd>
               </dt>
            </dl>         
        </li>
        <li>
         <h2><a name="URLChanged"></a>Performance Point 2010 BUGS - it changes my URL!</h2>
          <p>Is there a workaround to this <span style="color:red">bug</span>?</p>
          <p>
            I paste<br />
               http://adam-sp2010demo/sites/Origin/SiteCollectionImages/_t/home_jpg.jpg <br />
            Changes it to<br />
               http://adam-sp2010demo/sites/Origin/SiteCollectionImages/t/home_.jpg 
          </p>
           <dl class="image">
               <dt><img src="Images\URLBug.jpg" alt="URL Bug"/>
               <dd>Figure: BUG - This is not the URL I pasted </dd>
               </dt>
            </dl>  
            <p><b>The Performance Point 2010 team needs a KB article for this one.<br />
                 Extra info</b></p>  
             <p>
              It happens when you use _ or % in the URL<br />
              I think it is to do with a SQL reserved char issue.<br />
              There is a BUG in the encoding; basically it needs to be stored in a format safe for SQL while retaining the actual content.
             </p> 
             <p>
              I think the URL you enter is being stored in a SQL datatype, most likely a Varchar. <br />
              The Underscore "_" & Percent "%" signs are reserved characters used for wildcard searches. <br />
              Somewhere the URL is being parsed & the wildcard chars are being treated as wildcard chars. 
             </p>
             <p>% is a legal HTTP character, so is a _.</p> 
             <p>It is a bug and needs a work around...</p>   
        </li>
        <li>
          <h2><a name="Annotation"></a>Love the annotations, but can't find them</h2>
           <dl class="image">
               <dt><img src="Images\RedDotComment.jpg" alt="The red dot indicates that there is a comment."/>
               <dd>Figure: That red dot indicates that comments exist. Where are these comments stored? </dd>
               </dt>
            </dl>   
            <dl class="image">
               <dt><img src="Images\ItemLists.jpg" alt="Can't find comments "/>
               <dd>Figure: I can't find where the comments are stored. I expected them to be in one of the lists </dd>
               </dt>
            </dl>
             <dl class="image">
               <dt><img src="Images\AddALink.jpg" alt=" Add a link to open the annotation"/>
               <dd>Figure: Suggestion ?add a link here to open the list that they are stored in </dd>
               </dt>
            </dl> 
        </li>
        <li>
         <h2><a name="Focus"></a>Deleting should put the focus to the next one (little UI one)</h2>
          <p>When you delete the cursor should end up where you expect it to!</p>
          <dl class="image">
               <dt><img src="Images\FocusMove.jpg" alt=" "/>
               <dd>Figure: If you delete 'New Scorecard 4' the focus should just move up one</dd>
               </dt>
            </dl>       
        </li>
        <li>
          <h2><a name="Checkbox"></a>Turning on checkboxes accidently (little UI one)</h2>
          <p>
           I really could not work out why my wizards were gone from Performance Point.<br />
           I was certain I had not changed "anything".
          </p>
          <p>
           After painstakingly retracing all my steps I discovered I must have accidently unchecked this box
          </p>
          <dl class="image">
               <dt><img src="Images\AccidentlyClick.jpg" alt="Accidently click on the blank area, then the checkbox is ticked "/>
               <dd>Figure: Little UI one</dd>
               </dt>
            </dl>    
            <dl class="image">
               <dt><img src="Images\ErrorClick.jpg" alt="Click on the row doesn't work "/>
               <dd>Figure: The crazy thing is, in Word's case above, clicking the row "should" turn the checkbox on and off... but it doesn't!</dd>
               </dt>
            </dl>     
        </li>
        <li>
          <h2><a name="Filterbox"></a>Adding a Web Part  - Filter box please</h2>
          <dl class="image">
               <dt><img src="Images\Filterbox.jpg" alt=" Window 7 - filter feature"/>
               <dd>Figure: Windows 7 is awesome for this one filter feature</dd>
               </dt>
            </dl> 
            <p>I am not a 'browser'... I much prefer to 'filter'. Filter boxes should be a consistently on list boxes in SharePoint </p>
             <dl class="image">
               <dt><img src="Images\NeedFilterbox.jpg" alt="SharePoint needs a filter box "/>
               <dd>Figure: Give a Filter box </dd>
               </dt>
            </dl>     
        </li>
        <li>
          <h2><a name="PopupForm"></a>Adding a Web Part  - Popup form please</h2>
          <p>I agree that too many popup forms are painful... but there is still UI situations where they make it easier for the user.</p>
           <dl class="image">
               <dt><img src="Images\PopupForm.jpg" alt="SharePoint needs a popup form "/>
               <dd>Figure: Adding a webpart should use a popup form... I don't think the 'add' is obvious instantly</dd>
               </dt>
            </dl>  
            <p>Read <a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Do you know to use Popup forms?</a> for more information.</p> 
        </li>
        <li>
          <h2><a name="PrintSingleItem"></a>Help Me Print a Single Item in a List</h2>
            <dl class="image">
               <dt><img src="Images\AddTwoMoreItemsToRightClickMemu.jpg" alt="Add Two More Items To Right Click Memu "/>
               <dd>Figure: This right click menu needs 2 more items</dd>
               </dt>
            </dl> 
            <ul>
              Add 2 menus
               <li>Export item in word</li>
               <li>Print via word</li>               
            </ul>
        </li>
        
    </ol>
  
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    </p>
    </div>
</asp:Content>
