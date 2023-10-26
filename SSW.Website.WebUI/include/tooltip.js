$(document).ready(function() {

    $("div.hover").wrapInner("<div class='hovergroup'></div>");
    $("div.hovergroup").after("<div class='hoverend'></div>");

    $("div.tooltip").hover(function() {
        $(this).children(".hover").fadeIn('fast');
    }, function() {
        $(this).children(".hover").fadeOut('fast');
    });

});

// i don't know what im doing!!! who gave this monkey a hacksaw omg


$(document).ready(function() {
    $('tr.parent').toggle(function() {
        $(this).addClass('activetr');
        $(this).next("tr.child").show();

    }, function() {
    $(this).removeClass('activetr');
        $(this).next("tr.child").hide();

    });


});