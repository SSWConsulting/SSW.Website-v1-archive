<%@ Page Language="C#" Inherits="SSW.Website.WebUI.Shop.UserGuide" MasterPageFile="~/Masters/RavenSubpage.master" CodeBehind="~/Shop/UserGuide.aspx.cs" Title="User Guide" %>

<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Shop/Userguide/UserGuideLinks.ascx" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>User Guide</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>

            <h2>SSW Shopping Process</h2>
            <br>
            There are a few different ways to purchase SSW Products from our web site.<br>
            Most people download our products first and then install and test it.<br>
            The final step is to purchase it.
		<br>
            <br>
            This tutorial assumes you follow the <b>Download - Install - Purchase</b> process.
		<br>
            <br>
            Alternatively you can start from <a href="/ssw/Products/">Product List</a>.
		<br>
            If you want to see it in action, go to <a href="UserGuideFlash.aspx">Flash 
			Run-through</a><br>
            <br>
            <div class="TableOfContents">
                <p><strong>SSW's Web Site Shopping Process Screens</strong></p>
                <ol>
                    <li><a href="#Pre">Prerequisites</a></li>
                    <li><a href="#download">Download</a></li>
                    <li><a href="#installtest">Install</a></li>
                    <li><a href="#purchase">Purchase</a></li>
                    <li><a href="#NextStep">Next step</a></li>
                </ol>
            </div>
            <ol>
                <li>
                    <SSW:UserGuideLinks ID="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
                    <li>
                        <h2>Download<a name="download"></a></h2>
                        <a name="Step1"></a>
                        <dl class="image">
                            <dt>
                                <img border="0" src="/ssw/Images/Shop/HomeDownloadFirst.gif" /></dt>
                            <dd>Figure 1: SSW Home Page - Click 'Download' Link from the dropdown menu</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step2"></a>
                                <img border="0" src="/ssw/Images/Shop/Download.gif" /></dt>
                            <dd>Figure 2: Download Page - Select a Product and click on 'Free Download' button</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step3"></a>
                                <img border="0" src="/ssw/Images/Shop/ProdBasketDownloadFirst.gif" /></dt>
                            <dd>Figure 3: Review Download Basket Page - Click 'Login and Send Download' button</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step4"></a>
                                <img border="0" src="/ssw/Images/Shop/LoginDownloadFirst.gif" /></dt>
                            <dd>Figure 4: Login Page - Enter Your Details and Click 'Login' Button</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step5"></a>
                                <img border="0" src="/ssw/Images/Shop/DownloadMessage.gif"></dt>
                            <dd>Figure 5: Message Page - Email sent!</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step6"></a>
                                <img border="0" src="/ssw/Images/Shop/DownloadEmail.gif"></dt>
                            <dd>Figure 6: You will get download email with link to download file or a file as an 
						attachment depending on your selection on Download Basket page(Figure 3) </dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step7"></a>
                                <img border="0" src="/ssw/Images/Shop/DownloadDialog.gif" /></dt>
                            <dd>Figure 7: Download dialog box (Only if you selected 'Email Me the URL' Radio 
						button on Download Basket page(Figure 3))</dd>
                        </dl>
                        <dl class="image">
                            <dt><a name="Step8"></a>
                                <img border="0" src="/ssw/Images/Shop/Run.gif" /></dt>
                            <dd>Figure 8: Download Finish dialog box (Only if you selected 'Email Me the URL' 
						Radio button on Download Basket page(Figure 3))</dd>
                        </dl>
                        <li>
                            <h2>Install and Test<a name="installtest"></a></h2>
                            Install and test your downloaded program on your machine. To install view the <a href="/ssw/Standards/WiseSetup/UserGuide.aspx">Installation User Guide</a>
                            <li>
                                <h2>Purchase<a name="purchase"></a></h2>
                                <dl class="image">
                                    <dt><a name="Step9"></a>
                                        <img border="0" src="/ssw/Images/Shop/Home.gif" /></dt>
                                    <dd>Figure 9: SSW Home Page - Click 'Order' Link from the dropdown menu</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step10"></a>
                                        <img border="0" src="/ssw/Images/Shop/SelectProductGroup.gif" /></dt>
                                    <dd>Figure 10: Order Page - Select Product Group</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step11"></a>
                                        <img border="0" src="/ssw/Images/Shop/Order.gif" /></dt>
                                    <dd>Figure 11: Order Page with VS.NET Product Group - Click 'Order Now' Link</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step12"></a>
                                        <img border="0" src="/ssw/Images/Shop/SelectProduct.gif" /></dt>
                                    <dd>Figure 12: Purchase SSW Code Auditor Page - Select Specific Product and then 
						Click 'Order Now' Link</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step13"></a>
                                        <img border="0" src="/ssw/Images/Shop/Basket.gif"></dt>
                                    <dd>Figure 13: Shopping Basket Page - Check Your Selection and Click 'Click to Pay' 
						Link</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step14"></a>
                                        <img border="0" src="/ssw/Images/Shop/Cart.gif"></dt>
                                    <dd>Figure 14: Shopping Cart Page - Check Your Selection and Click 'Next' Link 
						Link</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step15"></a>
                                        <img border="0" src="/ssw/Images/Shop/Payment.gif" /></dt>
                                    <dd>Figure 15: Payment Method Page - Enter Payment Details</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step16"></a>
                                        <img border="0" src="/ssw/Images/Shop/PaymentOrderNow.gif" /></dt>
                                    <dd>Figure 16: Payment Method Page - Click 'Order Now' Button</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step17"></a>
                                        <img border="0" src="/ssw/Images/Shop/Finish.gif" /></dt>
                                    <dd>Figure 17: Message Page - Finished!</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step18"></a>
                                        <img border="0" src="/ssw/Images/Shop/ThankyouEmail.gif" /></dt>
                                    <dd>Figure 18: You will get first email with your payment details from SSW Team 
						within an hour</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step19"></a>
                                        <img border="0" src="/ssw/Images/Shop/HowToDownloadEmail.gif" /></dt>
                                    <dd>Figure 19: You will get a second email with Payment Confirmed and Registration Instructions link</dd>
                                </dl>
                                <dl class="image">
                                    <dt><a name="Step20"></a>
                                        <img border="0" src="/ssw/Images/Shop/KBArticleHowToRegister.gif" /></dt>
                                    <dd>Figure 20: KB Article about How to register</dd>
                                </dl>
                            </li>
                            <li>
                                <h2><a name="NextStep"></a>Next step</h2>
                                <p>Do you want to know more about how to register?</p>
                                <p>
                                    To register view the <a href="/ssw/StandardsInternal/Registration/userguide.aspx">Registration User 
						Guide</a>
                                </p>

                            </li>
                            <ol>
        </div>
    </div>
</asp:Content>
