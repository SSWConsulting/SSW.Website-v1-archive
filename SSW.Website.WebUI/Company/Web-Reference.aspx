<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="SSW Typography & Web Design References" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Typography & Web Design References</h1>
    <h2>Design Templates for web</h2>
</asp:Content>
<asp:Content ID="Slider" ContentPlaceHolderID="Slider" runat="server">
    <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="/ssw/images/raven/slider-type.jpg" alt="" />
            </div>
            <div class="item">
                <a href="#Slider-Anchor">
                    <img src="/ssw/images/raven/slider-howto.jpg" alt="" /></a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Table of Contents:</h2>
    <ul>
        <li><a href="#Headings">Headings</a></li>
        <li><a href="#Lists">List Styles</a></li>
        <li><a href="#Tables">Tables</a></li>
        <li><a href="#Text">Quotes and Text Styles</a></li>
        <li><a href="#Images">Images</a></li>
        <li><a href="#Video">Video</a></li>
        <li><a href="#Lightbox">Lightbox</a></li>
        <li><a href="#Buttons">Buttons</a></li>
        <li><a href="#Tooltips">Tooltips</a></li>
        <li><a href="#Slider-Anchor">Slider</a></li>
        <li><a href="#Forms">Forms</a></li>
        <li><a href="#Accordion">Accordion</a></li>
        <li><a href="#Tips">Tips &amp; FAQ</a></li>
        <li><a href="#Colors">Colors</a></li>
        <li><a href="#Fonts">Fonts</a></li>
        <li><a href="#Masters">Masters</a></li>
    </ul>
    <p>Sidebars Design Templates and Style Samples can be seen below:</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <div class="alert alert-danger">
            <p>We are in release 3.5 "Pigeon" - Our website is fully <a href="http://getbootstrap.com/">Bootstrapped</a>. Please refer to their documentation for information about how to use Bootstrap <b>correctly</b>.</p>
        </div>
        <p>This page is a reference with templates for SSW designers and web content editors. We have tried to make it as simple as possible, under the assumption that users know how to correctly format tags, add classes and understand basic CSS.</p>
        <p>Each content page in SSW Metro have:</p>
        <ul>
            <li>A Title</li>
            <li>A Sidebar - See the <a href="#Tips">Tips &amp; FAQ</a> for how to remove this feature</li>
        </ul>
        <p><a href="/ssw/Consulting/SharePoint.aspx">SharePoint</a> is a good template to base your new pages from.</p>
        <div class="alert alert-info">
            <p>If you have difficulties with this document, please ask <a href="https://ssw.com.au/people/jayden-alchin">Jayden</a> or <a href="https://ssw.com.au/people/tiago-araujo">Tiago</a> for help.</p>
        </div>
    </div>
    <div class="section">
        <h3 class="special"><a name="Headings"></a>Heading Styles Templates and Use Guidelines</h3>
        
        <h1>Heading 1 should be used sparingly.</h1>
        <p>You may put a &lt;span class="red"&gt; inside any paragraph or heading to highlight one or more words in <span class="red">SSW red</span>.</p>
        <h2>Heading 2 is a good size for content</h2>
        <p>We should use heading 2 as the default heading for most text. The heading already contents the title of the page in h1, so there is technically no reason to use anything other than h2 in content.</p>
        <h3>Heading 3 is a comfortable size for content</h3>
        <p>This is a good size for subheadings within content</p>
        <h3 class="special">Heading 3 .special should be used sparingly</h3>
        <p>Alternate bar style heading</p>
        <h4>Heading 4 is used for inline headings</h4>
        <p>This is a good heading to use for small paragraphs.</p>
        <h5>Heading 5 is smaller</h5>
        <p>This is a spare heading that is not used by much. I do not think we will have much use for it since headings 2-4 should cover most cases.</p>
        <h6>Heading 6 is a special heading used for mainly the sidebar</h6>
        <p>A fancy heading.</p>
    </div>

    <div class="section">
        <h3 class="special"><a name="Lists"></a>Lists Design Templates and Style Samples</h3>
        <ul>
            <li>UL no class</li>
            <li>
                <p>List styles work on multiple paragraphs within a list point, as shown in this example. </p>
                <p>Properly formatted, this is what the list styles should look like. </p>
            </li>
        </ul>
        <ul class="good">
            <li>UL class="good"</li>
            <li>
                <p>List styles work on multiple paragraphs within a list point, as shown in this example. </p>
                <p>Properly formatted, this is what the list styles should look like. </p>
            </li>
        </ul>
        <ul class="bad">
            <li>UL class="bad"</li>
            <li>
                <p>List styles work on multiple paragraphs within a list point, as shown in this example. </p>
                <p>Properly formatted, this is what the list styles should look like. </p>
            </li>
        </ul>
        <ol>
            <li>OL no class</li>
            <li>
                <p>List styles work on multiple paragraphs within a list point, as shown in this example. </p>
                <p>Properly formatted, this is what the list styles should look like. </p>
            </li>
        </ol>

    </div>
    <div class="section">
        <h3 class="special"><a name="Tables"></a>Tables Design Templates and Style Samples</h3>
        <h4>Default</h4>
        <p>This is a plain table, borderless and has no class:</p>
        <table>
            <thead>
                <tr>
                    <th colspan="2">Header Row</th>
                </tr>
            </thead>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
        </table>
        
        <h4>Normal</h4>
        <p>Styled table with class "normal"</p>
        <table class="normal">
            <tr>
                <th colspan="2">Header Row</th>
            </tr>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
        </table>

        <h4>Data</h4>
        <p>Styled table with class "data"</p>
        <table class="data">
            <tr>
                <th colspan="2">Header Row</th>
            </tr>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
            <tr>
                <td>Cell 1</td>
                <td>Cell 2</td>
            </tr>
        </table>
    </div>

    <div class="section">
        <h3 class="special"><a name="Text"></a>Quotes and Text Style Samples</h3>
        <blockquote>
            <p>Blockquote can wrap paragraphs and work correctly even without paragraphs. </p>
            This block of text is not wrapped in a paragraph. 
    <span>Span within the blockquote is use to denote speaker</span>
        </blockquote>

        <p class="highlight">highlight: works on paragraphs, divs and spans. </p>
        <p class="greybox">greybox: works on divs and paragraphs.</p>
        <SSW:InfoBox ID="InfoBox" runat="server" Css="interInfoBoxSide" Text="<h1>Attention: SSW Developers</h1><p>This box is only need to be displayed on our internal web server, e.g: ANT.</p>"></SSW:InfoBox>
        <pre>Pre tags used for code snippets. Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit. Pre(serve) displays
 exactly
 
             as is.
             </pre>
        <div class="code">
            code: I find pre tags very awkward to use, so you can create the same effect by using div class="code"
        </div>
    </div>

    <div class="section">
        <h3 class="special"><a name="Images"></a>Images and Figures Style Samples</h3>
        <dl class="bad">
            <dt>
                <div class="greybox">This div has a class "greybox". This is used for text examples.</div>
            </dt>
            <dd>Figure: Bad Example - This dl has a class="bad"</dd>
        </dl>

        <dl class="good">
            <dt>
                <pre>You can use pre or div class="code" for code examples.</pre>
            </dt>
            <dd>Figure: Good Example - This dl has a class="good"</dd>
        </dl>

        <dl>
            <dt>
                <img src="/SSW/images/Raven/SSWLogo.svg" alt="SSW logo" /></dt>
            <dd>Figure: This is an image inside a dt. You do not need use any class on image examples unless it is good or bad.</dd>
        </dl>
        <p>Read rule: <a href="https://rules.ssw.com.au/figures-do-you-use-the-right-html-css-code-to-add-the-useful-figure-caption">Do you use the right HTML/CSS code to add images and captions?</a></p>
    </div>

    <div class="section">
        <h3 class="special"><a name="Video"></a>How To Embed Videos</h3>
        <p>Add the code as following:</p>
        <div class="code">
            &lt;div class="video-player" data-id="VIDEO_ID"&gt;&lt;/div&gt;
        </div>
        <p>There is also an optional data-youtuberes attribute that you can add to the embed code to set the resolution of the thumbail. This is used if a max resolution thumbnail is not available. Possible values in order of quality are: maxresdefault, hqdefault, mqdefault, sddefault and default:</p>
        <div class="code">
            &lt;div class="video-player" data-id="VIDEO_ID" data-youtuberes="hqdefault"&gt;&lt;/div&gt;
        </div>              
        <div class="eric-video"><div class="video-player" data-id="Jveq6VFjWTA" data-youtuberes="hqdefault"></div></div>
        <hr />
        <p>For more info, read the rule: <a href="https://rules.ssw.com.au/a-better-method-for-embedding-youtube-videos-on-your-website">Do you know the right way to embed a YouTube video?</a></p>
    </div>

    <div class="section">
        <h3 class="special"><a name="Lightbox"></a>How to Use the Lightbox</h3>
        <p>We are now using <a href="http://brutaldesign.github.io/swipebox/#features">SwitchBox</a> for responsive features. Usage is the same.</p>
        <div class="code">
            &lt;a href="linkURL" class="<span class="highlight">lightbox</span>" title="ImageSubtitle" rel="GalleryName"&gt;
