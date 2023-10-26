$(document).ready(function () {

    if (window.location.hostname.indexOf("localhost") > -1 || window.location.hostname.indexOf("sswcomau") > -1) {

        console.log("MegaMenu debug - redirect in place")

        $("#megamenu a").click(function (event) {
            event.preventDefault();
            var newTarget = event.currentTarget.href.replace("www.ssw.com.au", window.location.host);
            if (newTarget.indexOf("https:") > -1 && window.location.protocol === "http:") {
                newTarget = newTarget.replace("https:", "http:");
            }
            window.location = newTarget;
        });

        $("#mobilemegamenu a").click(function (event) {
            event.preventDefault();
            var newTarget = event.currentTarget.href.replace("www.ssw.com.au", window.location.host);
            if (newTarget.indexOf("https:") > -1 && window.location.protocol === "http:") {
                newTarget = newTarget.replace("https:", "http:");
            }
            window.location = newTarget;
        });
    }

});