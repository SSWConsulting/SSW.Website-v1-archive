<%@ Page Language="vb" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Blogs" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <div>
        <p>
            At SSW we encourage our employees to actively keep <a href="">blogs</a> about their achievements,
            discoveries, interests, and ideas. The biggest problem about putting up an article is that once it's
            up there its there for the world to see. Do you express yourself properly in blog posts?
        </p>
        <p>
            This set of rules aims to help you efficiently write clear, effective blogging articles. In some cases you might
            be interested in seeing our <a href="RulesToBetterTechnicalDocumentation.aspx">Rules to Better Technical Documentation</a> for comments on 
            how best to express your techical problems.
        </p>
        <p>
            Do you agree with them all? Are we missing some? Email me your tips, thoughts or
            arguments.&nbsp; <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Let me know</a>
            what you think.</p>
    </div>
    <div class="TableOfContents">
        <h3>
            Rules to Better Blogs</h3>
        <ol>
            <%--<li><a href="#BlogSmart">Are you "Blog Smart"?</a></li>--%>
            <li><a href="#UIAware">Are you still UI aware?</a></li>
           <%-- <li><a href="#JotIdeas">Do you quickly jot down ideas rather than Do you quickly jot down ideas rather than interupting work?</a></li>
            <li><a href="#Articles">Do you know when to write an article?</a></li>--%>
            <li><a href="#FactualContent">Do you know that 'Factual Content is King'?</a> </li>
            <li><a href="#PostEmailToBlogs">Do you post all useful internal emails to the Company Blog?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol style="margin:0; padding: 0;">
           <%-- <li>
                <p> 
                <h2>
                    <a id="BlogSmart" name="BlogSmart"></a>
                    Are you &quot;Blog Smart&quot;?              http://www.internetnews.com/bus-news/article.php/3509771
                    http://michaelhyatt.blogs.com/workingsmart/2005/03/corporate_blogg.html
                    http://blog.plaxoed.com/?p=41#comments - "Be prudent..." </h2> 
                </p>
            </li>--%>
            <li>
                <h2>
                    <a id="UIAware" name="UIAware"></a>
                    Are you still UI aware?
                </h2>
                <p>
                    <a href ="http://www.useit.com/alertbox/weblogs.html">http://www.useit.com/alertbox/weblogs.html</a>
                </p>
            </li>
           <%-- <li>
                <h2>
                    <a id="JotIdeas" name="JotIdeas"></a>
                    Do you quickly jot down ideas rather than interupting work?
                </h2>
            </li>
            <li>
                <h2>
                    <a id="Articles" name="Articles"></a>
                    Do you know when to write an article?
                </h2>
                
            </li>--%>
            
            
             <li>
                <h2>
                    <a id="FactualContent" name="FactualContent"></a>
                    Do you know that 'Factual Content is King'?
                </h2> 
                
                <p>
                It is easy to think that 'content is king', that is a well known quote. But Rupert Murdoch said it better "factual content is king" so: <br />
                * Fix up your mistakes, and <br />
                * Strike through content that is now been superseded and put a comment eg. "This is now not an issue as it was fixed up in TFS SP1" <br />
                </p>               
            </li>
            <li>
              <h2><a name="PostEmailToBlogs"></a>Do you post all useful internal emails to the Company Blog?</h2>
              <ol>
                Most companies include intelligent people who make some relevant and useful points for the greater community or industry, while writing internal emails. Those emails should be published to the company blog for the following reasons:
               <li>It will provide great content for Google to index</li>
               <li>Raise the profile of your company around the topics discussed</li>
               <li>Show the industry that you have intelligent and forward thinking staff</li>                              
              </ol>
            </li>
            
            
            
       </ol>
        <div>&nbsp;</div>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AW">Andrew Weaver</a><br />
        </p>
    </div>
</asp:Content>
