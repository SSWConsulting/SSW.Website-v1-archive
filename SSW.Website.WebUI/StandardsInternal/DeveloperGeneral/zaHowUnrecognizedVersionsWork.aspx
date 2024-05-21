<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="How to Update Diagnostics Version Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>Introduce</h2>
    <p>
        The unrecognized version emails are from SSW Diagnostics users, when they have some unknown verisons of products in our database, it will send us unrecognized version mail automatically. All of the unrecognized version mails in the Unrecognized Version public folder.
    </p>
    <h2>
        How to Update Diagnostics Version Data</h2>
    <p>
        <strong>Database:</strong> Dragon\SSWDiagnostics
    </p>
    <p>
        <strong>Tables:</strong> FileDefinition, Product, ProductVersion
    </p>
    <p>
        Unrecognized Version Mail:
    </p>
        <dl class="greyBox">
            <dt>
                Filename:       C:\Program Files\Microsoft Office\Office10\OUTLOOK.EXE<br />
                Comments:<br />
                File Version:   10.0.2605<br />
                Product Version:        10.0.2605<br />
                Product Name:   Microsoft Outlook<br />
                Original Filename:      Outlook.exe<br />
                Internal Name:  Outlookr<br />
                XML File Version:       1.555<br />
                <br />
                <br />
                Created with SSW Diagnostics 3.89<br />
                www.ssw.com.au<br />
            </dt>
        </dl>
    <ol>
        <li>Delete all duplicate items order by subject.</li>
        <li>Check whether the product is in database. If not, add the product and update old ones.</li>
        <ul>
            <li>Run below SQL script:</li>
            <dl class="greyBox">
                <dt>
                    Select * from Product where ProductName like '%Outlook%'
                </dt>
            </dl>
            <li>If this product is not in the database, the remember the <strong>GroupID</strong>, than run below script to add it:</li>
            <dl class="greyBox">
                <dt>
                    /*Outlook's group id is 12*/ <br />
                    insert into product(productname,productdescription,productlatest,groupid,createdby)<br />
                    values('Outlook 2007','','Yes',12,'Wilson Wu')<br />
                </dt>
            </dl>
            <li>If the product already in the database, go to next step to update version data.</li>
        </ul>
        <li>Check whether the version is in database. If not, add the version and update old ones.</li>
        <ul>
            <li>Use the 'Original Filename' value in the Unrecognized version mail like below:</li>
            <dl class="greyBox">
                <dt>
                    Original Filename: <strong>Outlook.exe</strong>
                </dt>
            </dl>
            <li>Run below SQL script and show all of this product's versions:</li>
            <dl class="greyBox">
                <dt>
                    select * from productversion <br />
                    where filedefinitionid=<br />
                    (select top 1 filedefinitionid from filedefinition where filedefinitionname like '%Outlook.exe%')<br />
                </dt>
            </dl>
            <li>If the version already in those records, then make it completed like below:</li>
            <dl class="image">
                <dt>
                    <img src="Images\UV_1.JPG" alt="Make to completed" />
                </dt>
            </dl>
            <li>If the version not in there, use below script add this version:</li>
            <dl class="greyBox">
                <dt>
                    insert into productversion <br />
                    (<br />
                    versionnumber,<br />
                    versionlatest,<br />
                    versionfor,<br />
                    productid,<br />
                    filedefinitionid,<br />
                    versionxmladd,<br />
                    versionupdateurl,<br />
                    versionname,<br />
                    versiondescription,<br />
                    versioncounter,<br />
                    versionrating,<br />
                    createdby,<br />
                    updatedby<br />
                    )<br />
                    values(<br />
                    '12.0.6308',<br />
                    'Yes',<br />
                    'All',<br />
                    44,<br />
                    17,<br />
                    '1.526',<br />
                    'http://office.microsoft.com/en-us/downloads/maincatalog.aspx',<br />
                    'SP1',<br />
                    'Microsoft Outlook 2007',<br />
                    0,<br />
                    1,<br />
                    'Wilson Wu',<br />
                    'Wilson Wu'<br />
                    )<br />
                </dt>
            </dl>
            <li>Then make it completed.</li>
        </ul>
        <li><strong>Remember to update 'DateUpdated' and 'UpdatedBy'.</strong></li>
    </ol>
    <h2>
        How to publish a Versions.xml file
    </h2>
    <ol>
        <li>
            Open SSW Diagnostics solution in VS 2008.
        </li>
        <li>Select SSW.Diagnostics.WebUI project.</li>
        <li>Debug it.</li>
        <li>Go to XmlGeneration.aspx page, and click the "Rebuild XML" button</li>
        <li>When it build successfully, upload the Version.xml file to AU and US, you need upload the file to: <a href="ftp://us.ssw.com.au/httpdocs/ssw/diagnostics/">ftp://us.ssw.com.au/httpdocs/ssw/diagnostics/</a> and <a href="ftp://au.ssw.com.au/httpdocs/ssw/diagnostics/">ftp://us.ssw.com.au/httpdocs/ssw/diagnostics/</a></li>
    </ol>
    <p>
        <span style="color:Red;">FUTURE: User will be able to see how many other people have logged this version on the record in the Diagnostics UI</span>
    </p>
    <p>
        <span style="color:Red;">FUTURE: User will be able to see how many other people have logged this version on the record in the Unrecognized.aspx</span>
    </p>
    <p>
        <span style="color:Red;">FUTURE: After 20 submittions it will show as "Auto recognized (20)"</span>
    </p>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/SSW/Employees/employeesprofile.aspx?EmpID=WW">Wilson Wu</a><br>
    </p>
</asp:Content>
