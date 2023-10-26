var player = null;
function showSswVideo(vidUrl) {
    $('#homeVidWrapper, #wrap').remove();
    $('body').append(
		'<div id="homeVidWrapper">' +
		'<div class="closebutton"><a href="#">X</a></div>' +
		'<div class="popup"><a href="#">Open in New Window</a></div>' +
		'<div id="silverlightControlHost">' +
		'<object data="data:application/x-silverlight-2," type="application/x-silverlight-2" width="512" height="288">' +
		'<param name="source" value="/ssw/Include/Silverlight/MediaPlayerTemplate.xap"/>' +
		'<param name="initparams" value=\'autoplay=True,autoload=True,enablecaptions=False,muted=False,stretchmode=1,displaytimecode=False,playlist=<playList><playListItems><playListItem title="" description="" mediaSource="' + vidUrl + '" adaptiveStreaming="False" thumbSource="" frameRate="25" width="512" height="288" ></playListItem></playListItems></playList>\' />' +
		'<a href="http://go2.microsoft.com/fwlink/?LinkID=124807" style="text-decoration: none;"><img src="http://go2.microsoft.com/fwlink/?LinkId=108181" alt="Get Microsoft Silverlight" style="border-style: none"/></a>' +
		'</object>' +
		'<iframe style="visibility:hidden;height:0;width:0;border:0px"></iframe>' +
		'</div>' +
		'</div>' +
		'<div id="wrap"></div>');
    $('#wrap').height($(document).height()).animate({ opacity: 0.3 }).click(function() { $('#silverlightControlHost').html(''); $('#homeVidWrapper').fadeOut('fast', function() { $('#wrap').fadeOut(); }) });
    $('#homeVidWrapper').css('top', ((($(window).height() / 2) - ($('#homeVidWrapper').height() / 2)) + $(window).scrollTop()) + 'px');
    $('#homeVidWrapper').fadeIn('fast', function() { });
    $('#homeVidWrapper .closebutton a').click(function() { $('#wrap').click(); return false; });
    $('#homeVidWrapper .popup a').click(function() { window.open(vidUrl); $('#wrap').click(); return false; });
}