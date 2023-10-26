

/********************************************************************************************************************
Search box
********************************************************************************************************************/
$(".search-box").click(function () {
    $(this).animate({ width: '117px' }, 600);
    $(this).css({ color: '#333333' });
    $(this).css({ background: 'url("/SSW/images/Raven/search-submit.png") 3px 2px no-repeat #ffffff' });
});

$(".search-box").focusout(function () {
    $(this).animate({ width: '1px' }, 600);
    $(this).css({ color: '#999999' });
    $(this).css({ background: 'url("/SSW/images/Raven/search-submit.png") 3px 2px no-repeat #999999' });
});
