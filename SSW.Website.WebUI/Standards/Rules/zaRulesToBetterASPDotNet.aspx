<%@ Page Language="vb" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better ASP.NET " %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    	<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />	

    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532302E4E45542050726F6A65637473')">
            Let us know</a> what you think.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        width="100%">
        <tr>
            <td>
                <ol>
                    <li><a href="#AddOutput">Do you know to add Output Caching to menus?</a></li>
                    <li><a href="#CheckPerformance">Do you know to check performance?</a></li>
                    <li><a href="#DoubleBind">Do you know to avoid the double bind?</a></li>
                    
                </ol>
            </td>
        </tr>
    </table>
    <ol>
      <li>
            <h2><a name="AddOutput"></a>Do you know to add Output Caching to menus? </h2>
             <p>It's not just menus; all static content should have Caching set. This is especially important if your static content is built from data that rarely changes.</p>
<pre class="code">&lt;%@OutputCache Duration=&quot;900&quot; Shared=&quot;true&quot; VaryByParam=&quot;None&quot; %&gt;</pre>
<b>Figure: make sure you always add output caching</b>
         </li>   
         <li>
          <h2><a name="CheckPerformance"></a>Do you know to check performance?</h2>
           <p>
            In order to make sure you have not done something silly that will kill your website it is worth checking to see what the worst performing pages are on your site.<br />
            In order to do this download Log Parser 2.2 and run this command:
          </p>
           <pre class="code">
            logparser "select top 10 cs-uri-stem, time-taken from INSERT_YOUR_IIS_LOG_FILE_NAME.log group by cs-uri-stem order by time-taken desc" -q:on
           </pre>
           <b>Figure: -Log parser command to fin top 10 bad pages</b><br />
           <p>This will list the top 10 worst preforming pages on your site. </p>
           <pre class="code">
            /Home/catalog/searchresults.aspx                         363015 
            /Home/catalog/searchresults.aspx                         316234 
            /Home/catalog/searchresults.aspx                         226375 
            /Home/Cars.aspx                                    221296 
            /Home/images/t/34-60684_StandardImage.image.ashx 131937 
            /Home/Vans.aspx                                     127281 
            /Home/Bikes.aspx                                    114750 
            /Home/catalog/searchresults.aspx                         89375 
            /Home/images/t/34-4220_StandardImage.image.ashx  81453 
            /Home/ScriptResource.axd                                 79609
           </pre>
           <b>Figure: Both the Search pages and the product pages are performing badly</b><br />
           <p>Note: You may need to check <a href="http://blogs.technet.com/b/marcelofartura/archive/2006/10/26/real-case-iis-and-asp-net-hanging-or-poor-performance-intermediary.aspx">IIS and Asp.Net hanging or poor performance</a> if you are having real time problems.</p>          
         </li>
         <li>
          <h2><a name="DoubleBind"></a>Do you know to avoid the double bind?</h2>
          <p>
           In the good old days before Web 2.0 (Asynchronous web) you could get away with checking for IsPostBack alone to determine if you should bind the data. Now you need to check IsCallback as well.
          </p>
          <pre class="code">
           protected void Page_PreRender(object sender, EventArgs e) 
            { 
                BindData(!this.IsPostBack); 
            } 
          </pre><br />
          <b>Figure: Bad example � this code will still fire on a Async call</b>
          <pre class="code">
           protected void Page_PreRender(object sender, EventArgs e) 
            { 
                BindData(!this.IsPostBack || !this.IsCallback); 
            } 
          </pre><br />
           <b>Figure: Good example � this code will now not fire on Aync calls</b>
         </li> 
               
    </ol>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/people/alumni/martin-hinshelwood">Martin Hinshelwood</a><br />      
    </p>
</asp:Content>
