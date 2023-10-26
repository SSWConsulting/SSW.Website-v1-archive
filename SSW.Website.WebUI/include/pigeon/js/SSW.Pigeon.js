
jQuery(function (ssw, $) {
    var searchPage = function (event) {
        var searchText = $("input[id$=txtSearch]").val();
        if (searchText.length > 0 && event.keyCode === 13) {
            var url = "http://www.google.com.au/search?q=site:ssw.com.au " + escape(searchText);
            window.open(url);
            return false;
        }
        return true;
    };

    ssw.toggleVisibility = function (ancora, id1, id2) {
        var e = document.getElementById(id1);
        var e2 = document.getElementById(id2);
        if (e.style.display === "none") {
            e.style.display = "block"; //block will show the conain in div            
            e2.style.display = "none";
            ancora.innerHTML = "Watch in higher quality on Vimeo";
        }
        else {
            e.style.display = "none";
            e2.style.display = "block";
            ancora.innerHTML = "Watch in lower quality on YouTube";
        }
    };

    var init = function () {
        /* $(window).load(function () {

            $("input[id$=txtSearch]").keypress(function (event) { return searchPage(event); });
        });

        $.fn.wrapStart = function (numWords) {
            var node = this.contents().filter(function () { return this.nodeType === 3 }).first();
            var text = node.text();
            var first = text.split(" ", numWords).join(" ");

            if (!node.length)
                return;

            node[0].nodeValue = text.slice(first.length);
            node.before("<span class=\"red\">" + first + "</span>");
        };

        $("h1, .first").each(function () {

            $(this).wrapStart(1);
        }); */

        //binding show/hide past products event
        $('#showpastproducts').change(function () {
            var $this = $(this);

            var $optionSet = $this.parents(".option-set");
            var $selected = $optionSet.find(".selected");

            var filterString = $selected ? $selected.attr("data-filter") : "";

            if (!$this[0].checked) {

                filterString += ":not(.decommissioned)";
                //We need to also filter the list of product groups
                $filterContainer.isotope({ filter: ":not(.decommissioned)" });

                //In the case where the user had selected a decommissioned group, and then chooses to hid all old products
                //this logic will find the first option (show all) and trigger the click event there.
                if ($selected.parents("li").hasClass("decommissioned")) {
                    $optionSet.find(".filterItem:first a").trigger("click");
                    return false;
                }
            }
            else {
                $filterContainer.isotope({ filter: "" });

            }

            $container.isotope({ filter: filterString });

            return false;
        });

             
        // filter items when filter link is clicked
        $("#filters a").click(function () {
            if (!window.location.pathname.toLowerCase().startsWith("/ssw/events/")) {
                var $this = $(this);
                // don't proceed if already selected
                if ($this.hasClass("selected")) {
                    return false;
                }
                console.log('here: ', window.location.pathname);
                var $optionSet = $this.parents(".option-set");

                var selector = $(this).attr("data-filter");

                var showpastproducts = $optionSet.find("#showpastproducts")[0] ? $optionSet.find("#showpastproducts")[0].checked : false;
                if (!showpastproducts) {
                    selector += ":not(.decommissioned)";
                }

                $container.isotope({ filter: selector });
                console.log('setting hash in url');
                location.hash = 'filter=' + encodeURIComponent(selector);
                return false;
            }
        });
                     
        
        //setTimeout(function () {$("#filters").css("height", "auto"); }, 500);

        $("a.video").click(function () {
            $.fancybox({
                hideOnContentClick: false,
                autoScale: false,
                closeBtn: false,
                transitionIn: "none",
                transitionOut: "none",
                title: this.title, // optional
                width: 680, // or your size
                height: 495,
                href: this.href.replace(new RegExp("watch\\?v=", "i"), "v/"),
                type: "swf",
                swf: {
                    'wmode': "transparent",
                    'allowfullscreen': "true"
                }
            }); // fancybox
            return false;
        }); // click

        if ($("#SidebarRight a.bootstrap-tooltip").length) {
            $("#SidebarRight a.bootstrap-tooltip").popover({
                placement: "left",
                trigger: "hover"
            });
        }

        if ($(".bootstrap-tooltip").length) {
            $(".bootstrap-tooltip").popover({
                placement: "top",
                trigger: "hover"
            });
        }

        
        //hide empty right/left column 
        var sideLeftEmpty = $("#SidebarLeft").text().trim().length <= 0;
        $("#SidebarLeft").toggleClass("hidden", sideLeftEmpty);
        var sideRightEmpty = $("#SidebarRight").text().trim().length <= 0;
        $("#SidebarRight").toggleClass("hidden", sideRightEmpty);
        var mainContentWidth = 6 + (sideLeftEmpty ? 3 : 0) + (sideRightEmpty ? 3 : 0);
        $("#maincontent").toggleClass("col-sm-12", false);
        $("#maincontent").addClass("col-sm-" + mainContentWidth);

        // cache container
        var $container = $("#isotope");

        function getHashFilter() {
            // get #filter=filterName         
            var matches = location.hash.match(/filter=([^&]+)/i);
            var hashFilter = matches && matches[1];
            return hashFilter && decodeURIComponent(hashFilter);
        }

        var isIsotopeInit = false;

        function onHashchange() {
            var hashFilter = getHashFilter();
            if (!hashFilter && isIsotopeInit) {
                return;
            }
            isIsotopeInit = true;
            //filter isotope
            $("#isotope").isotope({
                itemSelector: '.item, .event-item',
                // use filterFns
                filter: hashFilter || ".all:not(.decommissioned)",
                layoutMode: 'masonry',
                masonry: {
                    columnWidth: '.grid'
                }
            });

            var $optionSet = $('.option-set');

            if (hashFilter) {                
                var colonIndex = hashFilter.indexOf(':');
                var filterMenuItem = colonIndex > 0 ? hashFilter.substring(0, colonIndex) : hashFilter;
                $optionSet.find('.selected').removeClass('selected');
                $optionSet.find('[data-filter="' + filterMenuItem + '"]').addClass('selected');
            }
        }

        $(window).on('hashchange', onHashchange);
        //trigger event handler to init isotope
        onHashchange();

        //events
        var $containerPast = $("#isotopePast");    

        var $filterContainer = $("#filters.products"); // only target the products page
        $filterContainer.isotope({
            itemSelector: ".filterItem",
            filter: ":not(.decommissioned)",
            layoutMode: "vertical"
        });               

        //trigger lightbox on class
        $('.lightbox').swipebox();

        // Floating Form Labels
        $('.float-label').jvFloat();

                
    };
    init();
    

}(window.SSW = window.SSW || {}, jQuery));

