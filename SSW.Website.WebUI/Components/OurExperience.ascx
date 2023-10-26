<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="OurExperience.ascx.cs" Inherits=".OurExperience" %>

<div id="OurExperience">
    <%--<div class="section">
        <h3>Our Methodology</h3>
        <p>SSW's Rules to Better Project Management allows businesses to address their most important challenges first, and respond quickly to change. Our rules advocate software consultants working on-site, or on the phone, so long as there is close consultation with business users, with the goal to become integrated members of the client's team.</p>
        <p><a href="http://rules.ssw.com.au/management/rulestosuccessfulprojects/pages/default.aspx">Learn more about SSW development Methodology</a></p>
    </div>--%>
    
    <div class="section">
        <h3>Get your project started!</h3>
        <img class="phone" src="/ssw/images/icons/phone.png" alt="phone icon">
        <h3 style="line-height:4rem">+61 2 <strong>9953 3000</strong></h3>
        <p>SSW will look at your development requirements and help you design and implement an effective app.</p>
    </div>
    <div class="section">
        <h3>Our experience</h3>
        <p>SSW Consulting has <%=(System.DateTime.Now.Year-1990).ToString() %> years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Azure, TFS, SharePoint, .NET, Dynamics 365 and SQL Server.</p>
        <p>With 40+ consultants in 5 countries, we have delivered the best in the business to more than 1,000 clients in 15 countries.</p>
    </div>
</div>