&lt;img src="imageURL" /&gt;&lt;/a&gt;
        </div>
        <ul>
            <li>Use class "lightbox" on links to activate lightbox</li>
            <li>Use same rel text on multiple links to create gallery in lightbox</li>
            <li>Use title text to create image subtitle</li>
        </ul>
        <a href="/ssw/images/raven/slider_04.png" class="lightbox" rel="Flight" title="Flight 1">
            <img src="/ssw/images/raven/slider_04.png" width="100px" /></a>
        <a href="/ssw/images/raven/slider_04.png" class="lightbox" rel="Flight" title="Why did you delete my camel, Tiagoooo">
            <img src="/ssw/images/raven/slider_04.png" width="100px" /></a>
    </div>

    <div class="section">
        <h3 class="special"><a name="Buttons"></a>Buttons Design Templates and Style Samples</h3>
        <p>You may also use Bootstrap's button classes.</p>
        <p>Each button has two classes; color (red, black, green) and icon (next, done, add). The default is black with no icon. You can mix the classes to make whatever button you want.</p>
        <p>
            Link buttons<br />
            <br />
            <a class="next black">Black, Next</a> <a class="red done">Red, Done</a> <a class="green add">Green, Add</a> <a class="back">back</a>
        </p>
        <p>
            Input buttons<br />
            <input type="submit" value="Classless" />
            <input type="submit" class="next green" value="green, Next" />
            <input type="submit" class="black done" value="black, Done" />
            <input type="submit" class="red back" value="red, back" />
        </p>
        <p>The smaller buttons have the classes 'bookNow' and 'sold-out'. Their colors are default:</p>
        <p>
            <span class="bookNow">Book Now</span> <span class="sold-out">Sold Out</span>
        </p>
        <div class="code">
            <code>&lt;a&gt;&lt;span class="sold-out"&gt;Sold Out&lt;/span&gt;&lt;/a&gt;
            </code>
        </div>
    </div>
    <div class="section">
        <h2><a name="Bootstrap"></a>Bootstrap Features</h2>
        <p>These features have been migrated. Refer to <a href="http://getbootstrap.com/">Bootstrap's</a> documentation for more details.</p>
        <h3 class="special"><a name="Tooltips"></a>Tooltips</h3>
        <p>Example: <a data-content="Bootstrap Tooltip Lorem Ipsum." rel="popover" class="bootstrap-tooltip" data-original-title="Bootstrap Tooltip Title" href="#">Bootstrap Tooltip</a></p>
        <p>This structure looks like this:</p>
        <div class="code">
            &lt;a data-content="Bootstrap Tooltip Lorem Ipsum." rel="popover" class="bootstrap-tooltip" data-original-title="Bootstrap Tooltip Title" href="#"&gt;Bootstrap Tooltip&lt;/a&gt;
        </div>
    </div>
    <div class="section">
        <h3 class="special"><a name="Slider-Anchor"></a>Sliders</h3>
        <p>To add a slider, use the following contentPlaceholder in your aspx page:</p>
        <div class="code">
            <code>
                <span class="highlight">&lt;asp:Content ContentPlaceHolderID="Slider" runat="server"&gt;</span><br />
                &lt;div id="Slider" class="carousel slide hidden-xs" data-ride="carousel"&gt;<br />
                <br />
 
                Bootstrap slider goes here<br />

                <br />
                &lt;/div&gt;<br />
                <span class="highlight">&lt;/asp:Content&gt;</span><br />
            </code>
        </div>
        <ul>
            <li><span class="highlight">&lt;asp:Content ContentPlaceHolderID="Slider" runat="server"&gt;</span> determines the placing of the Slider.</li>
            <li>
                <p><span class="highlight">&lt;div class="carousel"&gt;</span> runs the Bootstrap slider and all the custom css attached to it.</p>
                <p>Thus, if you want to have a header image but not the slider functionality, you can simply omit the div id="Slider"</p>
            </li>
            <li>The class "hidden-xs" hides the slider on mobile devices. You can remove this, but it's better if you leave it in.</li>
            <li>Slider images must be 1200px x 430px. <b>IMAGES MUST BE COMPRESSED.</b> They will be resized to fit the website.</li>
            <li>Slider will work with the lightbox - use <span class="highlight">class="lightbox"</span> on the links</li>
        </ul>
    </div>
    <div class="section">
        <h3 class="special"><a name="Forms"></a>Forms</h3>
        <div class="alert alert-danger">
            <p>
                As of 3.5 Pigeon, we are no longer making custom styles for fields. Refer to <a href="http://getbootstrap.com/">Bootstrap's</a> documentation for the correct formatting.
            </p>
        </div>
    </div>

    <div class="section">
        <h3 class="special"><a name="Accordion"></a>Accordion</h3>
        <p>Our site uses Bootstrap collapsing panels.</p>
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
          <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  <h3 class="panel-title">
                    Collapsible Group Item #1
                  </h3>
                </a>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
              <div class="panel-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              </div>
            </div>
          </div>
        </div>
        <div class="alert alert-info">The accordion style on the homepage is a custom one for that section. You'll have to copy it's #Location id if you want to use it.</div>
    </div>
    <div class="section">
        <h3 class="special"><a name="Colors"></a>Colors & Branding</h3>

        <h3>What are our colors?</h3>
        <p>SSW's remarkable 4 squares are in the following colours:</p>
        <table style="width: 100%; color: #fff; text-align: center;">
            <tr style="height: 40px;">
                <td style="background: #CC4141;">#CC4141</td>
                <td style="background: #333333;">#333333</td>
                <td style="background: #797979;">#797979</td>
                <td style="background: #AAAAAA;">#AAAAAA</td>
            </tr>
        </table>

        <p>When creating designs that incorporate a platform or application, use contextual accent colours which refer to that particular platform:</p>
            <table style="width: 100%; color: #fff; text-align: center;">
                <tr style="height: 60px;">
                    <td style="background: #DD0031;">Angular #DD0031</td>
                    <td style="background: #5C2D91;">.NET #5C2D91</td>
                    <td style="background: #9455CE;">Visual Studio #9455CE</td>
                    <td style="background: #5C2D91;">Blazor #5C2D91</td>
                    <td style="background: #3498DB;">Xamarin #3498DB</td>
                    <td style="background: #0088D5;">Azure #0088D5</td>
                    <td style="background: #038185;">SharePoint #038185</td>
                    <td style="background: #F2C811;">Power BI #F2C811</td>
                </tr>
            </table>
        
        <h3>The SSW red</h3>

        <p>The SSW red is <strong><span class="red">#CC4141</span></strong>, which is a beautiful shade of red.</p>
        <p>See the 3 most used color codes - Hexadecimal (web), RGB (computer monitors and TVs), and CMYK (printing) - for the SSW red:</p>
            <table class="normal">
                <tr>
                    <th>HEX</th>
                    <td style="background: #CC4141; color: #fff;">#cc4141</td>
                </tr>
                <tr>
                    <th>RGB (Red, Green ,Blue)</th>
                    <td style="background: #CC4141; color: #fff;">(204, 65, 65)</td>
                </tr>
                <tr>
                    <th>CMYK (Cyan, Magenta, Yellow, Black)</th>
                    <td style="background: #CC4141; color: #fff;">(0%, 68%, 68%, 20%)</td>
                </tr>
            </table>

        <h3>Related links</h3>
            <ul>
                <li><a href="https://www.ssw.com.au/rules/rules-to-better-branding">Rules to Better Branding</a></li>
                <li><a href="https://www.untethereddesign.com/blog/5-visual-elements">5 visual elements of a brand identity</a></li>
            </ul>
    </div>

    <div class="section">
        <h3 class="special"><a name="Tips"></a>Tips &amp; FAQ</h3>
    </div>
    <div class="section">
        <h3>The paragraph padding seems strange :/</h3>
        <p><span class="text-danger">Your content should be wrapped in a div class="section".</span> You should not be relying on br or p tags to get the correct padding. Lines within a div.section should be wrapped in paragraphs.</p>
        <p>Your content should never be sitting naked on the page, it should always be wrapped in paragraphs. Refrain from using breaks.</p>
    </div>
    <div class="section">
        <h3>Can I make h3 bigger?</h3>
        <p><b>No.</b> There is absolutely no reason you should need to change heading sizes. Your content should be ordered correctly in terms of page heading (h1), followed by section headings (h2), then by sub-section headings (h3) and paragraph headings (h4). These are correctly determined by the size and at no point should you ever have to change the CSS.</p>
        <p>Make sure your content is correctly formatted before changing the CSS.</p>
    </div>
    <div class="section">
        <h3>How to I make a slider image?</h3>
        <p>Metro uses a strong typography influence. If you are not a designer, please refer this work to a designer.</p>
        <p>Use type as your centerpiece and work around it. I have no guidelines on colors or typeface because this should be independent to your needs. If you are uncertain, Helvetica will be an appropriate starting point.</p>
    </div>
    <div class="section">
        <h3>How do I hide the sidebar?</h3>
        <p>If you don't want to show the default sidebar ("Our Experience", "Get Started" and "Newsletter") on your page, simply add the following code, with ContentPlaceHolderID set as "sidebarcontainer":</p>
        <div class="code">
            &lt;asp:Content ID="Side" ContentPlaceHolderID="<span class="highlight">sidebarcontainer</span>" runat="server"&gt;<br />
            &lt;!--THIS IS EMPTY ON PURPOSE--&gt;<br />
            &lt;/asp:Content&gt;
        </div>
    </div>
    <div class="section">
        <h3><a name="hide-external-link-icon"></a>How do I hide the "external link" icon?</h3>
        <p>
            We have a script that automatically adds an icon to all external links.<br />
            If you don't want to show that icon on a particular external link, simply add the class "ignore" to the link tag:
        </p>
        <dl>
            <dt>
                <div class="code">
                    &lt;a href="http://www.google.com"&gt;Google&lt;/a&gt;
                </div>
            </dt>
            <dd>This code will give you this: <a href="http://www.google.com">Google</a></dd>
        </dl>
        <dl>
            <dt>
                <div class="code">
                    &lt;a href="http://www.google.com" <span class="highlight">class="ignore"</span>&gt;Google&lt;/a&gt;
                </div>
            </dt>
            <dd>This code will give you this: <a class="ignore" href="http://www.google.com">Google</a></dd>
        </dl>
    </div>
    <div class="section">
        <h3>How do I edit the menu?</h3>
        <p>The json file describing the menu can be found on GitHub <a href="https://github.com/SSWConsulting/SSW.Website.Menu.json/blob/master/menu.json">menu.json</a> .</p>
        <p>Edit the file, commit, then make a pull request and get someone to approve it.</p>
        <p>The json format is pretty much self explanatory</p>
        <pre>
    {
        "text": "<span class="highlight">LINK NAME</span>",
        "navigateUrl": "<span class="highlight">LINKURL</span>",
        <span class="highlight">"navigateUrlOnMobileOnly": false</span>
        <span class="highlight">"cssClass": "Popular"</span>,
        <span class="highlight">"breakListBefore": true</span>
    }</pre>
        <ul>
            <li>Add "cssClass": "popular" if you want the label to show up on the menu.</li>
            <li>Add "cssClass": "map" if you want the map icon to show up on the menu.</li>
            <li>Add "cssClass": "featVideo" if you want the youtube icon to show up on the menu.</li>
            <li>Add "breakListBefore": true if you want to display this item on a new column</li>
        </ul>
    </div>
    <div class="section">
        <h3>How do I change a page's Meta Description?</h3>
        <p><i>Courtesy of Eric:</i></p>
        <p>Add the YELLOW section to the ASPX page. You can then add whatever tags you require in the head tag (see GREEN for an example)</p>
        <div class="code">
            <span class="highlight">&lt;asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server"&gt;</span><br />
            <span class="text-success">&lt;meta name="description" content="Philosoraptor says ‘Does not expecting the unexpected make the unexpected become the expected?’" /&gt;
                &lt;!-- Type whatever the heck you want here and it will show up in the head tag --&gt;</span><br />
            <span class="highlight">&lt;/asp:Content&gt;</span>
        </div>
    </div>

    <div class="section">
        <h3>How do I use Isotope?</h3>
        <div class="alert alert-danger">Leave this to a designer or a developer if you are neither.</div>
        <p>Isotope consists of two parts: the filter and the content.</p>
        <h4>The Filter</h4>
