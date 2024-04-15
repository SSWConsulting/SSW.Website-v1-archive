<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Exchange Reporter (Samples)"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p><a href="Default.aspx">SSW Exchange Reporter</a> > SSW Exchange Reporter (Samples)</p>
    <p>
        If you successfully deploy SSW Exchange Reporter, you can browse reports under the SSW Exchange Reporter (Samples) folder.
        Those samples can help you to analyze your organizations email usage. Also you can use those reports to search specific emails.
    </p>
	<div class="TableOfContents">
        <ul>
                <li><a href="ReportSamples.aspx#CurrentFolderLW">01 - Current - All Mailboxes (By Folder - Lightweight)</a></li>
                <li><a href="ReportSamples.aspx#CurrentFolder">01 - Current - All Mailboxes (By Folder)</a></li>
                <li><a href="ReportSamples.aspx#TreeSizesOwner">02 - Current - Folder Tree Sizes (By Owner)</a></li>
                <li><a href="ReportSamples.aspx#TreeSizesAll">03 - Current - Folder Tree Sizes (All)</a></li>
                <li><a href="ReportSamples.aspx#SentLW">04 - Outgoing - Sent Emails For User (Lightweight)</a></li>
                <li><a href="ReportSamples.aspx#SentBC">04 - Outgoing - Sent Emails For User (With Bar Chart)</a></li>
                <li><a href="ReportSamples.aspx#TopBusy">05 - Outgoing - Top 50 Busy Senders</a></li>
                <li><a href="ReportSamples.aspx#TopLarge">06 - Outgoing - Top 50 Large Email Senders</a></li>
                <li><a href="ReportSamples.aspx#ReceiveEmailUser">07 - Incoming - Received Emails For User (By Date)</a></li>
                <li><a href="ReportSamples2.aspx#BusyReceiver">08 - Incoming - Busy Receivers of Incoming Email</a></li>
                <li><a href="ReportSamples2.aspx#SearchMatrix">09 - Search - Messages by Keywords (Matrix)</a></li>
                <li><a href="ReportSamples2.aspx#SearchDetail">10 - Search - Messages by Keywords (Detail)</a></li>
                <li><a href="ReportSamples2.aspx#SearchAdvanced">11 - Search - Messages by Keywords (Advanced)</a></li>
                <li><a href="ReportSamples2.aspx#SearchAddress">12 - Search - Messages by Email Address</a></li>
                <li><a href="ReportSamples2.aspx#SearchPhrase">13 - Search - Messages by Key Phrase</a></li>
                <li><a href="ReportSamples2.aspx#GrowthAll">14 - Growth - All Mailboxes</a></li>
                <li><a href="ReportSamples3.aspx#GrowthIndividual">15 - Growth - Individual Mailbox</a></li>
                <li><a href="ReportSamples3.aspx#GrowthMonth">16 - Growth - All Mailboxes (By Month)</a></li>
                <li><a href="ReportSamples3.aspx#TrendIndividual">17 - Trend - Individual Mailbox</a></li>
                <li><a href="ReportSamples3.aspx#MailboxSize">18 - Mailbox - Size of All Mailboxes</a></li>
                <li><a href="ReportSamples3.aspx#ExtractionAll">90 - Extraction Log (All Records)</a></li>
                <li><a href="ReportSamples3.aspx#ExtractionLast">91 - Extraction Log (Last Extraction)</a></li>
                <li><a href="ReportSamples3.aspx#Summary">92 - Mailboxes Summary (By Extraction)</a></li>
        </ul>
    </div>
    <dl class="image">
        <dt><img src="Images/Samples00.gif" alt="SSW Exchange Reporter (Samples)"></dt>
        <dd>Figure: SSW Exchange Reporter (Samples)</dd>
    </dl>
    <div id="mainContent">
        <ul>
            <!-- General Items -->
            <li>
                <h2><a name="CurrentFolderLW"></a>01 - Current - All Mailboxes (By Folder - Lightweight)</h2>
		        <p>
			        Shows statistics over the folder you selected, including any subfolders. Tip: Be on the lookout for especially large mailboxes.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples011.gif" alt="Current - All Mailboxes (By Folder - Lightweight)" ></dt>
                    <dd>Figure: Current - All Mailboxes (By Folder - Lightweight)</dd>
                </dl>
            </li>
            <li>
                <h2><a name="CurrentFolder"></a>01 - Current - All Mailboxes (By Folder)</h2>
		        <p>
			        Shows statistics over the folder you selected, including any subfolders. 
			        Tip: Be on the lookout for especially large mailboxes.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples012.gif" alt="01 - Current - All Mailboxes (By Folder)" ></dt>
                    <dd>Figure: 01 - Current - All Mailboxes (By Folder)</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="TreeSizesOwner"></a>02 - Current - Folder Tree Sizes (By Owner)</h2>
		        <p>
			        Shows the folder tree and size of messages contained within each folder of a specific owner's folder. 
			        Tip: Find the largest folders so you can free up space. Drill down for breakdown.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples02.gif" alt="Current - Folder Tree Sizes (By Owner)" ></dt>
                    <dd>Figure: Current - Folder Tree Sizes (By Owner)</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="TreeSizesAll"></a>03 - Current - Folder Tree Sizes (All)</h2>
		        <p>
			        Shows the folder tree and size of messages contained within each folder of owners' folders. 
			        Tip: Find the largest folders so you can free up space. Drill down for breakdown.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples03.gif" alt="Current - Folder Tree Sizes (All)" ></dt>
                    <dd>Figure: Current - Folder Tree Sizes (All)</dd>
                </dl>
            </li>
            <li>
                <h2><a name="SentLW"></a>04 - Outgoing - Sent Emails For User (Lightweight)</h2>
		        <p>
			        Compares the number of Sent Items by User. 
			        Tip:The hardest workers often send the most emails. Drill down for a breakdown.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples041.gif" alt="Outgoing - Sent Emails For User (Lightweight)" ></dt>
                    <dd>Figure: Outgoing - Sent Emails For User (Lightweight)</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="SentBC"></a>04 - Outgoing - Sent Emails For User (With Bar Chart)</h2>
		        <p>
			        Compares the number of Sent Items by User. 
			        Tip:The hardest workers often send the most emails. Drill down for a breakdown.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples042.gif" alt="Outgoing - Sent Emails For User (With Bar Chart)" ></dt>
                    <dd>Figure: Outgoing - Sent Emails For User (With Bar Chart)</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="TopBusy"></a>05 - Outgoing - Top 50 Busy Senders</h2>
		        <p>
			        Shows the top 50 people who sent the most messages.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples05.gif" alt="Outgoing - Top 50 Busy Senders" ></dt>
                    <dd>Figure: Outgoing - Top 50 Busy Senders</dd>
                </dl>
            </li>
            <li>
                <h2><a name="TopLarge"></a>06 - Outgoing - Top 50 Large Email Senders</h2>
		        <p>
			        Shows the top 50 people who sent the most large messages.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples06.gif" alt="Outgoing - Top 50 Large Email Senders" ></dt>
                    <dd>Figure: Outgoing - Top 50 Large Email Senders</dd>
                </dl>
            </li>
            <li>
                <h2><a name="ReceiveEmailUser"></a>07 - Incoming - Received Emails For User (By Date)</h2>
		        <p>
			        Compares the number of messages in Inboxes of all receivers. 
			        Tip: The highest receive the most email, they probably stress out the most. Drill down for breakdown.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Samples07.gif" alt="Incoming - Received Emails For User (By Date)" ></dt>
                    <dd>Figure: Incoming - Received Emails For User (By Date)</dd>
                </dl>
            </li>
        </ul>
    </div>
</asp:content>