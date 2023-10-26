<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven"  Title="Consulting Options | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Consulting Options</h1>
    <h2>Solutions that can adapt to your every need</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">

    <div class="section">
        <p>SSW offers the opportunity to hire one of our highly specialised experts in the field of your need, or a team of experts, ready to build your next project for you.</p>
        <p>If you are a new customer we need to schedule a free initial meeting. If you're an existing client, please continue below.</p>

        <ul class="nav nav-tabs" id="Consulting-Options-Tabs">
            <li class="active"><a data-toggle="tab" href="#individual">
                <h2 class="individual">Book a SSW Expert</h2>
            </a></li>
            <li class=""><a data-toggle="tab" href="#team">
                <h2 class="team">Book a SSW Team</h2>
            </a></li>
        </ul>

        <div class="tab-content definition-table" id="Consulting-Options">
            <div id="individual" class="tab-pane fade active in">
                <p>Whether you want a technical expert or a Scrum Master to get the team into a highly performing unit, we have the experts with expertise in a wide range of the Microsoft technology stack. SSW consultants ensure your project is done right and following best practices. From SharePoint or CRM to ASP.NET MVC or Azure our experts get the job done.</p>
                <p>For example:</p>
                <ul>
                    <li><a href="WebsiteDevelopment.aspx">Web and MVC Experts</a></li>
                    <li><a href="/ssw/Consulting/SharePoint.aspx">SharePoint Expert</a></li>
                    <li><a href="/ssw/Consulting/MicrosoftCRM.aspx">CRM Expert</a></li>
                    <li><a href="Default.aspx">More</a></li>
                </ul>
                <h3 class="special">Some of Our Experts</h3>
                <div class="row">
                    <div class="col-sm-4 clearfix">	
	                    <img src="/ssw/events/training/images/jason_thumb.jpg" class="thumbnail" data-pin-nopin="true">
	                    <div>
		                    <h4><a href="https://www.ssw.com.au/people/jason-taylor">Jason Taylor</a></h4>
		                    <span>Clean Architecture + Azure + Angular + .NET Expert </span>
   	                    </div>
                    </div>

                    <div class="col-sm-4 clearfix">
  	                    <img src="/ssw/events/training/images/Jean-Thirion.jpg" class="thumbnail" data-pin-nopin="true">
   	                    <div>
 		                    <h4><a href="https://www.ssw.com.au/people/jean-thirion">Jean Thirion</a></h4>
		                    <span>SharePoint + Office365 Expert</span>
	                    </div>
                    </div>

                    <div class="col-sm-4 clearfix">
	                    <img src="/ssw/events/training/images/Adam-Cogan.jpg" class="thumbnail" data-pin-nopin="true">
   	                    <div>
   		                    <h4><a href="https://www.ssw.com.au/people/adam-cogan">Adam Cogan</a></h4>
		                    <span>Scrum Master</span>
  	                    </div>
                    </div>
                </div>
                <hr />
                <p><a href="https://www.ssw.com.au/people/">Full List of Experts</a></p>

            </div>
            <div id="team" class="tab-pane fade">
                <img alt="" src="Images/ScrumBats.jpg" class="right clearfix" />
                <p>Our most popular option is to get a dedicated team to complete your project.</p>
                <p>We have development teams ranging from 2 to 5 people that strive to bring you high quality software at the end of every Sprint (2 week cycle). If you've already got your own developer team, further improve the production process by booking one of our trained "Scrum Masters". They'll manage the team to bring you the best possible solution for your business.</p>
                
                <h3 class="special">Latest Activity</h3>
                <h3>Scrum Bats</h3>
                <dl class="image">
                    <dt><img src="images/Bats-Story.jpg" /></dt>
                    <dd>Figure: Stories Overview</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/Bats-Burndown.jpg" /></dt>
                    <dd>Figure: Task Burndown (hours)</dd>
                </dl>
            </div>
        </div>
        
        <text:Location runat="server" />

    </div


</asp:Content>
