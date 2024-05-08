<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Rules to Better Microsoft CRM data synchronization" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">            
	<p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>  
    </p>
    <ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10"/>

<p>
Once you have migrated your data from your &quot;old&quot; CRM 
application/database/system, you are ready to use Microsoft CRM.<br />
But what about updating external databases with your updates in CRM?<br />
<br />
There are powerful possibilities to update external data sinks from within CRM.<br />
As you may suspect, you can use the whole power of the .net framework.<br />
This is done by CRM Plugins.</p>


<div class="TableOfContents" style="width:55%;">
<h3>Rules to Better Microsoft CRM data synchronization</h3>
    <ol>  
        <li><a href="#CrmPrimary">Do you use you Microsoft CRM as primary database?</a></li>
        <li><a href="#PluginsForSynchronization">Do you use Plugins for data synchronization?</a></li>
        <li><a href="#TestBeforeDeploy">Do you test your Plugin before deploying it to a Live-Server?</a></li>
        <li><a href="#UseZsValidate">Do you use zsValidate to validate your data?</a></li>
        <li><a href="#DocumentMapping">Do you document your mapping of data between CRM and your other databases?</a></li>
        <li><a href="#UseWebservices">Do you use Web services (WCF) to synchronize data from CRM?</a></li>
    </ol>
</div>
<div id="mainContent">
    <ol>
        <li>
            <h2><a name="CrmPrimary"></a>
            Do you use you Microsoft CRM as primary database?</h2>
            <p>
            Since your other data sink (database or external system) is updated from CRM, 
            it&#39;s a good practice to use Microsoft CRM as your primary source for all your 
            data, and synchronize your data from CRM to third party data sinks.<br />
            Don&#39;t allow editing of your external databases, so you don&#39;t have to update your 
            CRM data from outside.<br />
            <br />
            Try to use Microsoft CRM as primary database, and use 1-way synchronization.
            <br />
            </p>
        </li>
        <li>

            <h2><a name="PluginsForSynchronization"></a>
            Do you use CRM Plug-ins for data synchronization?</h2>
            <p>
            A plug-in is most useful for the following:</p>
            <ol>
                <li>Record auditing</li>
                <li>Business process automation</li>
                <li>Data integration with third party software</li>
            </ol>
            <p>
            CRM 3.0 exposed Callouts for interacting with CRM and developing custom code to 
            attach to events at the CRM platform layer, however with CRM 4.0 this architecture 
            has been completely redesigned. </p>
            <p>Now we can create Plug-ins that make use of Synchronous and Asynchronous operations 
            and improvements in development time, deployment, administration and reliability.</p>
            <p>You should also use CRM Plug-ins for data synchronization instead of a Workflow because:</p>
            <ul>
                <li>Workflows are asynchronous, while plug-ins can be either synchronous or asynchronous 
                and we want to synchronize the data immediately so we need to use plug-ins</li>
                <li>Workflows also cannot be cancelled. This is probably necessary due to the following:<br />
                    <ul>
                        <li>You might have business logic that depends from your external data sink, and you want to cancel an operation</li>
                        <li>Your destination datasink might want to accept user entries</li>
                        <li>Your external datasink might have other required fields than the CRM database</li>
                     </ul>
                </li>
            </ul>
            </p>
        </li>
        <li>

            <h2><a name="TestBeforeDeploy"></a>
                Do you test your Plugin before deploying it to a Live-Server?</h2>
            <p>
            According to the Rule <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SeparateDevelopmentTestingAndProductionEnvironment.aspx">Do you have separate development, testing and production environment?</a>
            it's important to have different environments for development, testing and production.<br />
            Always test your plugin on your test server before you deploy it to your production server.
          
            Since you should have a development environment, you should also have a test environment, 
            where your testers (Administration Office) can test your plugin.
            <br />
            </p>
        </li>
        <li>
            
            <h2><a name="UseZsValidate"></a>
                Do you use zsValidate to validate your data?</h2>
            <p>
            Do you validate the data between CRM and your external datasink? Try to add validation logic, for example in a stored procedure.<br />
            We use zsValidate page for this. <br /><br />
            See <a href="RulesToBetterWebsitesTuningAndMaintenance.aspx#zsValidate">Rule - Do you have a zsValidate page to make sure your website is healthy?</a>
            for information, on how we do that at SSW.
            <br />
            </p>
        </li>
        <li>
            <h2><a name="DocumentMapping"></a>
                Do you document your mapping of data between CRM and your other databases?</h2>
            <p>
            In order to easy maintain your data synchronization process, you should document the mapping between the different datasources.
            Make sure your mapping table contains at least following fields: <br />
            <ol>
                <li>CRM Entity Name</li>
                <li>CRM Attribute Name</li>
                <li>External Datasource Table</li>
                <li>External Datasource Fieldname</li>
            </ol>
             <dl class="image">
                        <dt>
                            <img src="Images/crm-mapping-example-excel.jpg" alt="Example Mapping documentation file"></dt>
                        <dd>
                            Figure: Example Mapping documentation file in Excel</dd>
                    </dl>
            <br />
            </p>
        </li>
        <li>
            <h2><a name="UseWebservices"></a>
                Do you use Web services (WCF) to synchronize data from CRM?</h2>
            <p>
            Webservices (WCF Services) provide a well-used and well-defined standardized methodology to communicate over different networks.<br />
            <br />
            <br />
            </p>
        </li>
    </ol>
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Peter Gfader</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    </p>
    <h2>Useful resources</h2>
    <p><br />
        The Microsoft Dynamics CRM Wiki <br />
        http://channel9.msdn.com/Wiki/DynamicsCRM/HomePage/<br />
    </p>
</div>

</asp:content>