<div class="code">
        &lt;ul <span class="text-success">id="filters"</span> <span class="text-danger">class="option-set"</span>&gt;<br />
 &nbsp;&lt;li&gt;&lt;a <span class="text-success">href="#filter"</span> <span class="text-warning">data-filter=".default"</span> <span class="text-info">class="selected"</span>&gt;Default&lt;/a&gt;&lt;/li&gt;<br />
 &nbsp;       &lt;li&gt;&lt;a <span class="text-success">href="#filter"</span> <span class="text-warning">data-filter=".tag1"</span>&gt;Tag #1&lt;/a&gt;&lt;/li&gt;<br />
    &lt;/ul&gt;<br />
</div>
        <ul>
            <li><span class="text-success">Green:</span> Make sure these match. Use #filters to use the existing CSS styles.</li>
            <li><span class="text-warning">Yellow:</span> These are the tags you'll be using later. Make them consistent and logical.</li>
            <li><span class="text-info">Blue:</span> Add this to have a default selected class.</li>
            <li><span class="text-danger">Red:</span> Isotope needs this to know what is your filter selectors.</li>
        </ul>

        <h4>The Content</h4>
        <div class="code">
&lt;div <span class="text-success">id="isotope"</span>&gt;<br />
&nbsp;<span class="text-danger">&lt;div class="grid" style="width:50%;"&gt;&lt;/div&gt;</span><br /><br />
<span class="text-muted">&nbsp;&lt;!-- Repeat this template --&gt;</span><br />
&nbsp;&lt;div class="<span class="text-info">item</span> <span class="text-warning">webdev all</span>"&gt;<br />
<br />
&nbsp;&nbsp;CONTENT<br />
<br />
&nbsp;&lt;/div&gt;<br />
<span class="text-muted">&nbsp;&lt;!-- End Repeat --&gt;</span><br /><br />
&lt;/div&gt;<br />
        </div>
        <ul>
            <li><span class="text-success">Green:</span> Isotope needs this to know what your content is. All your items must be wrapped inside a div#isotope</li>
            <li><span class="text-danger">Red:</span> The size of the grid is based on this hidden div. This is the size template isotope copies for all other items. This example has width:50% so that the isotope renders a two column grid, but you can change it to whatever you need. If your isotope is not forming a proper grid, it's likely because your div.grid is not set correctly.</li>
            <li><span class="text-info">Blue:</span> You must add this class to each item so that isotope knows what is being filtered.</li>
            <li><span class="text-warning">Yellow:</span> These are the tags you've used in the filter.</li>
        </ul>
        <p>For further questions, see the <a href="http://isotope.metafizzy.co/">Isotope documentation</a>.</p>
    </div>
    <div class="section">
        <h3>How do I 301 redirect a page?</h3>
        <p>Delete EVERYTHING on your redirect page and add just this:</p>
        <div class="code">

