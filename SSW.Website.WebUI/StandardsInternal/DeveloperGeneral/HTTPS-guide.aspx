<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="HTTPS Guide"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
   <table cellPadding="0" width="100%">
        <tr bgColor="#ff0033"> 
          <td>&nbsp; </td>
        </tr>
      </table>
      <table cellPadding="0" width="100%">
        <tr bgColor="#cccccc"> 
          <td>&nbsp;</td>
        </tr>
      </table>
      <blockquote> 
        <p><b>Step 1 - Generate a Key Pair containing a CSR (Certificate Signing 
          Request) with IIS</b> </p>
        <blockquote> 
          <p>All the key generation and certificate installation procedures for 
            IIS5 are handled by a Certificate Wizard. You access the IIS5 Certificate 
            Wizard by going into <br>
            IIS &gt; Website &gt; Website Properties &gt; Directory Security &gt; 
            Server Certificate. </p>
          <p>The Certificate Wizard generates two files: </p>
          <p><b>a.</b> A text file, called the CSR (Certificate Signing Request), 
            which is sent to Thawte. The CSR file is saved to your hard drive. 
            The CSR file is the public portion of the private/public key pair 
            and is sent back to you as a certificate file, once Thawte has issued 
            your SSL certificate. </p>
          <p><b>b.</b> A NET format file, which is your private key. The private 
            key is not accessible through this interface, and is not visible to 
            the user. Thawte does not handle the private key at all and is therefore 
            not responsible for its management. If you lose the private key, or 
            the password used to protect it, you will need to buy a new certificate. 
            Please be sure to make a backup copy of the private key file and save 
            it in a secure location. You must also remember the password used 
            to protect the private key file (or document the password in a safe 
            place). The password is the one you would have specified during the 
            request process. </p>
          <p>Please note that for IIS5 you cannot backup the private key until 
            the certificate has been installed. </p>
          <p>You&#146;ll find a step-by-step key generation guide for IIS5 at: 
            <a href="/ssw/redirect/Thawte/ThawteKeyGen.htm" target="_blank">http://www.thawte.com/certs/server/keygen/msiis5/msiis5.html</a> 
          </p>
        </blockquote>
        <p><b>Step 2 - Request Certificate</b> </p>
        <blockquote> 
          <p>Go to www.thawte.com and register for a 128 bit &quot;super certificate&quot;. 
          </p>
          <p>You will need to enter: <br>
            CSR (see instructions above)<br>
            Contact details<br>
            Credit card details<br>
            Proof of domain ownership<br>
            Proof of company ownership (a company registration certificate for 
            instance)</p>
          <p>
			Detailed instuctions can be found here - <a href="/ssw/redirect/Thawte/ThawteServerStep1.htm" target="_blank">https://www.thawte.com/cgi/server/step1.exe</a>
          </p>
        </blockquote>
        <p><b>Step 3 - Download Certificate</b> 
        <blockquote> They will take 2-4 days to check this.<br>
          Once the certificate has been issued, you will be able to download it 
          from your personal status page by clicking on the &#147;Fetch Certificate&#148; 
          button (which only appears once the certificate has been issued). </blockquote>
        <p><b>Step 4</b> - <b>Configure IIS5</b> 
        <blockquote> 
			Step 1 - Open up the IIS Certificate Wizard<br>
			Step 2 - Request Certificate<br>
			Step 3 - Download Certificate<br>
			Step 4 - Configure IIS5<br>
			insert new IIS instructions here</P>
<P>Detailed instuctions can be found here - <A href="/ssw/redirect/Thawte/ThawteSetup.htm" target="_blank">http://www.thawte.com/support/server/msiis/msiis5_install/msiis5.html 
</A>
          <!--
          <p>add the certificate snap-in to your MMC (Microsoft Management Console). 
            To do this go to Start &gt; Run &gt; MMC &gt; Console &gt; Add/Remove 
            Snap-in.<br>
            Add the snap-in to your console root. <br>
            use the Installation Wizard to select the certificate snap-in and 
            save the changes you have made before exiting the MMC. All the request 
            files you generate and their corresponding certificates will be installed 
            in this Certificates folder. <br>
          </p>-->
        </blockquote>
        <p><b>Before doing this you should try installing a Test Certificate</b>
        <blockquote> To familiarize yourself with the workings of a Thawte certificate 
          on IIS5 you can configure a test certificate on your web server as follows:
<p>a. Generate the private key and CSR files: <br>
          Use the IIS5 Certificate Wizard to generate your public/private key 
          pair. You must not use the same CSR to request a TEST certificate and 
          a Trusted certificate. IIS5 is not able to replace the TEST certificate. 
        </p>
        <p>b. Generate a test certificate: <br>
          Go to https://www.thawte.com/cgi/server/try.exe and paste in your CSR 
          (Certificate Signing Request). Within minutes, you should receive an 
          &#147;un-trusted&#148; test certificate in email. Save it to a file 
          called &#147;testcert.crt&#148;. You can get your browser to &#147;trust&#148; 
          that test certificate by clicking on http://www.thawte.com/servertest.crt 
          and installing the Test Certificate CA (Certificate Authority) root. 
        </p>
        <p>c. Install the test certificate: <br>
          Install the certificate using the Server Certificate Wizard which you&#146;ll 
          find in the Directory Security tab. Remember that with IIS5 you cannot 
          use the same CSR to request both a TEST certificate and a trusted certificate, 
          so make sure that you are able to recognize that this request will be 
          used for testing purposes only. Make sure that port 443 is enabled in 
          the website Properties before you try to access the website over SSL. 
          As soon as you are able to access your website using the &#147;https://&#148; 
          prefix and view the TEST certificate successfully, you can proceed to 
          the next step. </p></blockquote>
        <p><b>Securing virtual hosts</b> <blockquote>
          If you have secure virtual hosts, each will need its own IP, as SSL 
          does not support name-based virtual hosts.</blockquote>
        <p><b>Using HTTPS on SSW Web Page</b> <blockquote>
          All you need to do is to set the a href tag to HTTPS:// instead of HTTP:// when
          you want to use secure server.  Only use HTTPS when you need the link to be
          secure as it is slower then the normal HTTP.
          <br><Br>
          eg. &lt;a href="<b>HTTPS</b>://www.ssw.com.au/shop/basket.aspx"&gt;Basket&lt;/a&gt;
          
          </blockquote>
          
          
        <p><b>Useful URLs</b><blockquote>
        <p>Common problems experienced with IIS are dealt with in our FAQs: <a href="/ssw/redirect/Thawte/ThawteIISDoc.htm" target="_blank">http://www.thawte.com/support/server/iisdoc.html</a>. 
        </p>
          <p>You&#146;ll find a key generation guide for IIS4 at: <a href="/ssw/redirect/Thawte/ThawteKeyGenIIS4.htm" target="_blank">http://www.thawte.com/certs/server/keygen/iis4.html 
            </a><br>
            The certificate enrollment process for SSL and SuperCerts begins at: 
            <a href="/ssw/redirect/Thawte/ThawteCertRequest.htm" target="_blank">https://www.thawte.com/certs/server/request.html</a> 
            <br>
            How to generate a test certificate: <a href="/ssw/redirect/Thawte/ThawteTryCert.htm" target="_blank">https://www.thawte.com/cgi/server/try.exe</a> 
            <br>
            Installing the test certificate CA root into your browser: <a href="/ssw/redirect/Thawte/ThawteServerTest.htm" target="_blank">http://www.thawte.com/servertest.crt</a>
        </blockquote>
      </blockquote>
      
		
</asp:content>