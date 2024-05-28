<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="How to Update Diagnostics Version Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>
        How to Update Diagnostics Version Data</h2>
    <p>
        <strong>Database:</strong> Dragon\SSWDiagnostics
    </p>
    <p>
        <strong>Tables:</strong> FileDefinition, Product, ProductVersion
    </p>
    <ol>
        <li>Check whether the product is latest. If not, add the lastest and update old ones.</li>
        <li>Check whether the file is latest. If not, the lastest and update old ones.</li>
        <li>Check if there's a product version with the same file definition name and product name. If not, add this product version. Then update the 'versionlatest' of this product version and others.</li>
        <li><strong>Remember to update 'DateUpdated' and 'UpdatedBy'.</strong></li>
    </ol>
    <p>
        <strong>SQL Exmaples</strong>
    </p>
    <ol>
        <li>Which product group is a product in and whether the product is the latest</li>
        <dl class="greyBox">
            <dt>
                select p.productname, p.productname,p.productlatest, pg.groupname<br />
                from product as p <br />
                inner join  productgroup as pg<br />
                on p.groupid=pg.groupid<br />
                order by p.productname
            </dt>
        </dl>
        <li>Fetch product info with a file name</li>
        <dl class="greyBox">
            <dt>
                select * from product where <br />
                productname like ''
            </dt>
        </dl>
        <li>Fetch product info with a product id</li>
        <dl class="greyBox">
            <dt>
                select * from product where <br />
                productid=88
            </dt>
        </dl>
        <li>Fetch file definition</li>
        <dl class="greyBox">
            <dt>
                select * from dbo.FileDefinition<br />
                where filedefinitionid=75
            </dt>
        </dl>
        <li>Fetch file definition</li>
        <dl class="greyBox">
            <dt>
                select * from dbo.FileDefinition<br />
                where filedefinitionname like ''

            </dt>
        </dl>
        <li>Update product version</li>
        <dl class="greyBox">
            <dt>
                update productversion<br />
                set  versionlatest = ',dateupdated=getdate(), updatedby='David Bian' where  filedefinitionid = xx  and productid= xx
            </dt>
        </dl>
        <li>Add version</li>
        <dl class="greyBox">
            <dt>
                insert into productversion (versionnumber, versionlatest, versionfor,productid,filedefinitionid,<br />
                versionxmladd,versionupdateurl,versionname, versiondescription,<br />
                datecreated,createdby,dateupdated,updatedby
            </dt>
        </dl>
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
