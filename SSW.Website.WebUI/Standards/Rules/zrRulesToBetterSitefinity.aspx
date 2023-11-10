<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Sitefinity " %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230546F25323042657474657225323057656273697465732532304C61796F7574')"> Let us know</a> what you think.</p>
    <p><img src="/ssw/Images/Validation/redstar.gif" alt="Redstar" width="18" height="14" /> Indicates important rule</p>
    
    <div class="TableOfContents">
        <h3>SSW Rules to Better Sitefinity</h3>
        <ol>
            <li><a href="#Use-only-classes">Do you tell your designers to only use classes?</a></li>
            <li><a href="#ready-to-wait">Do you get ready to wait?</a></li>
            <li><a href="#custom-library-provider"></a>Do you know to create a Custom Library Provider?</li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="Use-only-classes"></a>Do you tell your designers to only use classes?</h2>
                    <p>In Sitefinity you can alter the appearance and content areas on your webpage using "Layouts". These layouts are basically just Divs with sizes applied.</p>
                    <dl class="image">
                        <dt><img alt="Use classes only" src="Images/sitefinity-class-only.jpg" /></dt>
                        <dd>Figure: You have the ability to assign a Class to a Div only. No other customisations can be made</dd>
                    </dl>
                    <p>Additionally, Sitefinity will hard code the widths of the layout and there is no way to stop it.<br />
                    The hack work around is to manually remove the widths via JQuery:</p>
                    <div class-"greyBox" >
                        <p>$(".sf_colsOut").css("width", "");</p>    
                    </div>
            </li>

            <li>
                <h2><a name="ready-to-wait">Do you get ready to wait?</a></h2>
                    <p>Initial Sitefinity load times are quite bad.<br />
                    On a live site you can do things like keeping the site warm though IIS however for developers this process takes quite a bit of time.</p>
                    <p>Sitefinity caches everything, checks licenses, creates in memory pages from the content in the DB, etc.<br />
                    There will be a lot of small quick query's against the Sitefinity SQL database and it is important that these remain quick.</p>
                    <ol>
                        <li>Only compile when you are sure your code will work. It is also a good idea to complete 2 or 3 different things that you can test upon a rebuild to save time.</li>
                        <li><p>Disable Sitefinity modules that you are not using or don't need.<br />
                            We recommend disabling all modules and only enabling items that you require.</p>
                            <p>You can access the Module list via the Sitefinity backend.</p>
                            <dl class="image">
                                <dt><img src="Images/sitefinity-admin-module.jpg" /></dt>
                                <dd>Figure 1: Administration -> System -> Modules</dd>
                            </dl>
                        </li>
                        <li>Ensure that the Sitefinity database is indexed and the Statistics are updated.<br />
                            This will ensure that the Sitefinity query's remain quick:<br />
                           <a href="http://www.sitefinity.com/devnet/kb/sitefinity-5-x/sitefinity-database-maintenance.aspx">Sitefinity Database maintenance</a>

                        </li>
                        <li>Use a reflection tool like DotTrace that can show you what is slow on application start time.<br />
                        Using this method we determined that Sitefinity was using reflection on assemblies to find any MVC widgets and add them into the Sitefinity widget list. This process took a few seconds and we removed tags to speed this up.</li>
                    </ol>
                    <p><strong>Telerik Suggestion:</strong> Have a best practise analyser wizard that is available in the backend which will look at the project and what is used and recommend settings that could be changed, modules that are not used, and any other improvements that can be applied.</p>
            </li>
            <li>
                <h2><a name="custom-library-provider"></a>Do you know to create a Custom Library Provider?</h2>
                    <p>We have needed to create a custom CDN library provider.</p>
                    <p>Sitefinity manages images, videos, and content on a file system which the website uses.<br />
                        For larger sites, CDN providers are used for all content that doesn’t need to be on the servers.</p>

                    <p>Make a new class that inherits from Telerik.Sitefinity.Modules.Libraries.BlobStorage.CloudBlobStorageProvider and override all the methods.<br />
                        You want to save the items to a local path but show an external URL on the actual page.</p>
                    <p>Once you have made your class then you need to register it in Sitefinity.<br />
                        Open the config file “App_Data\Sitefinity\Configuration\LibrariesConfig.config” in notepad and register your Class</p>
                    <div class="greyBox">
                        <pre>

    &lt;?xml version="1.0" encoding="utf-8"?&gt;
    &lt;librariesConfig xmlns:config="urn:telerik:sitefinity:configuration" xmlns:type="urn:telerik:sitefinity:configuration:type" config:version="5.1.3270.0"&gt;
	    &lt;blobStorage defaultProvider="CDN"&gt;
		    &lt;providers&gt;
			    &lt;remove name="FileSystem" /&gt;
			    &lt;add type="SSW.Sitefinity.Modules.Libraries.BlobStorage.CdnBlobStorageProvider" enabled="True" name="CDN" /&gt;
		    &lt;/providers&gt;
	    &lt;/blobStorage&gt;
    &lt;/librariesConfig&gt;

                        </pre>
                    </div>
            </li>
        </ol>
    </div>

    <h2>
        <a name="Acknowledgements"></a>Acknowledgements</h2>
    <p>
        <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan</a><br />
        <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/DanielH.aspx">Daniel Hyles</a>
    </p>
</asp:Content>
