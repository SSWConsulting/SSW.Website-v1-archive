<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Websites - Online Transactions" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath></p>
        <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" /> 
        
        <div class="Tab0eOfContents">
            <h3>Rules to Websites - Online Transactions</h3>
            <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323057656273697465732532302D2532304F6E6C696E652532305472616E73616374696F6E73')">
            Let us know</a> what you think.</p>
            <ol>
                <li><a href="#OnlineCreditCard">Do you implement online credit card processing (Partly Australian Specific)?</a></li>
            </ol>
        </div>
        
        <ol><li><a name="OnlineCreditCard"></a><h2>Do you implement online credit card processing (Partly Australian Specific)?</h2><p>When the customer clicks "Purchase", what happens under the covers? Does it:</p>
<ul>
  <li>Send an email with the credit card details for manual processing a day later (aka cowboy method), or</li>
  <li>Call a banks web service and put the money into you account within 30 seconds (recommended) (aka professional method)</li>
</ul>
<p>Implementing  the online credit card processing into your website requires a lot of  investigation was is very time consuming (you will find yourself taking  copious notes while on the phone to many different providers).</p>
<div class="stepbystep">
<div class="step"><h3>Step 1</h3><p> is to decide on the shopping cart:</p>
<ol type="a">
  <li>Custom shopping cart built into your site (recommended)</li>
  <ul>
    <li>A lot of work &ndash; but can be modified as your business processes evolve</li>
    <li>e.g. <a href="/SSW/Redirect/SSW/SSW.htm">www.ssw.com.au</a></li>
  </ul>
  <li>Off the shelf shopping cart</li>
  <ul>
    <li>Nice &ndash; but difficult to modify. However predefined themes that might suit you could be available.</li>
    <li>e.g. <a href="/SSW/Redirect/BvSoftware.htm">www.bvsoftware.com</a> (support for 20 gateways like <a href="/SSW/Redirect/Worldpay.htm">http://www.worldpay.com/au/</a> and <a href="/SSW/Redirect/Paymentexpress.htm">http://www.paymentexpress.com.au/</a> but unfortunately not <a href="/SSW/Redirect/Camtech.htm">www.camtech.com.au</a> or <a href="/SSW/Redirect/Eway.htm">www.eway.com.au</a>)</li>
  </ul>
  <li>A hosted shopping cart (where you upload your products)</li>
  <ul>
    <li>Your site integrates with a 3rd party shopping cart to process the credit card payment</li>
    <li>e.g. <a href="/SSW/Redirect/Camtech.htm">www.camtech.com.au</a> and <a href="/SSW/Redirect/Eway.htm">www.eway.com.au</a></li>
    <li>Generally lots of predefined themes but if you want a custom one you have to pay for a custom design.</li>
    <li>You have less control over the site</li>
  </ul>
</ol></div>
<div class="step"><h3>Step 2</h3><p>if you choose a) or b) you need to apply for an Online Credit Card Merchant Facility with an Australian Bank.</p>
<ul>
  <li>This costs about $400 AUD</li>
  <li>Be aware generally you want to process the cards in $AU as it is cheaper and a lot less complicated</li>
  <li>With  all banks you can process credit cards from other countries. But if you  want to process a credit card at say the current $US currency rate and  in $US then only NAB has that facility. This can be very expensive.</li>
</ul>
<p>The cost to setup a merchant account with a bank is approximately:</p>
<blockquote>
  <table>
    <tbody>
      <tr>
        <td>Establishment Fee</td>
        <td>$250</td>
      </tr>
      <tr>
        <td>Monthly Fee</td>
        <td>$20 - $60</td>
      </tr>
      <tr>
        <td>Merchant Service Fee</td>
        <td>Between 1.00% - 3.00% (per transaction)</td>
      </tr>
    </tbody>
  </table>
</blockquote></div><div class="step">
<h3>Step 3</h3><p> is you need to create an account with a Internet Payment Gateway.</p>
<ul>
  <li>An  Internet Payment Gateway is a company that accepts the credit card  information from your website and processes the credit card</li>
  <li>You will need to secure the website with SSL certificates</li>
  <li>You  will need to comply with their standards which included having a refund  policy, displaying all prices in $AU even if you are advertising to  overseas customers.</li>
  <li>Look for one that supports web services</li>
  <li>e.g. <a href="/SSW/Redirect/Camtech.htm">www.camtech.com.au</a> and <a href="/SSW/Redirect/Eway.htm">www.eway.com.au</a>
