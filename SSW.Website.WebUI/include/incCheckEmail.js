function checkEmail(emailAddr) {
	// this function checks for a well-formed email address
	// in the format:
	// user@domain.com
	
	var i;
	
	// check for @
	i = emailAddr.indexOf("@");
	if (i == -1) {
		return false;
	}
	
	// separate the user name and domain
	var username = emailAddr.substring(0, i);
	var domain = emailAddr.substring(i + 1, emailAddr.length)

	// look for spaces at the beginning of the username
	i = 0;
	while ((username.substring(i, i + 1) == " ") && (i < username.length)) {
		i++;
	}
	// remove any found
	if (i > 0) {
		username = username.substring(i, username.length);
	}

	// look for spaces at the end of the domain
	i = domain.length - 1;
	while ((domain.substring(i, i + 1) == " ") && (i >= 0)) {
		i--;
	}
	// remove any found
	if (i < (domain.length - 1)) {
		domain = domain.substring(0, i + 1);
	}

	// make sure neither the username nor domain is blank
	if ((username == "") || (domain == "")) {
		return false;
	}
	
	// check for bad characters in the username
	var ch;
	for (i = 0; i < username.length; i++) {
		ch = (username.substring(i, i + 1)).toLowerCase();
		if (!(((ch >= "a") && (ch <= "z")) || 
			((ch >= "0") && (ch <= "9")) ||
			(ch == "_") || (ch == "-") || (ch == "."))) {
				return false;
		}
	}
	
	// check for bad characters in the domain
	for (i = 0; i < domain.length; i++) {
		ch = (domain.substring(i, i + 1)).toLowerCase();
		if (!(((ch >= "a") && (ch <= "z")) || 
			((ch >= "0") && (ch <= "9")) ||
			(ch == "_") || (ch == "-") || (ch == "."))) {
				return false;
		}
	}

	var aSuffix = new Array("com","edu","org","gov","mil","ca","au","net","af", "de" , "om" ,"al" , "gh" , "pk" ,"dz" ," gi" ," pw ", "as" ," gr" ,
" pa", "ad" , "gl","pg" ,"ao" , "gd" , "py" ,"ai" , "gp" , "pe" ,"aq" ,
 "gu" , "ph" ,"ag" , "gt" , "pn","ar", "gn" , "pl" , 
"am" , "gw" , "pt" ,"aw" , "gy" , "pt" ,"au" , "ht" , "qa" ,"at" , "hm", "re" , 
"az" , "hn" , "ro" ,"bs" , "hk" , "ru" ,"bh" , "hu" , "rw" ,"bd" , "is" ,"kn", 
"bb" , "in" , "lc" , "by" , "id" , "vc" , "be" , "ir" , "ws" , "bz" , "iq" , "sm" , 
"bj" , "ie" , "st" , "bm" , "il" , "sa" , "bt" , "it" , "sn" , "bo" , "jm" , "sc" , 
"ba" , "jp" , "sl" , "bw" , "jo" , "sg" , "bv" , "kz" , "sk" , "br" , "ke" , "si" , 
"io" , "ki" , "sb" , "bn" , "kp" , "so" , "bg" , "kr" , "za" , "bf" , "kw" , "gs" , 
"bi" , "kg" , "es" , "kh" , "la" , "lk" , "cm" , "lv" , "sh" , "ca" , "lb" , "pm" , 
"cv" , "ls" , "sd" , "ky" , "lr" , "sr" , "cf" , "ly" , "sj" , "td" , "li" , "sz" , 
"cl" , "lt" , "se" , "cn" , "lu" , "ch" , "cx" , "mo" , "sy" , "cc" , "mk" , "tw" , 
"co" , "mg" , "tj" , "km" , "mw" , "tz" , "cg" , "my" , "th" , "ck" , "mv" , "tg" , 
"cr" , "ml" , "tk" , "ci" , "mt" , "to" , "hr" , "mh" , "tt" , "cu" , "mq" , "tn" , 
"cy" , "mr" , "tr" , "cz" , "mu" , "tm" , "dk" , "yt" , "tc" , "dj" , "mx" , "tv" , 
"dm" , "fm" , "ug" , "do" , "md" , "ua" , "tp" , "mc" , "ae" , "ec" , "mn" , "uk" , 
"eg" , "ms" , "us" , "sv" , "ma" , "um" , "gq" , "mz" , "uy" , "er" , "mn" , "uz" , 
"ee" , "na" , "vu" , "et" , "nr" , "va" , "fk" , "np", "ve",  "fo", "nl", "vn", 
"fj" , "an" , "vg" , "fi" , "nc" , "vi" , "fr" , "nz" , "wf" , "fx" , "ni" , "eh" , 
"gf" , "ne" , "ye" , "pf" , "ng" , "yu" , "tf" , "nu" , "zr" , "ga" , "nf" , "zm" , 
"gm" , "mp" , "zw" , "ge" , "no" ,"gr"

);
	var bFoundSuffix = false;
	i = 0;
	while (i < aSuffix.length) {
		if (("." + aSuffix[i]) == domain.substring(domain.length - aSuffix[i].length - 1, domain.length).toLowerCase()) {
			return true;
		}
		i++;
	}
	// we would have exited if we'd found a good suffix, so return false
	return false;
}

function emailOK(emailAddr) {
	if (!(checkEmail(emailAddr))) {
		alert("Please check the email address you entered, it is not in the right format.");
	return false;}
	else	{
	   // alert("Correct email format!");

return true;}
}
