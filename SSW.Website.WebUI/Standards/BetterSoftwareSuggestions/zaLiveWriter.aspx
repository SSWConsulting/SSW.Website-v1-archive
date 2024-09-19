<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Windows LiveWriter Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
            <li><a href="#CheckWords">Help me use the right words </a></li> 
            <li><a href="#CancelPendingPost">Help me to cancel a pending blog post.</a></li>          
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="CheckWords"></a>
              Help me use the right words </h2>
              <p>
                There are many things that look on in Windows Live Writer, but Word picks up without any problems.<br />
                Take the Sentence above for example. How does that look in Word?
              </p>
               <dl class="image">
                     <dt>
                        <img src="images/PickupWrongWords.JPG" alt="can it pick up the wrong words?" />
                     </dt>
                      <dd>
                        Figure: That's not good
                      </dd>
                </dl>
                <p>Windows Live Writer should provide the option to use the Word spelling and grammar engine.</p>               
            </li>
          <li>
            <h2><a name="CancelPendingPost">Help me to cancel a pending blog post.</a></h2>
             <ol>
              <li>Include a Cancel button so I can cancel my post (I had to cancel by killing the application in Task Manager)</li>
              <li>Add some indicator text that counts down the time remaining<br />
                  e.g. "Unable to connect – 15 seconds"... then show "14 seconds", then "13 seconds" etc. <br />
                    This way I will know how long to wait (this dialog didn't go away until I killed the app)
              </li>              
             </ol>
              <dl class="image">
                     <dt>
                        <img src="images/CancelPendingPost.JPG" alt="The pending post can't be cancel." />
                     </dt>
                      <dd>
                        Figure: "Publishing your Draft" appears indefinitely with no way to cancel
                      </dd>
                </dl>          
          
          </li>
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Martin.aspx">Martin Hinshelwood</a>
       
    </p>
</asp:Content>
