<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="Instructions on Browsing Website Files" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <% 'Note: there can be a PageTitle parameter if it is different to the Document.Title %>
    <div>
        <p>
            <b>Developers follow these instructions to create Staging (aka 'Test Please') websites for clients</b></p>
    </div>
    <ol>
        <li>
            <h2>
                Login Plesk</h2>
            <p>
            <!--SSW Code Auditor - Ignore next line(HTML)-->
                Use standard SSW login name and password_simple.</p>
                <dl class="image">
                <dt><img src="Images/Browse_Login.jpg" alt="Login Plesk AU" /></dt>
                <dd>Figure: Login Plesk AU </dd>
                </dl>
        </li>
        <li>
            <h2>
                Go &quot;Home&quot;</h2>
            <p>
                Click link &quot;Home&quot; on left navigation pane.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Browse_Click_Home.jpg" alt="Click 'Home'" />
                    </dt>
                    <dd>
                        Figure: Click &quot;Home&quot; 
                    </dd>
                </dl>
        </li>
        <li>
            <h2>
                Show Subdomains</h2>
            <p>
                Click link &quot;Show Subdomains&quot; in section Domains</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Browse_Show_Subdomains.jpg" alt="Click 'Show Subdomains'" />
                    </dt>
                    <dd>
                        Figure: Click &quot;Show Subdomains&quot;
                    </dd>
                </dl>
        </li>
        <li>
            <h2>
                Select Domain or Subdomain you want</h2>
            <p>
                Select Domain or Subdomain you want by clicking the &quot;Domain Name&quot;, i.e.
                staging.au.ssw.com.au .</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Browse_Select_Domain.jpg" alt="Click 'Domain Name'" />
                    </dt>
                    <dd>
                        Figure: Click &quot;Domain Name&quot;
                    </dd>
                </dl>
        </li>
        <li>
            <h2>
                Browse Virtual Directories or Physical Directories</h2>
            <p>
                Click &quot;Web Directories&quot; to browse virtual directories, or click &quot;File
                Manager&quot; to browse physical directories. Normally, the physical website files are in
                folder &quot;httpdocs&quot;</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Browse_Directories.jpg" alt="Browse" />
                    </dt>
                    <dd>
                        Figure: Browse Directories
                    </dd>
                </dl>
        </li>
    </ol>
</asp:Content>