&nbsp;&lt;% Response.RedirectPermanent("<span class="highlight">NEW PAGE URL HERE</span>") %&gt;<br />

        </div>
        <p>You will not need a masterpage or a language specified.</p>
        <div class="alert alert-info">
            <b>David Burela:</b> Also, when you are deleting everything in the .aspx file and replacing it with the redirect, make sure you also delete the .aspx.cs file that is attached to it. Otherwise, it is dead code that will need to be kept up to date when we change method names.
        </div>
    </div>

    <div class="section">
        <a name="Fonts"></a>
        <h3>What's the SSW font?</h3>
        <p>We use <strong>Helvetica Neue</strong> font family for <a href="/ssw/logo/ssw/">SSW logos</a>.</p>
        <p>We use <strong>Open Sans</strong> font family for web content.</p>
        <p>For large headings, we use the "Light" variation.</p>
        <p>"Regular" variation is used for body content for better readability.</p>
    </div>

    <div class="section">
        <a name="Masters"></a>
        <h3>SSW Master Texts</h3>
        <h4>SSW Mission</h4>
        <div class="greybox">
            <p><strong>To find the best way to do everything.</strong><br />
            <p>To identify and use best practices (in technology, DevOps, and Scrum) to navigate the dangers of software development and produce the best possible software solutions.</p>
        </div>
        <h5>Where do we have this?</h5>
        <ul>
            <li><a href="/ssw/Company/AboutUs.aspx">About Us page</a></li>
            <li><a href="https://www.sugarlearning.com/companies/SSW/items/8145/Introduction-About-SSW">SugarLearning page</a></li>
            <li><a href="https://sswcom.sharepoint.com/:w:/r/Documents/How-was-the-SSW-Mission-Statement-developed.docx?d=wb699e1abf12044829788cdee75c5a8ca&csf=1&e=99Gd0T">Intranet document</a></li>
            <li><a href="https://sswcom.sharepoint.com/:w:/r/employment/Shared%20Documents/6-steps-to-a-better-SSW.docx?d=w684e4b4fd17d4cd88c8d8132b55d165c&csf=1&e=WaFONY">6 Steps to a Better SSW document</a></li>
        </ul>
        
        <h4>SSW Experience + Technologies</h4>
        <div class="greybox">
            <p>SSW Consulting has over 30 years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Vue, Azure, Azure DevOps (was TFS), SharePoint, Office 365, Blazor, .NET, WebAPI, Dynamics 365, and SQL Server.</p>
        </div>
        <h5>Where do we have this?</h5>
        <ul>
            <li>Website &lt;meta&gt; description tag</li>
            <li><a href="/ssw/">Homepage</a></li>
            <li><a href="/ssw/Company/AboutUs.aspx">About Us page</a></li>
            <li><a href="https://www.ssw.com.au/people/">Our People page</a></li>
            <li>Search Engines' business pages and general social media accounts</li>
        </ul>

        <h4>SSW Addresses</h4>
        <div class="greybox">
            <p>Always refer to <a href="/ssw/Company/Offices.aspx">Our Offices page</a> to get our master addresses.</p>
        </div>
        <h5>Where do we have this?</h5>
        <ul>
            <li><a href="/ssw/Company/Offices.aspx">Our Offices pages</a>
                <ul>
                    <li><a href="/ssw/Company/Directions/NeutralBay/">Sydney directions page</a></li>
                    <li><a href="/ssw/Company/Directions/Melbourne/">Melbourne directions page</a></li>
                    <li><a href="/ssw/Company/Directions/Brisbane/">Brisbane directions page</a></li>
                </ul>
            </li>
            <li><a href="https://sswchapel.com.au/">SSW Chapel site</a></li>
            <li>General <a href="/ssw/Events/">events pages</a></li>
            <li><a href="https://firebootcamp.com">FireBootCamp</a> pages</li>
            <li><a href="http://angularhackday.com">Angular Hack Day</a> pages</li>
            <li><a href="http://angularhackday.com">Xamarin Hack Day</a> pages</li>
            <li>Search Engines' business pages and general social media accounts</li>
        </ul>

    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <h6>Sidebar heading 6</h6>
    <div class="section">
        <h4>Side Bar H4</h4>
        <p>
            Paragraph wrapped text in section. lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
    </div>
    <br />
    <h3>Sidebar H3</h3>
    <div class="section">
        <h4>Sidebar h4</h4>
        <p>Paragraph wrapped text in section. lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
        <p>Paragraph wrapped text in section. lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
    </div>
    <div class="section">
        Text in section following section. lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    </div>
    <div class="section">
        <h4>Sidebar h4</h4>
        <p>
            Paragraph wrapped text in section. lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
        <ul>
            <li>List item</li>
            <li>List item</li>
            <li>List item</li>

        </ul>
    </div>
    <br />
    <h6 class="red">Heading 6 class="red"</h6>
    <div class="section">
        <p>This is a random text for sidebar content.</p>
    </div>
    <br />
</asp:Content>
