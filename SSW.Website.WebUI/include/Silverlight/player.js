///////////////////////////////////////////////////////////////////////////////
//
//  ExtendedPlayer
//
//  This extends the base player class, you may override the base player
//  member functions or add additional player functionality here.
//
///////////////////////////////////////////////////////////////////////////////
Type.registerNamespace('ExtendedPlayer');

ExtendedPlayer.Player = function(domElement) {
	ExtendedPlayer.Player.initializeBase(this, [domElement]);  
}
ExtendedPlayer.Player.prototype =  {
	onPluginLoaded: function(args) {    
		ExtendedPlayer.Player.callBaseMethod(this, 'onPluginLoaded', [args]);   
		this._controlsHotspot = new ExpressionPlayer.HotspotButton(this, "ControlsHotspot");              
	},

	pluginDispose: function() {
 	if (this._controlsHotspot) {
	        this._controlsHotspot.dispose();
	    }    
		this._controlsHotspot=null;
		ExtendedPlayer.Player.callBaseMethod(this, 'pluginDispose');
	}
}
ExtendedPlayer.Player.registerClass('ExtendedPlayer.Player', ExpressionPlayer.Player);

