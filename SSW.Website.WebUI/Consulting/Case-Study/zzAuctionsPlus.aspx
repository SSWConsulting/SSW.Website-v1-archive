<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="AuctionsPlus - Case Study | SSW Consulting" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>AuctionsPlus</h1>
    <h2>Online platform for livestock sales</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2>Real-Time Auction System</h2>
        <img src="Images/AuctionsPlus-logo.jpg" class="right" title="Auctions Plus Logo"/>
        <p>AuctionsPlus is a market leader in providing online services for the buying and selling of livestock. We provide the best product possible to assist with a value-added livestock trading experience that make AuctionsPlus the most effective way to buy and sell livestock.</p>
    </div>
    <div class="section">
        <h2>Challenge</h2>
            <p>AuctionsPlus, Australia's leading online platform for livestock sales, saw their business grow almost overnight as Covid restrictions came into place, moving livestock auctions exclusively to an online sphere. With about $1 billion more in gross sales than what they achieved the year prior, this didn't come without a handful of challenges - from additional complexities that come with adapting livestock auctions to run exclusively online, to its scalability which proved expensive and brittle & cost to run.</p>
   
        <h2>We make complicated things simple</h2>
            <p>AuctionsPlus' production environment a year later, with <strong>Azure Cosmos DB</strong> storing all the auction bidding data, <strong>Azure SignalR</strong> notifying all bidders and others of current auction details in real-time, <strong>Blazor Webassembly</strong> providing a performant management UI, performing at a higher standard than traditional JavaScript UI frameworks. Azure Functions provided an easy and efficient way to maintain the deployment model, scaling with ease.</p>
            <p>Coming up with and optimizing a solution wasn't a walk in the park. The first step was to produce a Specification Review, from which a basic structure and plan came to life. This was followed by a close collaboration between SSW and AuctionsPlus' development teams, refining the solution until development.</p>

        <h2>Results</h2>
            <p>AuctionsPlus ended up with an excellent solution that has greater scaling capabilities, permitting international and/or different market expansion. They also have a deeper understanding of this solution, allowing for improved maintenance in the future. In the end, the codebase was simplified and is now more functional than ever. They can now have over 1 million people on their platform, bidding on 1 million lots on a stable platform. AuctionsPlus contributed with 3 to 7 full-time team members, and SSW with 2 to 6 full-time team members.</p>
            <p>The hybrid team model worked wonders, as SSW's high-end developers and Scrum Master and AuctionsPlus' developers, UX designers and data engineer joined forces transferring knowledge in a fantastic way and impressing their Team Leader with our Scrum philosophy and the visible growth and confidence of their developers.</p>
        <h2>Related links</h2>
            <ul>
                <li><a href="https://auctionsplus.com.au/ ">AutionsPlus website</a></li>
                <li><a href="https://www.abc.net.au/news/rural/2022-08-27/auctionsplus-ceo-angus-street-reveals-secrets-behind-growth/101361870">AuctionsPlus CEO Angus Street reveals the day that changed the company forever - ABC News</a></li>
                <li><a href="https://pulse.auctionsplus.com.au/market/auctionsplus-fy-2021-22-results">AuctionsPlus FY 2021-22 Results</a></li>
            </ul>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebar" runat="server"></asp:Content>