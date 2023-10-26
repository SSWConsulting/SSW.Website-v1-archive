<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Bupa Case Management System Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
<h1>Bupa Case Management System</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2>Challenge</h2>
        <p>Bupa is one of the largest providers of health cover in Australia. Bupa's agents handle hundreds of insurance claim cases every day. They used to use Excel to connect to their database to track and update those claim cases, which is slow, crashed easily, no security restriction and not user friendly.</p>
		
        <h3>We make complicated things simple</h3>
        <p>Bupa's case management was very complicated due to case types, status, payment and financial attributes' variety.<br />
           SSW created a user friendly interface for agents to manage cases more efficiently. We integrated with their existing membership database and built the system with case status workflow logic at the backend.</p>
       <p>The below are some mock-ups for the case management system:</p> 
       <dl class="image">
            <dt><img src="Images/bupa-mockup-1.jpg" alt="Bupa Mockup" /></dt>
            <dd>Figure: Case search page</dd>
       </dl>
       <dl class="image">
            <dt><img src="Images/bupa-mockup-2.jpg" alt="Bupa Mockup" /></dt>
            <dd>Figure: Create a case with required fields filled, the other fields are filled in nightly</dd>
       </dl>
       <dl class="image">
            <dt><img src="Images/bupa-mockup-3.jpg" alt="Bupa Mockup" /></dt>
            <dd>Figure: Update claims related to a case, which will automatically update case status</dd>
       </dl>
       <dl class="image">
            <dt><img src="Images/bupa-mockup-4.jpg" alt="Bupa Mockup" /></dt>
            <dd>Figure: Update financial data, which will automatically update case status </dd>
       </dl>
       <dl class="image">
            <dt><img src="Images/bupa-mockup-5.jpg" alt="Bupa Mockup" /></dt>
            <dd>Figure: Change log of a case can be checked in the "history" tab</dd>
       </dl>
    </div>

    <div class="section">
        <h2>Results</h2>
        <p>Bupa's agents are able to see all their cases' statuses on a dashboard, and work out which cases need to be followed up. They can also easily create and update the case in a few clicks. Something that needed much more manual effort to do in the past.</p>
    </div>

</asp:Content>
