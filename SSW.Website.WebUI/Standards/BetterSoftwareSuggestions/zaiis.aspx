<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft IIS Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
<p><asp:label id="lblWelcome" runat="server"></asp:label></p>
    <p>
        This page is for the vastly updated IIS 7 on Vista (not IIS 6 on Windows XP).
    </p>
    <div class="greyBox">
        <ol>
            <li><a href="#WebShare">Where is Web Sharing in Windows Explorer?</a></li>
            <li><a href="#AddWebsite">Add Website should have more options</a></li>
            <li><a href="#2IISAdmin">Distinguish Two Versions of IIS Managers</a></li>
            <li><a href="#ExpandTree">IIS TreeView will be expanded by default</a></li>
        </ol>
		
    </div>

<ol>

<li>
    <h2><a name="WebShare"></a> Where is Web Sharing in Windows Explorer?</h2>
    <p>
        Creating Web Application and Virtual Directory should be as easy as right click in Windows Explorer, we used to have this feature 
        in Windows XP but why cannot we have it in Windows Vista as well?
    </p>
    <dl class="image">
        <dt><img src="images/webshare.GIF" border="0" alt="Web Sharing not in Vista" width="461" height="528"/></dt><dd>Figure: There is no "Web Sharing" option in Windows Vista</dd></dl>
    <br />
    <p>
        I want an option to create a:
    </p>
    <ul>
        <li>Web site (when you need a different port to port 80 or different application pool)</li>
        <li>Application Virtual Directory</li>
        <li>Virtual directory</li>
    </ul>
    <p>We used to have this functionality in Windows XP.</p>
    <dl class="image">
        <dt><img src="images/websharexp.GIF" border="0" alt="Web Sharing XP" width="372" height="476" /></dt><dd>Figure: There was this feature in Windows XP</dd></dl>
    <br />
</li>
<li>
    <h2><a name="AddWebsite"></a>Add Website should have more options</h2>
    <dl class="image">
        <dt><img src="images/IISAdminAddWebsite.GIF" border="0" alt="IIS Add Website" width="277" height="262" /></dt><dd>Figure: There is only one "Add Website" option in Windows Vista</dd></dl>
    <br />
    <p>
        There should be more options then "Add Website". Change "Add Web Site" to "Add" then invoke a wizard that gives 3 options and explains the difference
    </p>
    <ul>
        <li>Web Site (when you need a different port to port 80 or different application pool)</li>
        <li>Application Virtual Directory</li>
        <li>Virtual directory</li>
    </ul>
    <p>
        Then you won't need to have confusing articles like this <a href="/ssw/redirect/virtual-application-vs-virtual-directory.htm">http://blogs.msdn.com/wenlong/archive/2006/11/22/virtual-application-vs-virtual-directory.aspx </a>
    </p>
</li>
<li>
    <h2><a name="2IISAdmin"></a>Distinguish Two Versions of IIS Managers</h2>
    <dl class="image">
        <dt><img src="images/IISAdminTwoVersion.GIF" border="0" alt="2 IIS Manager" width="322" height="375" /></dt><dd>Figure: There are two IIS Manager in "Computer Management" Console</dd></dl>
    <p>
        There are 2 IIS Managers here and guess what - I am always opening the wrong one! Please:
    </p>
    <ul>
        <li>Sort them together</li>
        <li>Make the current one bold</li>
        <li>Both of them should have version numbers</li>
    </ul>
    <br />
</li>
<li>
    <h2><a name="ExpandTree"></a>IIS TreeView should be expanded by default</h2>
    <dl class="image">
        <dt><img src="images/IISTreeView.GIF" border="0" alt="IIS Manager" width="353" height="307" /></dt><dd>Figure: Cannot find what I want from this root node and its context menu</dd></dl>
    <p>
        Vista (well MMC3) has removed all my right click context menus and replaced them with the tried and trusted left clicks)
To save me some pain, can't you just expand it by default? Because I spend too many right clicks looking for stuff that is not there anymore.
    </p>
    <p>
       Please just expand this thing so it looks like this (by default). 
    </p>
    <dl class="image">
        <dt><img src="images/IISTreeViewExpand.GIF" border="0" alt="IIS Manager tree expand" width="363" height="523" /></dt><dd>Figure: IIS TreeView expanded and its context menu</dd></dl>
    <p>
</li>
</ol>

<h2>Acknowledgements</h2>
<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
</p> 
</asp:content>