</li></ul>
<p>&nbsp;</p>
<table class="clsSSWTable" width="100%" border="0" cellpadding="2" cellspacing="2" style="font-size:0.9em;">
  <tr valign="bottom">
    <th><div align="left">Internet Payment Gateway </div></th>
    <th><div align="left">Plan Name </div></th>
    <th><div align="right">Activation</div></th>
    <th><div align="right">Monthly</div></th>
    <th><div align="right">Free T/M </div></th>
    <th><div align="right">CPT</div></th>
    <th><div align="right">Cost/year</div></th>
    <th><div align="right">TPY</div></th>
    <th nowrap="nowrap"><div align="right">(CPT x TPY)</div></th>
    <th><div align="right">1st Year Cost</div></th>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Camtech.htm" class="external">www.camtech.com.au</a>&nbsp;&nbsp;&nbsp;<img src="/ssw/Standards/Rules/images/Good.gif" title="Our Pick" alt="(Our Pick)" width="16" height="16"/></td>
    <td>&nbsp;</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$23.75</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.40</div></td>
    <td><div align="right">$285.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$200.00</div></td>
    <td><div align="right">$485.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Directone.htm" class="external">www.directone.com.au</a></td>
    <td>Basic</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$32.92</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.45</div></td>
    <td><div align="right">$395.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$225.00</div></td>
    <td><div align="right">$620.00</div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>2000</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$49.58</div></td>
    <td><div align="right">167</div></td>
    <td><div align="right">$0.45</div></td>
    <td><div align="right">$595.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$150.00</div></td>
    <td><div align="right">$745.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Eway.htm" class="external">www.eway.com.au</a></td>
    <td>Std</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$29.17</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.50</div></td>
    <td><div align="right">$350.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$250.00</div></td>
    <td><div align="right">$600.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Eway1.htm" class="external">www.eway.com.au/Pricing</a></td>
    <td>Discount (+500TPM) </td>
    <td><div align="right">-</div></td>
    <td><div align="right">$29.17</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.25</div></td>
    <td><div align="right">$350.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$125.00</div></td>
    <td><div align="right">$475.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Netregistry.htm" class="external">www.netregistry.com.au</a></td>
    <td>&nbsp;</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$55.00</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$660.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$660.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Mbase.htm" class="external">www.mbase.com.au</a></td>
    <td>&nbsp;</td>
    <td><div align="right">$127</div></td>
    <td><div align="right">$32.75</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.35</div></td>
    <td><div align="right">$393</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$175</div></td>
    <td><div align="right">$695</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Paymentexpress.htm" class="external">www.paymentexpress.com.au</a></td>
    <td>Starter</td>
    <td><div align="right">$150.00</div></td>
    <td><div align="right">$50.00</div></td>
    <td><div align="right">100</div></td>
    <td><div align="right">$0.50</div></td>
    <td><div align="right">$750.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$200.00</div></td>
    <td><div align="right">$950.00</div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Business</td>
    <td><div align="right">$150.00</div></td>
    <td><div align="right">$150.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$0.45</div></td>
    <td><div align="right">$1,950.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$1,950.00</div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Business A </td>
    <td><div align="right">$200.00</div></td>
    <td><div align="right">$250.00</div></td>
    <td><div align="right">1,000</div></td>
    <td><div align="right">$0.42</div></td>
    <td><div align="right">$3,200.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$3,200.00</div></td>
  </tr>
  <tr>
    <td><a href="/SSW/Redirect/Anchor.htm" class="external">www.anchor.net.au</a></td>
    <td>&nbsp;</td>
    <td><div align="right">$295.00</div></td>
    <td><div align="right">$50.00</div></td>
    <td><div align="right">1,000</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$895.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$0.00</div></td>
    <td><div align="right">$895.00</div></td>
  </tr>
  <%--<tr>
    <td><a href="/SSW/Redirect/Ecornerstoreplus.htm" class="external">www.ecornerstoreplus.com.au</a></td>
    <td>&nbsp;</td>
    <td><div align="right">-</div></td>
    <td><div align="right">$65.00</div></td>
    <td><div align="right">-</div></td>
    <td><div align="right">$0.40</div></td>
    <td><div align="right">$780.00</div></td>
    <td><div align="right">500</div></td>
    <td><div align="right">$200.00</div></td>
    <td><div align="right">$980.00</div></td>
  </tr>--%>
</table>
<p style="font-size: 0.8em;color: #333333; line-height:normal;">Free T/M = No of free transactions per month offered<br />CPT = Cost per Transaction<br />
TPY = Transactions per Year (case study)<br /></p>
<p>&nbsp;</p><p><strong>We use Camtech as our Internet Payment Gateway because:</strong></p>
<ul>
  <li>They provided good documentation to call their web services. (It was so easy a work experience employee completed this task!)</li>
  <li>There was no software required on our server</li>
  <li>They are a supplier to many other Internet Payment Gateways</li>
  <li>Market share - ANZ have told us that Camtech was one of their largest suppliers</li>
  <li>Camtech allows developers to partner with them to receive a percentage of all revenue generated by the merchant.</li>
  <li>They are <a href="/SSW/Redirect/Camtech.htm">developer orientated</a></li></ul>
</div></div></li></ol>

    <h2>Acknowledgements</h2><p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MSM">Marlon Marescia</a><br /><a href="/SSW/Redirect/Acorns.htm">Corneliu I. Tusnea</a></p>
</asp:Content>
