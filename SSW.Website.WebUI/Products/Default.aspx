<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Products" Inherits="SSW.Website.WebUI.Products.DefaultPage" CodeBehind="Default.aspx.cs" %>

<asp:Content ContentPlaceHolderID="HeaderScripts" runat="server">
    <style>
        #isotope .item a[href*="//"]:not([href*="ssw.com"]):after {
            content: none;
        }
        #isotope .item a[href*="//"]:not([href*="ssw.com"]) h2:after {
            padding-left: 6px;
            content: url(https://www.ssw.com.au/ssw/images/external.gif);
        }
    </style>

</asp:Content>


<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SSW Products</h1>
    <h2>Used by thousands of customers around the world</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="isotope">
        <div class="grid" style="width:50%;"></div>
        <div class="item all">
            <a href="https://sugarlearning.com/" target="_blank">
                <img src="Images/thumbs/thumb-SugarLearning.jpg" alt="Thumbnail for SSW SugarLearning" />
                <div class="ourHolder-text">
                    <h3>SugarLearning</h3>
                    <p>The next generation on-boarding & induction tool for smart companies.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://sswtimepro.com/" target="_blank">
                <img src="Images/thumbs/thumb-TimePro.jpg" alt="Thumbnail for SSW TimePro" />
                <div class="ourHolder-text">
                    <h3>TimePro</h3>
                    <p>TimePro offers everything an enterprise needs, such as invoicing, receipting, and time sheeting.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://sswsophie.com/sophiebot" target="_blank">
                <img src="Images/thumbs/thumb-SophieBot.jpg" alt="Thumbnail for SSW SophieBot" />
                <div class="ourHolder-text">
                    <h3>SophieBot</h3>
                    <p>Awesome bots for enterprises giving you an advantage in finding and automatically entering data using advanced business grade artificial intelligence.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://sswsophie.com/" target="_blank">
                <img src="Images/thumbs/thumb-Sophie.jpg" alt="Thumbnail for SSW SophieHub" />
                <div class="ourHolder-text">
                    <h3>SophieHub</h3>
                    <p>A Smart Environment System which shows user specific information based on the user it detects to help clients and employees.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://codeauditor.com/" target="_blank">
                <img src="Images/thumbs/thumb-CodeAuditor.jpg" alt="Thumbnail for SSW CodeAuditor " />
                <div class="ourHolder-text">
                    <h3>CodeAuditor</h3>
                    <p>Scan any website for broken links and HTML Issues.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://sswlinkauditor.com/" target="_blank">
                <img src="Images/thumbs/thumb-LinkAuditor.jpg" alt="Thumbnail for SSW LinkAuditor " />
                <div class="ourHolder-text">
                    <h3>LinkAuditor</h3>
                    <p>Automatically locate broken links on your websites.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="https://smashingbarrier.com" target="_blank">
                <img src="Images/thumbs/thumb-SmashingBarrier.jpg" alt="Thumbnail for SSW SmashingBarrier" />
                <div class="ourHolder-text">
                    <h3>SmashingBarrier</h3>
                    <p>SmashingBarrier is an user control that integrates with web applications, allowing users to send feature requests or issue reports directly into related team projects.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/Rewards">
                <img src="Images/thumbs/thumb-Rewards.jpg" alt="Thumbnail for SSW Rewards " />
                <div class="ourHolder-text">
                    <h3>SSW Rewards</h3>
                    <p>Scan SSW QR codes, earn SSW Points, claim rewards, and win prizes!</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="Legacy.aspx">
                    <h3>Legacy Products</h3>
                    <p>These are SSWs old products.</p>
            </a>
        </div>

    </div>

</asp:Content>

