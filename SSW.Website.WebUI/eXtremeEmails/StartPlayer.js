/* Do not remove this commented code. This is compiled by Expression Encoder at template compile time.


 
*/


function rgbToHex(rgb)
{
	var strHex="0123456789ABCDEF";
	var ichBracket=rgb.indexOf("(");
	if (ichBracket!=-1) {
		var rgstr = rgb.substr(ichBracket+1, rgb.length-ichBracket-2).split(',');
		rgb = "#"+ strHex[parseInt(rgstr[0])>>4]+strHex[parseInt(rgstr[0])%16]+
			   strHex[parseInt(rgstr[1])>>4]+strHex[parseInt(rgstr[1])%16]+
			   strHex[parseInt(rgstr[2])>>4]+strHex[parseInt(rgstr[2])%16];
	}
	return rgb;
}


function StartPlayer_0(parentId) {
    try {
    	eval('document.body.style.backgroundColor="#FFFFFF"');
    } catch(e){}

    this._hostname = ExpressionPlayer.Player._getUniqueName("xamlHost");
    Silverlight.createObjectEx( {   source: 'player.xaml', 
                                    parentElement: $get(parentId ||"divPlayer_0"), 
                                    id:this._hostname, 
                                    properties:{ width:'100%', height:'100%', version:'1.0', background:rgbToHex(document.body.style.backgroundColor), isWindowless:'false', inplaceInstallPrompt:true }, 
                                    events:{ onLoad:Function.createDelegate(this, this._handleLoad) } } );
    this._currentMediainfo = -1;     
}
StartPlayer_0.prototype= {
    _handleLoad: function() {
        this._player = $create(   ExtendedPlayer.Player, 
                                  { // properties
                                    autoPlay       : this.autoPlayParam(), 
                                    autoLoad       : this.autoLoadParam(),
				    scaleMode 	   : this.scaleModeParam(),
                                    muted          : this.mutedParam(),
				    enableCaptions : this.enableCaptionsParam(),
                                    volume         : 1.0
                                  }, 
                                  { // event handlers
                                    mediaEnded: Function.createDelegate(this, this._onMediaEnded),
                                    mediaFailed: Function.createDelegate(this, this._onMediaFailed),
                                    playPreviousVideo: Function.createDelegate(this, this._onPlayPreviousVideo),
                                    playNextVideo: Function.createDelegate(this, this._onPlayNextVideo)
                                  },
                                  null, $get(this._hostname)  );   

    this._playlist=[];
    try {
        eval( 'this._playlist=['+
		'{"mediaSource":"eXtremeEmailsShowcase_v6.wmv",'+
		'"placeholderSource":"",'+
		'"chapters":'+
			'['+
			'new Sys.UI.Silverlight.MediaChapter("Introduction",28.7341042,"eXtremeEmailsShowcase_v6_28.734.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Toolbar",73.821,"eXtremeEmailsShowcase_v6_73.821.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Incident Button",122.786,"eXtremeEmailsShowcase_v6_122.786.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Release Plan",174.7581667,"eXtremeEmailsShowcase_v6_174.758.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Task Completion",250.7427192,"eXtremeEmailsShowcase_v6_250.743.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Status Update",300.3453233,"eXtremeEmailsShowcase_v6_300.345.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Test Please",358.317,"eXtremeEmailsShowcase_v6_358.317.jpg"),'+
			'new Sys.UI.Silverlight.MediaChapter("Summary",414.4964484,"eXtremeEmailsShowcase_v6_414.496.jpg")'+
			']}'+
		'];' ); 
    }
    catch(e){}

    this._galleryItems=[];
    try {
        eval( 'this._galleryItems=['+
		'new ExpressionPlayer.GalleryItem("eXtremeEmailsShowcase_v6.wmv","")'+
		'];' ); 
    }
    catch(e){}

    this._player.set_galleryInfo( this._galleryItems, Function.createDelegate(this, this._onClickGalleryItem) );  
    this._onPlayNextVideo(null,null);                                        
    },
    
    _onClickGalleryItem : function (galleryItemIndex) {
        this._player.set_mediainfo( this._playlist[ galleryItemIndex ] ); 
        this._currentMediainfo = galleryItemIndex+1;
    },

    _onMediaEnded: function(sender, eventArgs) {
        window.setTimeout( Function.createDelegate(this, this._onPlayNextVideo), 1000);
    },
    
    _onMediaFailed: function(sender, eventArgs) {
        alert(String.format( Sys.UI.Silverlight.MediaPlayer.Res.mediaFailed, this._player.get_mediaSource() ) );
    },
      

    _onPlayPreviousVideo: function(sender, eventArgs) {
        if (this._playlist!=null) {
            if (this._currentMediainfo>0) {
                this._player.set_mediainfo( this._playlist[ --this._currentMediainfo ] );    
            }
        }        
    },
    
    _onPlayNextVideo: function(sender, eventArgs) {
        if (this._playlist!=null) {
            if (this._currentMediainfo<this._playlist.length-1) {                
                this._player.set_mediainfo( this._playlist[ ++this._currentMediainfo ] );                    
            }
        }
    },
    
    autoLoadParam: function() {
	    var autoLoad=true;
	    try {
		    eval("autoLoad=('False'!=='False')");
	    } catch(e){}
	    return autoLoad;
    },  
    
    autoPlayParam: function() {
	    var autoPlay=true;
	    try
	    {
		    eval("autoPlay=('False'!=='False')");
	    } catch(e){}
	    return autoPlay;
    },  
    
    scaleModeParam: function() {
	    var scaleMode = 1/*Normal*/;
	    try {
		    eval("scaleMode=1;");
	    } catch(e){}
	    return scaleMode;
    },

    enableCaptionsParam: function() {
	    var enableCaptions=true;
	    try {
		    eval("enableCaptions=('False'!=='False');");
	    } catch(e){}
	    return enableCaptions;
    },

    mutedParam: function() {
	    var muted=false;
	    try {
		    eval("muted=('False'!=='False');");
	    } catch(e){}
	    return muted;
    }
}

function StartWithParent(parentId, appId) {
    new StartPlayer_0(parentId);
}
