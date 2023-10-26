var flags = {};
$(document).ready(function () {
    if (flags.hasModifiedLinkPic === true) {
        return;
    }
    flags.hasModifiedLinkPic = true;

    var $a_not_has_img = $('body a:not(:has(img))');

    $a_not_has_img.filter('a[href*=".pdf"]').before('<img src="/ssw/Images/IconPdf.png" title="pdf file"/> '); // pdf links look like: href="XXX.pdf#view=100%"

    $a_not_has_img.filter('a[href$=".ppt"], a[href$=".pptx"]').before('<img src="/ssw/Images/IconPP.png" title="PowerPoint Presentation"/> ');

    $a_not_has_img.filter('a[href$=".doc"], a[href$=".docx"]').before('<img src="/ssw/Images/IconDoc.png" title="Word Document"/> ');

    $a_not_has_img.filter('a[href$=".wmv"]').before('<img src="/ssw/Images/iconwmv.png" title="Windows Media Video"/> ');

    $a_not_has_img.filter('a[href$=".mp3"], a[href$=".wav"]').before('<img src="/ssw/Images/iconAudio.png" title="Audio File"/> ');

    $a_not_has_img.filter('a[href$=".xls"], a[href$=".xlsx"], a[href$=".xlt"]').before('<img src="/ssw/Images/IconXls.png" title="Excel File"/> ');

    $a_not_has_img.filter('a[target^="_blank"]').filter(function () {
        if (this.href.indexOf('/ssw/Redirect/') != -1) return false; // contains /ssw/redirect
        if (this.hostname.indexOf('ssw.com.au') == -1) return false; // not contain ssw.com.au
        return true;
    }).after(' <img src="/ssw/images/IconNewWindow.png" title="This opens in a New Window"/>');

    var $external = $a_not_has_img.filter('a:not(".ignore, .rsmLink")'); //Use class ignore on link to disable external links

    /* $external.filter(function () {
        if (!this.hostname) return false; // contains current server name
        if (this.href.indexOf('/ssw/Redirect/SSWSharePointEmployee.htm') != -1) return false; // stupid menu
        if (this.href.indexOf('/ssw/Redirect/UserGroupBlog.aspx') != -1) return false; // stupid menu
        if (this.href.indexOf('/ssw/Redirect/') != -1) return true; // contains /ssw/redirect
        if (this.hostname == location.hostname) return false; // contains current server
        if (this.hostname.indexOf('ssw.com.au') == -1) return true; // not contain ssw.com.au
        return false;
    }).after(' <img src="/ssw/images/external.gif" title="You are now leaving SSW"/>'); */

});
