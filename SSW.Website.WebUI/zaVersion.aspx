<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" CodeBehind="Version.aspx.cs" Inherits="SSW.Website.WebUI.Version" Title="SSW Website Version History" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h1>Website Version History</h1>
        <p>
            SSW&#8217;s website is under <a href="http://rules.ssw.com.au/WebSites/RulestoBetterWebsites-Deployment/Pages/Do-your-developers-deploy-manually.aspx">constant deployment</a>.<br />
            Every time a developer checks in changes to the website in Microsoft TFS, a series of checks and deployment steps get performed.
        </p>
        <p>
            Of course we make sure there are plenty of gates for developers to pass, so the quality remains high.<br />
            Eg. Check-in Policies <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterSourceControlwithTFS.aspx#CheckInPolicy">http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterSourceControlwithTFS.aspx#CheckInPolicy</a>
        </p>

        <p>Below is a list of the most recent deployments on our website:</p>

        <asp:GridView ID="gvVersions" runat="server" AutoGenerateColumns="False" CssClass="clsSSWTable data versionTable" EnableViewState="False" OnRowDataBound="gvVersions_RowDataBound">
            <Columns>
                <asp:BoundField DataField="Changeset" HeaderText="Change" />
                <asp:BoundField DataField="Version" HeaderText="Version" Visible="false" />
                <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:ddddddddd, d MMM yyyy}" Visible="false" />
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date", "{0:ddd, d MMM}") %>' Visible="false"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Date" HeaderText="Time" DataFormatString="{0:hh:mm tt}" ItemStyle-HorizontalAlign="Right" />
                <asp:BoundField DataField="Developer" HeaderText="Developer" />
                <asp:BoundField DataField="TimeTaken" HeaderText="Time Taken" />
                <asp:BoundField DataField="Notes" HeaderText="Check in Notes" />
                <asp:BoundField DataField="Files" HeaderText="Changed Files" HtmlEncode="False" />
            </Columns>
        </asp:GridView>

        <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBoxSide" Text="<h1>Attention: SSW Developers</h1><p>More information available via <a href='https://ssw2.visualstudio.com/DefaultCollection/SSW.Website/_versionControl?_a=history'>TFS</a>.</p>"></SSW:InfoBox>
    </div>
    <link rel="stylesheet" type="text/css" href="include/Version.css">
</asp:Content>
