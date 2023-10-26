
<style>
    table {
        border: 1px solid;
        margin: 0;
        border-collapse: collapse;
        border-spacing: 0;
        width:100%;
    }
    td, th {
        border: 1px solid;
        padding: 5px;
    }
    th {
        background-color:#d3d3d3;
    }
    li {
        margin-top: 5px;
    }
    hr {
        margin-top: 40px;
    }
    p {
        white-space: pre-wrap;
    }
    .icon {
        display: inline-block;
        width: 0.8em;
        height: 0.8em;
    }
    .icon.red {
        background-color: red;
    }
    .red {
        color:red;
    }
    .bold {
        font-weight: bold;
    }
    .container {
        position: relative;
    }
    .legend {
        position: absolute;
        top: 0;
        right: 0;
        transform: translate(0, -100%);
    }
    .block {
        display: block;
    }
    .type {
        position: relative;
        text-align:left;
    }
    .hash-tag {
        position: relative;
        font-size: 12px;
        right: 0px;
        top: -5px;
    }
</style>

<h1>China Performance Testing</h1>

<div class="container">
    <div class="legend">
        <i class="icon red"></i>
        <span>Over 15s</span>
    </div>
    <table id="SSW" >
        <thead>
            <tr>
                <th colspan="8">
                    Table: Load and DomContentLoaded time for SSW Properties as of 18 Jan 2019
                </th>
            </tr>
            <tr>
                <th>Site&URL</th>
                <th>
                    <div style="text-align: left">
                        <span class="block">AU</span>
                        <span class="type block">Full Load<a href="#1" class="hash-tag">#1</a></span>
                        <span class="type block">(DomContentLoaded)<a href="#2" class="hash-tag">#2</a></span>
                    </div>
                </th>
                <th>
                    <div style="text-align: left">
                        <span class="block">CN - KOALA</span>
                        <span class="type block">Full Load<a href="#1" class="hash-tag">#1</a></span>
                        <span class="type">(DomContentLoaded)<a href="#2" class="hash-tag">#2</a></span>
                    </div>
                </th>
                <th>
                    <div style="text-align: left">
                        <span class="block">CN - iPhone</span>
                        <span class="type block">Full Load<a href="#1" class="hash-tag">#1</a></span>
                    </div>
                </th>
                <th>Developer</th>
                <th>Comment</th>
            </tr>
        </thead>
    </table>
</div>
<div class="note">
    <h3>Note</h3>
    <ul>
        <li>
            <span id="1" class="block">1. The load event can be used to detect a fully-loaded page</span>
            <span id="2" class="block">2. The DOMContentLoaded event is fired when the document has been completely loaded and parsed, without waiting for stylesheets, images, and subframes to finish loading .</span>
        </li>
        <li>
            <span id="3" class="block">Chinafy rules:</span>
            <a href="https://rules.ssw.com.au/do-you-detect-service-availability-from-the-client">https://rules.ssw.com.au/do-you-detect-service-availability-from-the-client</a><br>
            <a href="https://rules.ssw.com.au/do-you-manage-3rd-party-dependencies">https://rules.ssw.com.au/do-you-manage-3rd-party-dependencies</a><br>
        </li>
    </ul>
</div>

<hr />

