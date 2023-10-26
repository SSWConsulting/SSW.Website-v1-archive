
function searchPage(event) {
    var searchText = $("input[id$=txtSearch]").val();
    if (searchText.length > 0 && event.keyCode == 13) {
        var url = "http://www.google.com.au/search?q=site:ssw.com.au " + escape(searchText);
        window.open(url);
        return false;
    }
    return true;
}

$(window).load(function () {
    $("#Slider").nivoSlider({
        effect: "fade", //Specify sets like: 'fold,fade,sliceDown'
        slices: 1,
        boxCols: 4, // For box animations
        boxRows: 2, // For box animations
        animSpeed: 800, // Slide transition speed
        pauseTime: 5000, // How long each slide will show
        startSlide: 0, // Set starting Slide (0 index)
        directionNav: false, // Next & Prev navigation
        directionNavHide: true, // Only show on hover
        controlNav: true, // 1,2,3... navigation
        controlNavThumbs: false, // Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, // Use image rel for thumbs
        controlNavThumbsSearch: ".jpg", // Replace this with...
        controlNavThumbsReplace: "_thumb.jpg", // ...this in thumb Image src
        keyboardNav: false, // Use left & right arrows
        pauseOnHover: true, // Stop animation while hovering
        manualAdvance: false // Force manual transitions
    });

    $("input[id$=txtSearch]").keypress(function (event) { return searchPage(event); });
});

$.fn.wrapStart = function (numWords) {
    var node = this.contents().filter(function () { return this.nodeType == 3; }).first(),
text = node.text(),
first = text.split(" ", numWords).join(" ");

    if (!node.length)
        return;

    node[0].nodeValue = text.slice(first.length);
    node.before("<span class=\"red\">" + first + "</span>");
};

$("h1, .first").each(function () {
    $(this).wrapStart(1);
});

$(document).ready(function () {
    $(".lightbox").fancybox({
        padding: 6,
        closeBtn: false
    });
});


// cache container
var $container = $("#isotope");
// initialize isotope
$("#isotope").isotope({
    // options
    itemSelector: ".item",
    filter: ".all",
    masonry: {
        columnWidth: ".grid"
    },
    // disable scale transform transition when hiding
    hiddenStyle: {
        opacity: 0,
        display: "none"
    },
    visibleStyle: {
        opacity: 1,
        display: ""
    }
});
// filter items when filter link is clicked
$("#filters a").click(function () {

    var $this = $(this);
    // don't proceed if already selected
    if ($this.hasClass("selected")) {
        return false;
    }
    var $optionSet = $this.parents(".option-set");
    $optionSet.find(".selected").removeClass("selected");
    $this.addClass("selected");

    var selector = $(this).attr("data-filter");
    $container.isotope({ filter: selector });
    return false;
});

//events
var $containerPast = $("#isotopePast");
// initialize isotopePast
$("#isotope").isotope({
    // options
    itemSelector: ".event-item",
    filter: ".all",
    masonry: {
        columnWidth: ".grid"
    },
    // disable scale transform transition when hiding
    hiddenStyle: {
        opacity: 0,
        display: "none"
    },
    visibleStyle: {
        opacity: 1,
        display: ""
    }
});
// filter items when filter link is clicked
$("#filters a").click(function () {

    var $this = $(this);
    // don't proceed if already selected
    if ($this.hasClass("selected")) {
        return false;
    }
    var $optionSet = $this.parents(".option-set");
    $optionSet.find(".selected").removeClass("selected");
    $this.addClass("selected");

    var selector = $(this).attr("data-filter");
    $containerPast.isotope({ filter: selector });
    return false;
});


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

function toggle_visibility(ancora, id1, id2) {
    var e = document.getElementById(id1);
    var e2 = document.getElementById(id2);
    if (e.style.display == "none") {
        e.style.display = "block"; //block will show the conain in div            
        e2.style.display = "none";
        ancora.innerHTML = "Watch in higher quality on Vimeo";
    }
    else {
        e.style.display = "none";
        e2.style.display = "block";
        ancora.innerHTML = "Watch in lower quality on YouTube";
    }
}

$(document).on("DetectServiceComplete",
    function (event, service) {
        if (service.name === "google" && service.successful) {
            console.log("init google tag manager");
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

