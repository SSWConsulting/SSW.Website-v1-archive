<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Visual Studio Gallery Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <div class="TableOfContents">
	    <h3>Visual Studio Gallery Suggestions</h3>
	    <ol>
		    <li><a href="#OfficialLocationForBugs">Can we have an official location for Bugs?</a></li>
            <li><a href="#Branding">Help TFS branding</a></li>
	    </ol>
    </div>

    <div id="mainContent">
	    <ol>
	        <li>
		        <h2><a name="OfficialLocationForBugs"></a>Can we have an official location for Bugs?</h2>
	            <ol>
	                <li>
                        <p>Add a new tab</p>
	                    <p>An example:<br />
	                    There is a known issue in the Visual Studio Scrum 1.0 RTW.<br /></p>
	                    <p>Where does Microsoft put it? I am not sure, but I expect to find it on the product page.<br />
                        The product page in this case, is where I downloaded it.</p>
	                    <p>E.g. <a href="http://visualstudiogallery.msdn.microsoft.com/en-us/59ac03e3-df99-4776-be39-1917cbfc5d8e">http://visualstudiogallery.msdn.microsoft.com/en-us/59ac03e3-df99-4776-be39-1917cbfc5d8e</a> </p>
	                    <dl class="image">
	                    <dt><img src="/ssw/standards/BetterSoftwareSuggestions/images/VSScrum.jpg" alt="Visual Studio Scrum" /></dt>
                        <dd>Figure: Can we have a 4th tab?</dd>
	                    </dl>	       
	                </l>i
	                <li>
                        <p>Add a record into it</p>
	                    <p>E.g. This is one entry I would like you to add to this new tab</p>   
	                    <h3>The Bug</h3>
	                    <p>Date format bug in the Sprint Burndown report in Visual Studio Scrum 1.0 RTW. <br />
                        If you are in a non US locale, this prevents the current sprint being calculated and the report falls over with an error:</p>
                        <dl class="code">
                            <dt>
                            <pre>
        Query execution failed for dataset 'dsSprintsCurrent'. (rsErrorExecutingCommand) 
        The conversion of a nvarchar data type to a datetime data type resulted in an out-of-range value.
                            </pre>
                            </dt>
                        </dl>  
                        <h3>The Fix</h3>
                        <p>The fix is to change the RDL. <br />
                            Open the Sprint Burndown RDL file <br />
                            Change the "Today" parameter from "Text" to "DateTime"</p>
                        <dl class="code">
                            <dt>
                            <pre>
    &lt;ReportParameter Name="Today"&gt;
    &lt;DataType&gt;DateTime&lt;/DataType&gt;
    &lt;DefaultValue &gt;
    &lt;Values&gt;
    &lt;Value&gt;=today&lt;/Value&gt;
    &lt;/Values&gt;
    &lt;/DefaultValue&gt;
    &lt;Hidden&gt;true&lt;/Hidden&gt;
    &lt;/ReportParameter&gt;
                            </pre>
                            </dt>
                        </dl>
	                </li>
	            </ol>
	        </li>

            <li>
                <h2><a name="Branding"></a>Help TFS branding</h2>
                <p>It would be great if the TFS tools sorted together and we got the "TFS" brand a little extra juice.</p>
                <dl class="image">
                   <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/images/AddPrefix.jpg" alt="Add prefix " /></dt>
                    <dd>Figure: Add "TFS" to the prefix of both these - and hopefully all others will follow </dd>
                </dl>
           </li>
	
        </ol>
    </div>
    <h2>Acknowledgements</h2>	
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p> 
</asp:content>