<div>
    <p>
        Use the link below with any of the following modifying querystrings set as "=true"
    </p>
    <a href="employmentchina2.aspx" target="_blank">V2 of China Employment Test page</a>
    <ul>
        <li>nothing hidden <a href="employmentchina2.aspx?title=Nothing hidden" target="_blank">nothing hidden on test employment page</a> </li>
        <li>hidecontent | hides all the content <a href="employmentchina2.aspx?hidecontent=true&title=Hide Content" target="_blank">hide content</a></li>
        <li>hidebg | hides the background video <a href="employmentchina2.aspx?hidebg=true&title=Hide Background" target="_blank">hide background</a></li>
        <li>hidevideo | hides the embedded video divs, but the js for video embedding is still included <a href="employmentchina2.aspx?hidevideo=true&title=Hide Videos" target="_blank">hide videos</a></li>
        <li>hidemenu | hides the menu and breadcrumbs <a href="employmentchina2.aspx?hidemenu=true&title=Hide Menu" target="_blank">hide menu</a></li>
        <li>-----</li>
        <li>hideeventsjs | doesn't load the events.js library (use in conjunction with hidelivestreamjs)</li>
        <li>hidelivestreamjs | doesn't load the ssw.livestream.js library (use in conjunction with hideeventsjs</li>
        <li><a href="employmentchina2.aspx?hidelievestreamjs=true&hideeventsjs=true&title=Hide Events and Livestream" target="_blank">hide events and livestream</a></li>
        <li>-----</li>
        <li>hideconsultingjquery | doesn't load the additional jquery libraries used to add animation, sliders etc to employment page &nbsp;
            <a href="employmentchina2.aspx?hideconsultingjquery=true&title=Hide Consulting Jquery" target="_blank">hide consulting jquery</a>
        </li>
        <li>-----</li>
        <li>hidepigeonjs | doesn't load the pigeon.js library (service detection, video iframe embedding, google tag manager (incl zendesk))</li>
        <li>hideservicedetectorjs | doesn't load servicedetection.js library which is used to detect whether google, youtube, facebook, etc are available </li>
        <li>hidegtmiframe | hides google tag manager iframe which is in a noscript tag (gtm is loaded through the iframe or from a call in pigeon.js) </li>
        <li><a href="employmentchina2.aspx?hidepigeonjs=true&title=Hide Pigeon Only" target="_blank">hide pigeon only</a></li>
        <li><a href="employmentchina2.aspx?hidepigeonjs=true&hideservicedetectorjs=true&title=Hide Pigeon and Service Detector" target="_blank">hide pigeon & service detector</a></li>
        <li><a href="employmentchina2.aspx?hidepigeonjs=true&hideservicedetectorjs=true&hidegtmiframe=true&title=Hide Pigeon,Service Detector, and gtm iframe" target="_blank">hide pigeon, service detector, and gtm iframe</a></li>
        <li><a href="employmentchina2.aspx?hidegtmiframe=true&title=Hide gtm iframe only" target="_blank">hide gtm iframe</a></li>
        <li>-----</li>
    </ul>
</div>
<H3>The links in the table below will no longer work</H3>
<table border="1">
    <tr>
        <td>Page</td><td>AU computer</td><td>AU mobile</td><td>CN Koala</td><td>CN computer</td><td>CN IOS</td><td>CN Android</td>
    </tr>
    <tr">
        <td><a href="blank.aspx" target="_blank">1. Blank page with HTML default elements</a></td>
        <td>< 1s</td><td>< 1s</td>
        <td>4.5s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="employmentchina.aspx?menu=true&content=true&js=true&title=2. No IFrames" target="_blank">2. No IFrames</a></td>
        <td>< 2s</td><td>< 2s</td>
        <td>55s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="employmentchina.aspx?title=3. No menu|content|3rdPartyJS" target="_blank">3. No menu | 3rd party JS | content</a></td>
        <td>< 2s</td><td>< 2s</td>
        <td>30s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="employmentchina.aspx?menu&content=true&js=true&title=4. No Menu" target="_blank">4. No menu</a></td>
        <td>< 2s</td><td>< 2s</td>
        <td>40s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="employmentchina.aspx?menu=true&content&js=true&title=5. No Content" target="_blank">5. No content</a></td>
        <td>< 2s</td><td>< 2s</td>
        <td>50s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="employmentchina.aspx?menu=true&content=true&js&title=6. No 3rdPartyJS" target="_blank">6. No 3rd party JS</a></td><td>< 2s</td><td>< 2s</td>
        <td>23s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="chinapigeon.aspx" target="_blank">7. Pigeon Master</a></td>
        <td>< 2s</td><td>< 2s</td>
        <td>9.5s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="chinaraven.aspx" target="_blank">8. Raven Master</a></td>
        <td>4</td><td>4</td>
        <td>51s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="chinaravensubpage.aspx" target="_blank">9. Raven Subpage Master</a></td>
        <td>5</td><td>5</td>
        <td>32s</td>
        <td></td><td></td><td></td>
    </tr>
    <tr>
        <td><a href="/ssw/employment/" target="_blank">10. Actual Employment page</a></td>
        <td>5</td><td>5</td>
        <td>12s</td>
        <td></td><td></td><td></td>
    </tr>
</table>
<br /><br />

<div>
    <h4>Backlog of sites to be fixed</h4>
    <div>
        <ol>
            <li>SSW.Website</li>
            <li>SSW.Rules</li>
        </ol>
    </div>
</div>

<script src="./default.js"></script>
