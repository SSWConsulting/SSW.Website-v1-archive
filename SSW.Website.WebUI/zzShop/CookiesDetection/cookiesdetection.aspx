<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master"  Inherits="CookiesDetection" Codebehind="~/Shop/CookiesDetection/CookiesDetection.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script><script language="javascript">
<!--
// this function gets the cookie, if it exists
function Get_Cookie( name ) {
	
	var start = document.cookie.indexOf( name + "=" );
	var len = start + name.length + 1;
	if ( ( !start ) && ( name != document.cookie.substring( 0, name.length ) ) )
	{
		return null;
	}   
	if ( start == -1 ) return null;
	var end = document.cookie.indexOf( ";", len );
	if ( end == -1 ) end = document.cookie.length;
	return unescape( document.cookie.substring( len, end ) );
}

/*
only the first 2 parameters are required, the cookie name, the cookie
value. Cookie time is in milliseconds, so the below expires will make the 
number you pass in the Set_Cookie function call the number of days the cookie
lasts, if you want it to be hours or minutes, just get rid of 24 and 60.

Generally you don't need to worry about domain, path or secure for most applications
so unless you need that, leave those parameters blank in the function call.
*/
function Set_Cookie( name, value, expires, path, domain, secure ) {
	// set time, it's in milliseconds
	var today = new Date();
	today.setTime( today.getTime() );
	// if the expires variable is set, make the correct expires time, the
	// current script below will set it for x number of days, to make it
	// for hours, delete * 24, for minutes, delete * 60 * 24
	if ( expires )
	{
		expires = expires * 1000 * 60 * 60 * 24;
	}
	//alert( 'today ' + today.toGMTString() );// this is for testing purpose only
	var expires_date = new Date( today.getTime() + (expires) );
	//alert('expires ' + expires_date.toGMTString());// this is for testing purposes only

	document.cookie = name + "=" +escape( value ) +
		( ( expires ) ? ";expires=" + expires_date.toGMTString() : "" ) + //expires.toGMTString()
		( ( path ) ? ";path=" + path : "" ) + 
		( ( domain ) ? ";domain=" + domain : "" ) +
		( ( secure ) ? ";secure" : "" );
}

// this deletes the cookie when called
function Delete_Cookie( name, path, domain ) {
	if ( Get_Cookie( name ) ) document.cookie = name + "=" +
			( ( path ) ? ";path=" + path : "") +
			( ( domain ) ? ";domain=" + domain : "" ) +
			";expires=Thu, 01-Jan-1970 00:00:01 GMT";
}

function CookiesDetection()
{
// remember, these are the possible parameters for Set_Cookie:
// name, value, expires, path, domain, secure
Set_Cookie( 'test', 'none', '', '/', '', '' );
// if Get_Cookie succeeds, cookies are enabled, since 
//the cookie was successfully created.
if ( Get_Cookie( 'test' ) )
{
	Delete_Cookie('test', '/', '');
}
else
{
	parent.document.all.CookiesIFrame.style.height = 40;
	//document.write( 'cookies are not currently enabled.' );
}
}
//-->
		</script>
	
	
			
			<asp:panel id="MessagePanel" runat="server" CssClass="boldred" visible="false">
			This page 
requires cookies enabled to work correctly. <BR>
			You have disabled your cookies. Please enable cookies and try again.
			</asp:panel>
</asp:Content>