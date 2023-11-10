<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft ASP.NET Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label><p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
        Indicates important rule</p>
    <p>
        <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
            style="{width: 100%}">
            <tr>
                <td>
                    <ol>
                        <li><a href="#MessageBox">Why does every web application have a different messagebox 
                            implementation?</a></li>
                        <li><a href="#DrillThroughControl">Add drill through control</a></li>
                        <li><a href="#CommentControl">Add new control in the toolbox "Comment"?</a></li>
                        <li><a href="#VotingControl">Add new control in the toolbox "Voting"?</a></li>
                        <li><a href="#StateAndCountryControl">Need State + Country ASP.NET control in the box</a></li>
                    </ol>
                </td>
            </tr>
        </table>
        <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="MessageBox"></a>Why does every web application have a different 
                    messagebox implementation? </h2>
                <p>
                    Most apps use Alert boxes, <a href="/ssw/kb/KB.aspx?KBID=Q1014943">we recommend an ASP.NET
                        User Control</a>. ASP.NET should come with a Messagebox you can drag on in the
                    Toolbox. The best example they could follow would be the Microsoft CRM example.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="images/SuggestionASPNET_MessageBox.gif" border="0" /></dt>
                    <dd>
                        Figure: Messagebox in Microsoft CRM</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="DrillThroughControl"></a>
                    Add drill through control
                </h2>
                <p>
                    In some cases, a paragraph may contain too many words. This will affect look and feel of the page. So we 
                    recommend to add an ASP.NET User Control. With it, we can define the max length of text, and when it is longer than we expect, this control
                    can add '...' at the end of the text. When your mouse moves over it, you can view the whole content.<br />
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="images/ASPNET_DrillThrough.jpg" border="0" />
                    </dt>
                    <dd>
                        Figure: the similar control in Performance Point Server - DashBoard Design.
                    </dd>
                </dl>
            </li>
            
            <li>
                         <h2>
                    <a name="CommentControl"></a>
                   Add new control in the toolbox "Comment"?
                </h2>                
                
                a.	it would use the provider model, so we could change the backend  <br />    
            
                b.	it would give us something like this                             <br />         
                
                <dl>
                    <dt>
                        <img src="images/BlogEngine.jpg" border="0" />
                    </dt>
                    <dd>
                        Figure: The Website design with the Comment control</dd> 
                </dl>         
                </li>
                <br />
                
                <li><h2><a name="VotingControl"></a>Add new control in the toolbox "Voting"? </h2> 
               
                a.	it would use the provider model - so we could change the backend  <br />    
            
                b.	it would give us something like this                              <br />
                <dl>
                    <dt>
                        <img src="images/BlogEngine_1.jpg" border="0" />
                    </dt>
                    <dd>
                        Figure: The Website design with the Voting control</dd>
                               </dl>                        
            </li> 
            <li>
              <h2><a name="StateAndCountryControl"></a>Need State + Country ASP.NET control in the box</h2>
              <p>I always see the State and Country being done differently. It would save developer time and give users a consistent user interface.</p>
              <ul>
               Most web sites would use it at least once and it needs to:
               <li>Include all the data for all countries</li>
               <li>Use Ajax to repopulate when the country changes</li>
               <li>Give an option to put country first (the logical data entry order)</li>
              </ul>
               <dl>
                    <dt>
                        <img src="images/StateAndCountryControl.jpg"  alt="We need a control to add state and country."/>
                    </dt>
                    <dd>
                        Figure: Give a control to add State and Country – that includes the data and the ajax populating</dd>
                </dl>
            
            </li>
            <p>
             Many pages on the web could benefit from the Comment and Voting controls &#8211; at the moment only blogs generally have this.
                And many development projects need common CMS type functionality.

                </p>               
        </ol>
        </div>
        <h2>
             Acknowledgements </h2>   
             <p>  
              <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
             </p>
          
</asp:Content>
