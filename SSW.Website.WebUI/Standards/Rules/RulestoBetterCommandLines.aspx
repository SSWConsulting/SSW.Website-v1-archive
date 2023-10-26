<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Command Lines" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    &nbsp;<div class="intro">
            
    </div>
    <div class="TableOfContents">
        <h3>
            Rules to Better Command Lines</h3>
        <ol>
            <li><a href="#UIForCommandLine">Do you have a UI for a command line utility?</a></li>
            <li><a href="#UIAsDefault">Do you open UI by default when you type [ApplicationName].exe?</a></li>
            <li><a href="#ListOfArguments">Do you provide list of arguments?</a></li>
        </ol>      
        
    </div> <p>     Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230446F744E65544E756B65')">Let us know</a> 
		what you think.</p>
    <div id="mainContent">
        <ol style="margin: 0; padding: 0;">
            <li>
                <h2>
                    <a name="UIForCommandLine"></a>Do you have a UI for a command line utility?</h2>
                <p>
                    There should never be a command line utility without a UI. Take an example of Visual Studio 2008:
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/CommandLineWithoutUI.jpg" alt=" " width="250" height="200" /></dt><dd>Figure: Bad Example: In website project, Visual Studio does not have a UI for its command line.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/CommandLineWithUI.jpg" alt=" " width="350" height="200" /></dt><dd>Figure: Good Example: In web application project, Visual Studio provides a UI for its command line.</dd></dl>               
            </li>
             <li>
                <h2>
                    <a name="UIAsDefault"></a>Do you open UI by default when you type [ApplicationName].exe?</h2>
                <p>
                    It is always a good practice to have UI opened when specifying [ApplicationName].exe from command line. If the GUI is not done, show a messagebox "GUI coming..."
                    <br />Note: If you prefer for not putting UI as the default, it should have be at least "/GUI" as the argument. DO NOT use "/i", because too many command lines are using &#8220;/i&#8221; already.
                </p>
                
                <dl class="badImage">
                    <dt>
                        <img src="Images/CommandLineOpenUIWithArgument.jpg" alt=" " width="450" height="450" /></dt><dd>Figure: Bad example: /i  should not be needed to get to the GUI &#8211; it should be by default.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/CommandLineOpenUIWithoutArgument.jpg" alt=" " width="600" height="320" /></dt><dd>Figure: Good Example: UI is opened by default.</dd></dl>
            </li>
             <li>
                <h2>
                    <a name="ListOfArguments"></a>Do you provide list of arguments?</h2>
                <p>
                    When you develop an application that supports command line, you must provide a list of arguments / help on how to use the application through command line. 
                    <br />It can be as easy as typing: [ApplicationName].exe /? for listing the arguments.
                </p>
                
                <dl class="badImage">
                    <dt>
                        <img src="Images/NoListOfArguments.jpg" alt=" " width="700" height="200" /></dt><dd>Figure: Bad example: Do no provide supported argument through /?.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ListOfArguments.jpg" alt=" " width="800" height="400" /></dt><dd>Figure: Good Example: Provide supported argument through /? .</dd></dl>
			    </p>
            </li>
            
        </ol>
        <div>
            &nbsp;</div>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AGT">Andy Taslim</a><br />
        </p>
    </div>
</asp:Content>