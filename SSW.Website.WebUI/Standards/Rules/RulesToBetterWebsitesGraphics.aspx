 <% Response.RedirectPermanent("https://rules.ssw.com.au/rules-to-better-websites-graphics") %>

<%--<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>--%>

<%--<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
	<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
	<p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057656273697465732532304772617068696373')"> Let us know</a> what you think.</p>
	<div class="TableOfContents">
		<h3>Rules to Better Websites - Graphics</h3>
		<ol>
		    <li><a href="#KeepDevsAway">Do you keep developers away from anything related to design or look and feel?</a></li>
			<li><a href="#TextratherthanImages">Do you use text rather than images where appropriate?</a></li>
			<li><a href="#RightFormat">Do you know how to save your graphics in the right format?</a></li>
            <li><a href="#ImagesJpeg">Do you know when to use JPG?</a></li>
			<li><a href="#ImagesPng">Do you know when to use PNG?</a></li>
            <li><a href="#ImagesGif">Do you know when to use SVG?</a></li>
			<li><a href="#ImagesBmp">Do you avoid BMPs for the Internet at all times?</a></li>
			<li><a href="#ImageStyles">Do you use image styles to ensure great looking content?</a></li>
			<li><a href="#ScreenshotGalleries">Do you avoid having unreadable screenshot galleries (aka thumbnails)?</a></li>
			<li><a href="#BalloonScreenShots">Do you know how to use balloons in screenshots for instructions?</a></li>
			<li><a href="#DuplicateImages">Do you make sure your website doesn't have multiple copies of the same image?</a></li>
			<li><a href="#ImagePrefix">Do you prefix your images appropriately?</a></li>
			<li><a href="#ImagesSizeProperties1">Do you add width and height properties to images in user controls?</a></li>
			<li><a href="#ImagesSizeProperties2">Do you exclude width and height properties from image references in content?</a></li>
			<li><a href="#Favicon">Do you have a favicon in your webpage?</a></li>
			<li><a href="#DontIncludePersonalInfo">Do you know not to include toolbar and taskbar junk in screenshots?</a></li>
			<li><a href="#ImageSprites">Do you use image sprites to reduce HTTP requests?</a></li>
		</ol>
	</div>
	
	<div id="mainContent">
	<ol>
		<li>
			<h2><a name="KeepDevsAway"></a>Do you keep developers away from anything related to design or look and feel?</h2>
			<p>Developers should never do design work. A bad design can be dangerous for the project. It's the web designer’s responsibility to create the overall look and feel of the website and define anything related to layout, typography, color selection, branding and overall consistency. The designer is also responsible for any image processing, web optimization and browser/platform testing of the website.
            </p>
            <dl class="badImage">
				<dt><img src="Images/BadDesignGun.jpg" alt="Bad Design" /></dt>
				<dd>Figure: Bad design can be dangerous!</dd>
            </dl>
		</li>
		
		<li>
			<h2><a name="TextratherthanImages"></a>Do you use text rather than images where appropriate?</h2>
			<p>Using text rather than images has multiple advantages: </p>
			<ul> 

			    <li>Downloads faster - a users patience extends to about 7 seconds.</li>
			    <li>Cheaper to update - a simple find and replace.</li>
			    <li>Discoverable by search engines - if people can't get to your site, 
                    what's the point of it being there?</li>
                <li>Readable on an iPhone - Images will either be resized or require scrolling, which would create difficulties for readability.</li>
            </ul>
            <dl class="badCode">
				<dt><pre>&lt;img src="Images/Heading_Welcome.gif"&gt;</pre></dt>
				<dd>Figure: Bad Example - using image for text header</dd>
            </dl>
            <dl class="goodCode">
				<dt><pre>&lt;h1&gt;Welcome to My Page&lt;/h1&gt;</pre></dt>
				<dd>Figure: Good Example - this text can be easily rendered  by the browser and recognized by search engine</dd>
            </dl>
		</li>
		
		<li>
			<h2><a name="RightFormat"></a>Do you know how to save your graphics in the right format?</h2>
			<p>If you've ever wondered why the formats of graphics on the web differ from each other, you're not alone. 
                With SVGs, PNGs, and JPGs, it's hard to know which format you should use in a particular situation. 
                Don't simply add any image that looks alright, it is very important to know the advantages and disadvantages of each format for optimization. </p>
			<ul>
            <li><a href="#ImagesJpeg">Do you know when to use JPG?</a></li>
			<li><a href="#ImagesPng">Do you know when to use PNG?</a></li>
            <li><a href="#ImagesGif">Do you know when to use SVG?</a></li>
			</ul>
		</li>	
			
		<li>
            <h2> <a name="ImagesJpeg"></a>Do you know when to use JPG?</h2>
			<p>In line with the statement above, all photographs should be stored in JPG format. JPG rationalizes the quality of the image by averaging out the colors in segments of the image that it defines. To see an example of this working, try lowering the quality of a JPG to minimum quality.</p>
			<dl class="badImage">
				<dt><img src="Images/Screen-JPGQuality1.jpg" alt="100% Compression" /></dt>
				<dd>Figure: Bad Example – Low quality JPG (11.87k)</dd>
			</dl>
			<dl class="badImage">
				<dt><img src="Images/Screen-JPGQuality2.jpg" alt="Uncompressed" /></dt>
				<dd>Figure: Bad Example – Uncompressed JPG (159.6k)</dd>
			</dl>
			<dl class="goodImage">
				<dt><img src="Images/Screen-JPGQuality3.jpg" alt="100% Compression" /></dt>
				<dd>Figure: Good Example – Compressed JPG (59.6k)</dd>
			</dl>

		</li>
	    <li>
			<h2><a name="ImagesPng"></a>Do you know when to use PNG?</h2>
			<p><a href="/ssw/Redirect/PNG.htm" target="_blank">PNG</a> is an alternative to JPG, heavily endorsed by some circles, mainly because of its open source and non-commercial nature.</p>
			<p>PNG boasts:</p>
			<ul>
				<li>Alpha blending (24 bit transparency map support)</li>
				<li>Unlimited and limited color palettes. This makes it a good alternative to BMP.</li>
				<li>Multiple CRCs so that file integrity can be checked without viewing</li>
			</ul>
			<p>However, it has rather poor file compression and should be used sparingly.</p>
		</li>
		<li>
			<h2><a name="ImagesGif"></a>Do you know when to use SVG?</h2>	
			
			<p>Line art graphics and anything with well defined shapes (logos, vector illustrations, e.t.c.) must be saved in SVG format.</p>
            <p>Some of SVG format advantages are:</p>
			<ul>
				<li>Written in XML</li>
				<li>Text-based</li>
				<li>Official W3C graphics standard</li>
                <li>Accessible for people with visual disabilities</li>
                <li>Searchable</li>
                <li>Can be animated</li>
                <li>No pixelation</li>
                <li>Small file size</li>
                <li>Supports transparency</li>
                <li>Text can be selected, copied, spoken by the computer, and indexed by search engines.</li>
			</ul>
			<dl class="badImage">
				<dt><img src="Images/jpg_vs_svg_bad.jpg" alt="Bad Example - Using JPG for line art" width="150" height="119" /></dt>
				<dd>Figure: Bad Example - this graphic is line art, but has mistakenly been saved as a JPEG. It loses resolution.</dd>
			</dl>
			<dl class="goodImage">
				<dt><img src="Images/svg.jpg" alt="Good Example - Using SVG for line art" width="150" height="119" /></dt>
				<dd>Figure: Good Example - the same graphic, saved as an SVG, no pixelation.</dd>
			</dl>
	    </li>
		
		<li>
			<h2><a name="ImagesBmp"></a>Do you avoid BMPs for the Internet at all times?</h2>
			<p>Never use bitmap images (.BMP format) on your website or in emails. BMP is an uncompressed format, and typically has an unlimited color palette. This results in unnecessarily large file 
			sizes, which makes it unsuitable for pretty much everything.</p>
			<p>As an alternative, the most ideal format for Internet-ready lossless images is PNG. Its features are described above in the section <a href="#ImagesGif">Do you know when to use PNG?</a></p>
			<p><span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</span></p> 
		</li>
		
		<li>
            <h2><a name="ImageStyles" ></a>Do you use image styles to ensure great looking content?</h2>
            <p>Many people will simply &quot;plonk&quot; an image onto a web page in between or next to a block of text. This interrupts the flow of the page and gives a disjointed, unprofessional impression.</p>
            <p>A good technique is to set a CSS style to images. This style will be consistent and easy to be used by any person who might edit the website content.</p>
		    <dl class="badImage">
				<dt><img src="Images/imageWithoutStyles.jpg" alt="Image without styles" /></dt>
				<dd>Figure: Bad Example - The image has no styles</dd>
			</dl>
			<dl class="goodImage">
				<dt><img src="Images/imageWithStyles.jpg" alt="Image with styles" /></dt>
				<dd>Figure: Good Example - The image has CSS driven margin, padding, borders</dd>
			</dl>
		    <p>It's also important to choose the correct semantic formatting for images. Different HTML codes might give the same look and feel, but the best way to add images to your page is using <strong>&#60;dl&#62;</strong>, <strong>&#60;dt&#62;</strong> and <strong>&#60;dd&#62;</strong> tags.</p>
			<dl class="badCode">
                <dt>
                    <pre>
    &#60;div class="badImage"&#62;
        &#60;img src="Images/imageWithoutStyles.jpg" alt="Image without styles" /&#62;
        &#60;span&#62;Figure: Bad Example - The image has no styles&#60;/span&#62;
    &#60;/div&#62;   
                    </pre>
                </dt>
                <dd>Figure: Bad Example - Inserting images and captions inside &#60;div&#62; tags</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
    &#60;dl class="badImage"&#62;
        &#60;dt&#62;&#60;img src="Images/imageWithoutStyles.jpg" alt="Image without styles" /&#62;&#60;/dt&#62;
        &#60;dd&#62;Figure: Bad Example - The image has no styles&#60;/dd&#62;
    &#60;/dl&#62;   
                    </pre>
                </dt>
                <dd>Figure: Good Example - Using the &#60;dl&#62;, &#60;dt&#62; and &#60;dd&#62; tags for images</dd>
            </dl>
		</li>
		
	    <li>
			<h2><a name="ScreenshotGalleries"></a>Do you avoid having unreadable screenshot galleries (aka thumbnails)?</h2>
            
			<p>Many sites have screenshot galleries that offer a list of all the screens within an application, and an option to enlarge them. There's just one problem: you can't see what they contain!</p>
			
			<dl class="badImage">
				<dt><img src="Images/ScreenGalleryBad.gif" alt="Bad Screen Gallery" /></dt>
				<dd>Figure: Bad Example - The contents of the screenshots are difficult to make out</dd>
			</dl>
			<p>What we suggest as an alternative is to have one large image - full size - (and possibly a list of descriptions) to allow users to have a large screenshot to view right from the get go. This might look something like:</p>
			<dl class="goodImage">
				<dt><img src="Images/ScreenGalleryGood.jpg" alt="" /></dt>
				<dd>Figure: Good Example - This is a viable alternative to a typical image gallery.</dd>
			</dl>
			<p>Our <a href="/ssw/CodeAuditor/UserGuide.aspx ">Code Auditor User Guide</a> provides a good example for this rule. </p>
			
		</li>
		
		      <li>
		  <h2>
		  <a name="BalloonScreenShots"></a>Do you know how to use balloons in screenshots for instructions?
		  </h2>
          <p>
          Communicating problems is more effective when using screenshots. To make screen captures even 
          better, add balloons that have the message (aka speech bubbles). The balloon is great because 
          you can point to a specific part of the image. It is much easier than reading a 'wall of text'.
          </p>  	
          <p>
          <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx">Learn more about using balloons in screenshots...</a>
          </p>	  
		  
	</li>
			
		<li>
			<h2><a name="DuplicateImages"></a>Do you make sure your website doesn't have multiple copies of the same image?</h2>
			<p>Image files are outside the realm of most database developers mind sets. So I've seen many very messy websites that have duplicate images all over the place. You only need an image in one place in your web site. The rule is that if it is used once, it goes in the associated directory - e.g. /ssw/Company/Images OR if it is used more than once, the image is moved to the root images directory - e.g. /ssw/Images. One of benefits of avoiding duplicate images is speed up web surfing for your users. </p>
		</li>
        <li>
			<h2><a name="ImagePrefix"></a>Do you prefix your images appropriately?</h2>
			<p>It is important to sensibly name your images. We don't use "img" (in the same way we don't use "tbl" for tables).</p>
			<p>However, for special types of images we do include a prefix. </p>
			
			<table class="clsSSWTable" border="1" cellpadding="4">
				<tr>
					<td><b>Image Type</b></td>
					<td><b>Prefix</b></td>
					<td><b>Example</b></td>
				</tr>
				<tr>
					<td>Banner</td>
					<td>ban</td>
					<td>banSSW.gif</td>
				</tr>
				<tr>
					<td>Icon</td>
					<td>ico</td>
					<td>icoSSW.ico</td>
				</tr>
				<tr>
					<td>Screenshot</td>
					<td>Screen</td>
					<td>ScreenCodeAuditorMainWindow.gif</td>
				</tr>
			</table>
			<dl class="goodImage">
			<dt><img src="Images/ScreenFilesWithScreenPrefix.gif" alt="" width="426" height="197" /></dt>
			<dd>Figure: Correctly named images</dd>
			</dl>
		</li>	
		
		<li>
			<h2><a name="ImagesSizeProperties1"></a>Do you add width and height properties to images in user controls?</h2>
			<p>Framework pages (i.e., user controls and common layout files) <b>should</b> have width and height properties specified for all images 
			that are used. This means that the page's layout will be rendered correctly while loading and when the user has images turned off in their browser.</p>
            <p>
                Images that have a height and width property set can improve your page’s load times by a few milliseconds. 
                However, this will cause problems for any responsive behaviour of the page and should be used when appropriate. 
                It is exceedingly unusual for an image in the site layout to not be placed using CSS, so it’s likely if this rule applies to you, you should switch to CSS and background-property.
            </p>

			<dl class="badCode">
				<dt><pre>&lt;img src=&quot;TopBar_Row1_Col2.gif&quot; /&gt;</pre></dt>
				<dd>Figure: Bad Example - User controls does not contain width and height properties</dd>
			</dl>
            			<dl class="goodCode">
				<dt><pre>&lt;img src=&quot;TopBar_Row1_Col2.gif&quot; width=&quot;86&quot; height=&quot;20&quot; /&gt;</pre></dt>
				<dd>Figure: Good Example - User controls contains width and height properties</dd>
			</dl>
			<p><span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</span></p> 
		</li>
		
		<li>
			<h2><a name="ImagesSizeProperties2"></a>Do you exclude width and height properties from image references in content?</h2>
			<p>In the case of content (<a href="#ImagesSizeProperties1">unlike a site's framework files</a>), specifying the width and height 
			properties for images on your web pages can sometimes turn out to be more trouble than it's worth, particularly if the image is likely to 
			be changed a few times. Adding fixed widths to your images also destroys your content on any responsive websites.</p>
			<p>As a result, we have made a rule that content pages <b>should not</b> have the image dimensions specified in HTML.</p>
			<p>We do have one exception to this rule: any HTML content that is to be sent out via email, as Outlook blocks images by default and 
			renders them as placeholders with very lengthy alternate text. The page is invariably stretched to widths that make the 
			contents of the message somewhat unreadable.</p>

			<dl class="badCode">
				<dt><pre>&lt;img src="MyPic.gif" width=&quot;93&quot; height=&quot;25&quot;&gt;</pre></dt>
				<dd>Figure: Bad Example - Including the width and height properties for content images</dd>
			</dl>

			<dl class="goodCode">
				<dt><pre>&lt;img src="MyPic.gif"&gt;</pre></dt>
				<dd>Figure: Good Example - Exclude width and height properties for content images</dd>
			</dl>
			<p><span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</span></p> 
		</li>
		
		<li>
			<h2><a name="Favicon"></a>Do you have a favicon in your webpage?</h2>
			<p>A Favicon is a small image file included on professional developed sites. The favicon reflects the look and feel of the web site or the organizations visual identity.</p>
            <dl class="badImage">
				<dt><img src="/ssw/Standards/Rules/Images/favicon-bad.jpg" /></dt>
				<dd>Figure: Bad Example - When you don't add a favicon the user sees a generic icon</dd>
			</dl>
            <dl class="goodImage">
				<dt><img src="/ssw/Standards/Rules/Images/favicon-good.jpg" /></dt>
				<dd>Figure: Good Example - Using the favicon gives your website professional look and feel</dd>
			</dl>
			
			<h4>Which formats to use?</h4>
            <p>The size for the image you will use is 16x16 pixels, using either 8-bit or 24-bit colors. The format of the image must be one of PNG (a W3C standard), GIF, or ICO.</p>
            <p><strong>Note:</strong> Some Internet Explorer versions supports ICO only. <a href="https://www.google.com.br/#hl=en&safe=off&sclient=psy-ab&q=convert+png+to+ico&oq=convert+png+to+ico&gs_l=hp.3..0l4.980.3953.0.4436.18.14.0.3.3.1.441.4073.2-9j3j2.14.0.les%3B..0.0...1c.1.5.psy-ab.8wQKEsg0jbw&pbx=1&bav=on.2,or.r_gc.r_pw.r_cp.r_qf.&bvm=bv.43287494,d.eWU&fp=548854122be17fbe&biw=1440&bih=756">Search for an image coverter in Google</a> to create an ICO file.</p>

			<h4>How to implement the favicon?</h4>
			<ol>
			    <li>Copy your company's favicon to the root of the site</li>
			    <li>Add the yellow code below inside the &lt;HEAD&gt; tags in your HTML</li>
			</ol>
			<table class="clsSSWTable">
			<tr>
			    <td>
			        <p>&lt;head&gt;<br />
			        &lt;title&gt;Page Title&lt;/title&gt;<br />
			        <span class="highlight">&lt;link rel=&quot;shortcut icon&quot; href=&quot;/images/favicon.ico&quot; type=&quot;image/x-icon&quot; /&gt;</span><br />
			        &lt;/head&gt;</p>
			    </td>
			</tr>
			</table>
			<strong>Figure: One line of HTML lets you add your company's icon to your web page</strong>
            <p>This works for most websites, including ASPX WebForms, MVC and WordPress. For SharePoint, please read <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterSharePoint/Pages/SPSiteFavicon.aspx">Does your SharePoint site have a favicon?</a></p>
			<p><span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</span></p> 
			<span class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/Favicon.aspx" >rule sample page</a> for demo scan.</span>	
	    </li>
	    
		<li>
			<h2><a name="DontIncludePersonalInfo"></a>Do you know not to include toolbar and taskbar junk in screenshots?</h2>
			<p>Screenshots are a very important part of websites these days. Be careful to avoid unnecessary toolbars and taskbars in screen shots.
			</p>
			<dl class="badImage">
				<dt><img src="Images/Bad_Screenshot-with-personal-data.JPG" alt="bad example as the taskbar and the Googletoolbar have been captured" /></dt>
				<dd>Figure: Bad Example - This screenshot includes personal browsers</dd>
			</dl>
			<dl class="goodImage">
				<dt><img src="Images/Good_No-Personal-Info.jpg" alt="Good example  the taskbar and Googletoolbar have been hidden before capturing the screenshot" /></dt>
				<dd>Figure: Good Example - This screenshot has been cropped to hide personal browsers</dd>
			</dl>
			<p>Tips:</p>
			    <ol>
			        <li>Use a region screen shot if appropriate (however the URL is generally helpful in most browser screen shots)</li>
			        <li>Go full screen eg. F11 in Internet Explorer, then &lt;Alt&gt;+&lt;Print&gt;</li>
			        <li>Always have the 'Auto-hide the taskbar' option checked<br />
			            <dl class="goodImage">
			            <dt><img src="Images/Good_Auto-Hide-Taskbar.gif" alt="Set toolbars to auto-hide" /></dt>
			            <dd>Figure: Always have the 'Auto-hide the taskbar' option checked so you do be screen shots</dd>
			            </dl>
			        </li>
			    </ol>
         </li>           
         <li>
             <h2><a name="ImageSprites"></a>Do you use image sprites to reduce HTTP requests?</h2>
             <p>A sprite is an image that has all of your other images inside of it, so if your sprite 
             has 5 images, you&#8217;d be getting rid of 4 HTTP requests and speeding your site&#8217;s loading time 
             up by the time for each of those 4 requests latency. You will use CSS selectors for each 
             link to display only a portion of the image sprite - effectively showing just the 
             image you need.</p>
             <p>The benefits to use CSS image sprites are:</p>
             <ul>
                <li>to save bandwidth</li>
                <li>to reduce HTTP server requests</li>
				<li>to speed up page load times</li>
             </ul>
             <p>Ensure that the file size of your master image isn't greater than the sum of its pieces.</p>

                <dl class="badImage">
                    <dt><img src="Images/ImageSprites_bad.gif" alt="One image per Icon" /></dt>
                    <dd>Figure: Bad Example - four images, one for each icon</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/ImageSprites_good.gif" alt="One image contains all icons" /></dt>
                    <dd>Figure: Good Example - one image contains all the icons and CSS selectors make the browser display only the part you need</dd>
                </dl>
	    </li>

</ol>
</div>
<br />

<h2>Acknowledgements</h2>
<!-- SSW Link Auditor - Ignore end -->
<p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JH">Joe Hardy</a><br />
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br />
</p>
</asp:content>--%>