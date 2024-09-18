<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Expression Suite Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
            <li><a href="#PostPlayFunctionality">Expression Encoder needs a Silverlight template that offers post-play functionality</a></li>
            <li><a href="#SetupMicrophone">Help me setup the microphone</a></li>
                
         </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li><a name="PostPlayFunctionality"></a>
                <h2>
                    Expression Encoder needs a Silverlight template that offers post-play functionality </h2>       
                <p>
                Microsoft should include an Expression Encoder Silverlight template that includes actions for a user to take after a video finishes playing. These should include socially-aware functionality, similar to that of most other video hosting sites.
                </p>
                <p>
                For example, look at the three options presented when a video finishes playing on CNN:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/CNNPlayer.jpg"
                            alt="CNN's player is a good example which provide users more functionalities" /></dt>
                    <dd>Figure: CNN’s player is a good example of giving a user something to do following playback</dd>
                </dl>
                 <p>
                    Microsoft should include a template that offers:<br />
                    <ul>
                        <li>An option to “replay”</li>
                        <li>An option to “embed”</li>
                        <li>An option to “share” (via a number of social networking sites)</li>
                    </ul>
                </p>             
            </li>
            <li><a name="SetupMicrophone"></a>
                <h2>
                    Help me setup the microphone </h2>
                <p>
                    How do I know which microphone is which, and if it really works? 
                    It should at least contain a volume level bar where you see and change the volume of the microphone.                
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/EncoderAudio.jpg"
                            alt="CNN's player is a good example which provide users more functionalities" /></dt>
                    <dd>Figure: Bad – Expression Encoder has no volume level bar to see the microphone input volume</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SkypeAudio.jpg"
                            alt="CNN's player is a good example which provide users more functionalities" /></dt>
                    <dd>Figure: Good – Skype shows us the current volume level of the microphone so we can see it is picking up sounds</dd>
                </dl>
            </li>    
        </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan </a><br/>
        <a href="/people/alumni/joe-hardy">Joe Hardy</a>
    </p>
</asp:Content>