/* Light YouTube Embeds by @labnol */
/* modified for youku support */
/* Web: http://labnol.org/?p=27941 */


function initVideos() {
    var vids = document.getElementsByClassName("video-player");
    for (n = 0; n < vids.length; n++) {
        var div = document.createElement("div");
        //console.log('video info: ', vids[n].dataset.id, vids[n].dataset.youkuid, vids[n].dataset.vimeoid);
        // copy attributes to new inner div.
        div.setAttribute("data-id", vids[n].dataset.id);
        div.setAttribute("data-youkuid", vids[n].dataset.youkuid);
        div.setAttribute("data-vimeoid", vids[n].dataset.vimeoid);
        div.setAttribute("data-youtuberes", vids[n].dataset.youtuberes);
        
        div.innerHTML = labnolThumb(vids[n].dataset.id, vids[n].dataset.youkuid, vids[n].dataset.vimeoid, vids[n].dataset.youtuberes);
        div.onclick = labnolIframe;
        vids[n].appendChild(div);
    }
}

function labnolThumb(id, youkuid, vimeoid, youtuberes) {
    var thumb;
    // prefer vimeo over youtube if it's available
    if (vimeoid && vimeoid !== "" && window.serviceDetector.vimeo.successful) {
        thumb = '<img src="/ssw/VimeoThumb.ashx?id=XXX"><div class="play"></div>';
        thumb = thumb.replace('XXX', vimeoid);
        return thumb;
    } else if (id && id !== "" && window.serviceDetector.youtube.successful) {
        thumb = '<img src="https://i.ytimg.com/vi/ID/maxresdefault.jpg"><div class="play"></div>';
        if(youtuberes !== undefined && youtuberes !== "")
            thumb = thumb.replace("maxresdefault", youtuberes);
        return thumb.replace("ID", id);
    } else {
        // alternative thumbnail when youtube and vimeo not available - served from ssw site.  Likely behind the Great China Firewall
        console.log('Embedding youku video');
        thumb = '<img src="/ssw/YouTubeThumb.ashx?id=XXX"><div class="XXXClass"></div>';
        thumb = thumb.replace("XXX", id);       

        if (youkuid && youkuid !== "" && window.serviceDetector.youku.successful) {            
            thumb = thumb.replace("XXXClass", "play");
        }
        return thumb;
    }
}

function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("allowfullscreen", "");
    iframe.setAttribute("webkitallowfullscreen", "");

    var embed;
    if (this.dataset.vimeoid !== "undefined" && this.dataset.vimeoid !== "" && window.serviceDetector.vimeo.successful) {
        console.log('dataset.vimeo', this.dataset.vimeoid);
        embed = "https://player.vimeo.com/video/ID?autoplay=1";
        iframe.setAttribute("src", embed.replace("ID", this.dataset.vimeoid));
        console.log('url: ', embed.replace("ID", this.dataset.vimeoid));
        this.parentNode.replaceChild(iframe, this);
    }
    else if (window.serviceDetector.youtube.successful) {
        if (this.dataset.id !== "undefined" && this.dataset.id !== "") {
            embed = "https://www.youtube.com/embed/ID?autoplay=1";
            iframe.setAttribute("src", embed.replace("ID", this.dataset.id));
            console.log('url: ', embed.replace("ID", this.dataset.id));
            this.parentNode.replaceChild(iframe, this);
        }
    } else if (window.serviceDetector.youku.successful) {
        if (this.dataset.youkuid !== "undefined" && this.dataset.youkuid !== "") {
            embed = "https://player.youku.com/embed/ID";
            iframe.setAttribute("src", embed.replace("ID", this.dataset.youkuid));
            console.log('url: ', embed.replace("ID", this.dataset.youkuid));
            this.parentNode.replaceChild(iframe, this);
        }
    }
}

$(document).on("DetectServiceComplete",
    function (event, service) {
        var allTestsComplete = true;
        for (var serv in window.serviceDetector) {
            if (window.serviceDetector.hasOwnProperty(serv)) {
                if (!window.serviceDetector[serv].testComplete) {
                    return false;
                }
            }
        }

        //console.log("init videos");
        initVideos();

    });

$(document).on("DetectServiceComplete",
    function (event, service) {
        if (service.name === "google" && service.successful) {
            //console.log("init google tag manager");
            (function (w, d, s, l, i) {
                w[l] = w[l] || []; w[l].push({
                    'gtm.start':
                        new Date().getTime(), event: "gtm.js"
                }); var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l !== "dataLayer" ? "&l=" + l : ""; j.async = true; j.src =
                        "//www.googletagmanager.com/gtm.js?id=" + i + dl; f.parentNode.insertBefore(j, f);
            })(window, document, "script", "dataLayer", "GTM-NXDBVV");
        }
    });



//adding this method to the global namespace before tracking everypage is using it
var toggle_visibility = SSW.toggleVisibility;




