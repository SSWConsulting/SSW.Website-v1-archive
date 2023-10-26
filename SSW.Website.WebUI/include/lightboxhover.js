$(document).ready(function() {
    var img = $('a.lightbox-hover').each(
    function() {
        $(this).append('<!-- inserted by lightboxhover.js //--><div class="overlay" ><img src="/ssw/events/images/SSWHall/glass.png" /></div>');

        var overlayimg = $('div.overlay img', this);
        var overlay = $('div.overlay', this).hide().css('opacity', '0.4');
        $(this)
            .hover(
                function() { overlay.show(); },
                function() { overlay.hide(); });

        overlayimg.css({ 'position': 'relative', 'top': overlay.height() / 2 - 20, 'left': overlay.width() / 2 - 20 });
    });


});

//I GOT NFC WHAT IM DOING