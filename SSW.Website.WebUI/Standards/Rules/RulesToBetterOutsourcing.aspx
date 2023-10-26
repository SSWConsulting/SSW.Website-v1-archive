<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
  Title="SSW Rules to Better Outsourcing" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
  <p>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
    </asp:SiteMapPath>
  </p>
  <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
  <p>
    Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304F7574626F756E6425323043616C6C73')">
      Let us know</a> what you think.</p>
  <div class="TableOfContents">
    <ol>
      <li><a href="#SkypeIn">Do you know using Skype In to improve your communication with
        clients?</a></li>
      <li><a href="#Currency">Do you always give prices in head office's currency? </a></li>
    </ol>
  </div>
  <div id="mainContent">
    <ol>
      <li>
        <h2>
          <a name="SkypeIn"></a>Do you know using Skype In to improve your communication with
          clients?</h2>
        <p>
          Often the most effective method of communication for a project is to talk directly
          to clients on the phone. It is better to provide a local phone number to the clients
          to ensure peace of mind and keep their costs down.</p>
        <p>
          The standard procedure of dealing with Skype In calls
          <ol>
            <li>If your Skype is online, it will ring your computer</li>
            <li>If your Skype is offline, it will redirect the call to your mobile / local phone
            </li>
          </ol>
        </p>
        <p>
          More info at <a href="http://www.skype.com/allfeatures/onlinenumber/">Skype.com</a>
        </p>
      </li>
      <li>
        <h2><a name="Currency"></a>Do you always give prices in head office's currency? </h2>
      <p>
        All prices from vendors should be given in head office's currency to help the whole company to understand the cost, given prices in local currency will cause additional clarification waste and introduce confusion and mistakes. 
      </p>
      <div class="greyBox">
        <p>The cost of the business card printing is CNY 75 / box. </p>
      </div>
      <dl class="badImage">Bad Example - prices are given in local currency</dl>
      <div class="greyBox">
        <p>The cost of business card printing is AUD 13 / box (CNY 75 / box, Ex. 6)</p>
      </div>
      <dl class="goodImage">Good Example – prices are given in head office's currency with calculation notes </dl>     
      </li>
      
    </ol>
    <h2>
      Acknowledgements</h2>
    <p>
      <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
  </div>
</asp:Content>
