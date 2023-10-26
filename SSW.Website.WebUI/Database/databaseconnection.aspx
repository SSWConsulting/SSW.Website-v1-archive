<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Dynamic Websites"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				

 <br>
      This is an introduction for those unfamiliar with the concept of a &quot;dynamic&quot; 
      or &quot;data driven&quot; website. There are a few <a href="DatabaseConnection.aspx#Example">examples</a> 
      at the base of this page.
      <p>There are 
        two types of sites. One we call &quot;brochure sites.&quot; You can tell 
        a &quot;brochure site&quot; as the address normally ends in .htm. These 
        have information about a company such as contact details, a few pictures 
        and photos of staff, a list of a few products and maybe a couple of prices. 
        These sites are &quot;static&quot; in that the only way you can make changes 
        is to manually open up the file, change the data and upload the new version 
        to the web. Managing these sites is time-consuming.</p>
      <p>This type 
        of site serve a purpose, but as a company develops it's web strategy, 
        they see its limitations and seek to find a better way of delivering their 
        particular product or service.</p>
      <p> The second 
        type are &quot;dynamic sites.&quot; The information you read (and the 
        pictures you look at) on these sites don't come from the html pages, but 
        from the database that the site is connected to. These sites often end 
        in .asp (Microsoft Active Server Pages) or .cfm (Cold Fusion). The advantage 
        is that when you update your database, your website is also updated.</p>
      <p><b>The 
        Easy Way to Discover Cowboy Web Developers</b></p>
      <p><b><b><img src="Images/Cowboy.gif" alt="Cowboy" align="left" width="70" height="67"></b></b>Ask 
        them &quot;Can you publish our product list, catalogue etc... on our Web 
        Site?&quot; </p>
      <p>If they reply 
        &quot;Yes, that&#146;s easy&quot;, ask them, &quot;When prices (or other 
        information) change, how will we keep the Web Site copy up-to-date?&quot; 
        </p>
      <p>If they then 
        reply &quot;Just give me the changes and I will update it for you (at 
        an hourly cost)&quot;, you've just discovered another cowboy! 
      </p>
      <p><b>Scenario</b></p>
      <table width="40%" border="2" cellpadding="5" align="right" cellspacing="2" bordercolor="#FF0000">
        <tr> 
          <td bgcolor="#CCCCCC" bordercolor="#FFFFFF"><b>What 
            are your Options?</b>
            <p>1. 
              Static pages - time consuming, painful to administrate, fast loading</p>
            <p>2. 
              Dynamic Pages - efficient, flexible, less duplication of work, if 
              designed incorrectly can be slow loading</p>
          </td>
        </tr>
      </table>
      <p>Let's say 
        you run a company that sells Camping Tents. You've been able to keep your 
        &quot;brochure site&quot; up to date as Tent prices haven't been changing 
        much and there's only a few different models on the market. So far it's 
        been great.</p>
      <p>One day you 
        receive a phone call from the CEO of Camping Tents Inc. He tells you that 
        the tent market is about to explode. There will be 500 more models of 
        tents entering the market, each in &quot;5 popular colours.&quot; Not 
        only that, he warns: &quot;there's going to be a lot of price fluctuations, 
        especially in the first few months, and who knows after that.&quot;</p>
      <p>&quot;I hope 
        I can count on you...&quot; he says, menacingly.</p>
      <p>What do you 
        do? You could stay up all night, every night for the next two years adding 
        new pictures to your brochure site, changing prices, deleting products. 
        You wouldn't be alone..</p>
      <p>Or you could 
        take the smart option. You could build a database which manages your entire 
        site. When you get a new product, or a new price for an existing product, 
        all you do is add it to the database (on-line) and, voila, your website 
        is also updated. It's that simple.</p>
      <p>Which option 
        would you take?</p>
      <p><b>Where 
        to From Here?</b></p>
      <p>If 
        your interested in maximising the benefits from a team with proven experience 
        and the latest technology <a href="/ssw/Company/AboutUs.aspx#ContactUs">call 
        now</a> to arrange a meeting to discuss your requirements, or <a href="/ssw/Shop/Login.aspx">become 
        a member</a> and drop us a line.</p>
  <h2><a name="Example"></a>Examples  </h2>
	 <h2> Shopping On-Line Using ASP </h2>
  
      We have an example 
      of on-line shopping database 
      which has been built using Active Server Pages. 
       
      <p>ASP technology 
        is used on this Web Site. Feel free to visit our <a href="../Products/">Products 
        page</a> to see how SSW is using ASP now! </p>
	<h2> Adding Information to a Database Using ASP </h2>
		
      <p>The uses 
        for ASP are virtually unlimited. In this example see a form that enters 
        data into our corporate database. <br>
      </p>
     <h2> Sending Email Using ASP </h2>
	 
      <p>This example 
        demonstrates how SSW uses ASP technology to send an email. Try this example 
        and <%--<a href="Email.asp">--%>send an email<%--</a>--%> to your friend.<br>
        </p>
     <!-- <h2> Get Free email Updates When This Pages Changes! </h2>
     
      <form method="GET" action="http://www.netmind.com/cgi-bin/uncgi/url-mind">
        
<input type="TEXT" size="60" name="required-email" value="type your email address here...">
        <input type="HIDDEN" value="http://www.ssw.com.au" name="url">
        <input type="SUBMIT" value=" Press Here to Register! " name="SUBMIT">
        
      </form>  
      -->    
		</asp:content>