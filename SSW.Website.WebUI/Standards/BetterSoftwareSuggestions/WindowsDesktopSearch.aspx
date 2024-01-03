<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW MSN Desktop Search Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

    <asp:label id="lblWelcome" runat="server"></asp:label><p>
    <div class="TableOfContents">
	    <ol>
		    <li><a href="#UIBug">UI Bug  The "Index now" should be disabled</a></li>
		    <li><a href="#SearchExpression">Search Expression</a></li>
		    <li><a href="#OutlookIndex">Help me use the Outlook index when using Boot to VHD</a></li>
	    </ol>
    </div>
<ol>

    <li>
	    <h2>
        <a name="UIBug"></a>UI Bug  The "Index now" should be disabled</h2>
	    <p>The "Index now" button is a toggle.  When you click it, it depresses, and when you click it again, it pops up.  But, the standard button for that isnt obvious.
	    <br>Button that unavailable should be disabled.
	    </p>
	    <p>
        <img border="0" src="Images/MSNDesktopSearchUIBug.gif" alt="Windows Indexing Status" width="438" height="209"><br>
        <b>Figures: MSN Desktop Search - The "Index now" button should be disabled.</b>
        </p>

    </li>
    <li>
	    <h2>
		    <a name="SearchExpression"></a>Search Expression</h2>


	    <p>
        <img border="0" src="Images/DesktopSearch.gif" alt="MSN Desktop search results." width="1238" height="741"><br>
        <b>Figures: MSN Desktop Search couldn't find the email with specified date string.</b>
        </p>
        <p>To search by date, you need something like this "date:05/07/2005". But the problem is this isn't obvious to most people.
        <br>It should also have a "..." button that opens up a search expression builder for users easily to build search expression with keyword like "date:".
        
        
        </p>
    </li>
    <li>
        <h2>
		    <a name="OutlookIndex"></a>Help me use the Outlook index when using Boot to VHD</h2>
            <p>
                <b>Summary</b><br />
                I am loving boot to VHD (which I use for VS Team System + TFS for demos)<br />
                My problem is Outlook. Again!<br />
                I don’t want search running/indexing on the server one for performance reasons… but I want to use the search I have (yes I know it won’t include newly received emails)<br />
            </p>       
            <p>
                <b>Question</b><br />
                Can you have one index (for base OS + for your boot to vhd)?<br />
                <b>Background</b><br />
                I have a huge ost
                <dl class="image">
                    <dt><img src="Images\BigOutlookOST.jpg" alt="Huge ost file" /></dt>
                    <dl>Figure: Huge ost file</dl>
                </dl>
 
                I use the one OST in both environments (to save syncing time)<br />
                I only index the ost – not the files
                <dl class="image">
                    <dt><img src="Images\IndexOST.jpg" alt="Only index the ost file" /></dt>
                    <dl>Figure: Only index the ost file</dl>
                </dl>
                Takes forever to index (this is what it looks like after it being on all night)
                <dl class="image">
                    <dt><img src="Images\OutlookIndexing.jpg" alt="Take long time to index" /></dt>
                    <dl>Figure: Take long time to index</dl>
                </dl>
                So I don’t want to do it twice or 3 times (if I have a couple of Boot to VHD)
                <dl class="image">
                    <dt><img src="Images\IndexTwice.jpg" alt="Don't want to index twice or more" /></dt>
                    <dl>Figure: Don't want to index twice or more</dl>
                </dl>
            </p>
            <p>
                <b>Answer</b><br />
                This is not possible<br />
                From the WDS support forum<br />
                http://social.msdn.microsoft.com/Forums/en-US/windowsdesktopsearchhelp/thread/72ee5104-fa7c-4921-a724-11772b639b89/<br />
                (I include an image here, because copy & paste from that forum doesn’t work nicely and there is no print preview)<br />
                <dl class="image">
                    <dt><img src="Images\CantCopyFromMSDN.jpg" alt="Copy & Paste from MSDN doesn't look nice" /></dt>
                    <dl>Figure: Copy & Paste from MSDN doesn't look nice</dl>
                </dl>
            </p>
            <p>
                <b>Suggestion - Allow me to tie the index of the OST to the actual OST file</b><br />
                <br />
                Think about people with large OST (Microsoft Outlook Offline folder file) that takes forever to index.<br />
                Think about people booting into a different OS (using the great new Windows7 “boot from VHD” feature).<br />
                Think how you allow us to use the same OST on different machines without problems. <br />
                <br />
                So it makes sense to use extend this to the index file.<br />
                I believe the index should be tied to the .OST
            </p>
    </li>
</ol>
<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
	</p> 
		</asp:content>