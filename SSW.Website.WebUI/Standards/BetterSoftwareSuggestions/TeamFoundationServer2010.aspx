<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Team Foundation Server 2010 Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#SwitchServer">Help me switch around Servers with ease</a></li>
            <li><a href="#OrderInGUI">CodedUI - Help me see the order in the new GUI for the .uitest </a></li>
            <li><a href="#BoldAndNavigationAssistance">Help me find the one setting I changed </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="SwitchServer"></a>Help me switch around Servers with ease</h2>
                <p>On this dialog provide more option and more info on what you are closing.... specifically add an option group and a check box:</p>
                <p>
                 <b>Before connecting to another team project collection:</b><br />
                    (o) Close All (recommended)<br />
                          &nbsp;&nbsp;&nbsp;[x] Work items (3)<br />
                          &nbsp;&nbsp;&nbsp;[x] Queries (2)<br />
                          &nbsp;&nbsp;&nbsp;[x] Documents (0)<br />
                    (o) Leave open (5) <br /><br /> 
                     
                   <b> [x] Don't show again</b>              
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/CloseAll.JPG" alt="Don't close all"/></dt>
                    <dd>
                        Figure: I know what I am doing.... I don't want to close everything </dd></dl>
            </li>
           <li>
              <h2><a name="OrderInGUI">CodedUI - Help me see the order in the new GUI for the .uitest</a></h2>
           <p>I like this GUI very much</p>
           <dl class="image">
                    <dt>
                        <img src="Images/DisorderBug.JPG" alt="This is a bug."/></dt>
                    <dd>
                        Figure: It is not in the order that you create it - I think this is a bit of bug</dd></dl>          
           </li>
           <li>
             <h2><a name="BoldAndNavigationAssistance">Help me find the one setting I changed </a></h2>
           <p>
             I only changed it to 0.1 and it is too hard to find… <br />
            I want to double click and <b>*see my customized settings quickly*</b>
           </p>
                   <dl class="image">
                    <dt>
                        <img src="Images/StepsToFindChanges.JPG" alt="Steps to find the changes."/></dt>
                    <dd>
                        Figure: It takes too many steps to find my one change to "0.1"</dd></dl>      
           </li>
           
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        
    </p>
</asp:Content>
