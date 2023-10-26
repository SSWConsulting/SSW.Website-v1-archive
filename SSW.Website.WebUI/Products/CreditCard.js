// -------------------
// INPUT VAR VALIDATION
// -------------------

function StripChars(theFilter,theString)
{
	var strOut,i,curChar

	strOut = ""
	for (i=0;i < theString.length; i++)
	{		
		curChar = theString.charAt(i)
		if (theFilter.indexOf(curChar) < 0)	// if it's not in the filter, send it thru
			strOut += curChar		
	}	
	return strOut
}
function AllInRange(x,y,theString)
{
	var i, curChar
	
	for (i=0; i < theString.length; i++)
	{
		curChar = theString.charAt(i)
		if (curChar < x || curChar > y) //the char is not in range
			return false
	}
	return true
}

//---------------------------------------------
// CREDIT CARD VALIDATION
//---------------------------------------------

function checkcc(card,Str,exp_month,exp_year){
				 
        var failed=false

        var d=new Date()
        var cur_month = d.getMonth()
        var cur_year = d.getYear()
		if (cur_year < 1000) {cur_year += 1900}
		        
        //check the expiration date
        if (exp_year < cur_year) { failed=true }
//alert(failed + "1");    
        if ((exp_year == cur_year) && (exp_month < cur_month)) { failed=true }
//alert(failed + "2");    
        //remove spaces and dashes
		Str =StripChars("- ()\n\r",Str)
						
        //check for digits only
		if (!AllInRange("0","9",Str)) { failed=true }
  
        //check length for card type
        if((card == "bank") && (Str.length != "16")){ failed=true }	
        if((card == "visa") && (Str.length != "13") && (Str.length != "16")){ failed=true }
        if((card == "master") && (Str.length != "16")){ failed=true }
        if((card == "amex") && (Str.length != "15")){ failed=true }				
// alert(failed + "3:" +Str.length);   
        if (failed){ return "false" }
		
        //verify Mod 10
        if(Str.length == "13"){failed=len13(Str)}
        if(Str.length == "15"){failed=len15(Str)}
        if(Str.length == "16"){failed=len16(Str)}
// alert(failed + ":4:");               

        // if all tests passed
        if (!failed){ return "true" }else{ return "false" }

        
}//end of checkcc function

function len13(Str){
     var cc0 = Str.charAt(0)
     var cc1 = Str.charAt(1)
     var cc2 = Str.charAt(2)
        var cc3 = Str.charAt(3)
        var cc4 = Str.charAt(4)
        var cc5 = Str.charAt(5)
        var cc6 = Str.charAt(6)
        var cc7 = Str.charAt(7)
        var cc8 = Str.charAt(8)
        var cc9 = Str.charAt(9)
        var cc10 = Str.charAt(10)
        var cc11 = Str.charAt(11)
        var cc12 = Str.charAt(12)

        var cc1a = cc1 * 2
        var cc3a = cc3 * 2
        var cc5a = cc5 * 2
        var cc7a = cc7 * 2
        var cc9a = cc9 * 2
        var cc11a = cc11 * 2

        if(cc1a >= 10) {
                cc1a=cc1a.toString()
                cc1b = cc1a.charAt(0)
                cc1c = cc1a.charAt(1)
                cc1 = parseFloat(cc1b) + parseFloat(cc1c)
        }
        else {
                cc1 = cc1a
        }

        if(cc3a >= 10) {

                cc3a=cc3a.toString()
                cc3b = cc3a.charAt(0)
                cc3c = cc3a.charAt(1)
                cc3 = parseFloat(cc3b) + parseFloat(cc3c)

        }

        else {
                cc3 = cc3a
        }

        if (cc5a >= 10) {
                cc5a=cc5a.toString()
                cc5b = cc5a.charAt(0)
                cc5c = cc5a.charAt(1)
                cc5 = parseFloat(cc5b) + parseFloat(cc5c)

        }
        
        else {
                cc5 = cc5a
        }

        if (cc7a >= 10) {
                cc7a=cc7a.toString()
                cc7b = cc7a.charAt(0)
                cc7c = cc7a.charAt(1)
                cc7 = parseFloat(cc7b) + parseFloat(cc7c)
        }

        else {
                cc7 = cc7a
        }

        if (cc9a >= 10) {
                cc9a=cc9a.toString()
                cc9b = cc9a.charAt(0)
                cc9c = cc9a.charAt(1)
                cc9 = parseFloat(cc9b) + parseFloat(cc9c)
        }

        else {
                cc9 = cc9a
        }

        if (cc11a >= 10) {
                cc11a=cc11a.toString()
                cc11b = cc11a.charAt(0)
                cc11c = cc11a.charAt(1)
                cc11 = parseFloat(cc11b) + parseFloat(cc11c)
        }
        
        else {
                cc11 = cc11a
        }


        var value = 0
        value +=parseFloat(cc0)
        value +=parseFloat(cc1)
        value +=parseFloat(cc2)
        value +=parseFloat(cc3)
        value +=parseFloat(cc4)
        value +=parseFloat(cc5)
        value +=parseFloat(cc6)
        value +=parseFloat(cc7)
        value +=parseFloat(cc8)
        value +=parseFloat(cc9)
        value +=parseFloat(cc10)
        value +=parseFloat(cc11)
        value +=parseFloat(cc12)

        value=value.toString()

        if (value.charAt(1) != 0) { return "true" }
        
}

function len15(Str){
        cc0 = Str.charAt(0)
        cc1 = Str.charAt(1)
        cc2 = Str.charAt(2)
        cc3 = Str.charAt(3)
        cc4 = Str.charAt(4)
        cc5 = Str.charAt(5)
        cc6 = Str.charAt(6)
        cc7 = Str.charAt(7)
        cc8 = Str.charAt(8)
        cc9 = Str.charAt(9)
        cc10 = Str.charAt(10)
        cc11 = Str.charAt(11)
        cc12 = Str.charAt(12)
        cc13 = Str.charAt(13)
        cc14 = Str.charAt(14)

        cc1a = cc1 * 2
        cc3a = cc3 * 2
        cc5a = cc5 * 2
        cc7a = cc7 * 2
        cc9a = cc9 * 2
        cc11a = cc11 * 2
        cc13a = cc13 * 2

        if(cc1a >= 10) {
                cc1a=cc1a.toString()
                cc1b = cc1a.charAt(0)
                cc1c = cc1a.charAt(1)
                cc1 = parseFloat(cc1b) + parseFloat(cc1c)
        }
        else {
                cc1 = cc1a
        }

        if(cc3a >= 10) {

                cc3a=cc3a.toString()
                cc3b = cc3a.charAt(0)
                cc3c = cc3a.charAt(1)
                cc3 = parseFloat(cc3b) + parseFloat(cc3c)
        }

        else {
                cc3 = cc3a
        }

        if (cc5a >= 10) {
                cc5a=cc5a.toString()
                cc5b = cc5a.charAt(0)
                cc5c = cc5a.charAt(1)
                cc5 = parseFloat(cc5b) + parseFloat(cc5c)
        }
        
        else {
                cc5 = cc5a
        }

        if (cc7a >= 10) {
                cc7a=cc7a.toString()
                cc7b = cc7a.charAt(0)
                cc7c = cc7a.charAt(1)
                cc7 = parseFloat(cc7b) + parseFloat(cc7c)
        }

        else {
                cc7 = cc7a
        }

        if (cc9a >= 10){
                cc9a=cc9a.toString()
                cc9b = cc9a.charAt(0)
                cc9c = cc9a.charAt(1)
                cc9 = parseFloat(cc9b) + parseFloat(cc9c)
        }

        else {
                cc9 = cc9a
        }

        if (cc11a >= 10) {
                cc11a=cc11a.toString()
                cc11b = cc11a.charAt(0)
                cc11c = cc11a.charAt(1)
                cc11 = parseFloat(cc11b) + parseFloat(cc11c)
        }
        
        else {
                cc11 = cc11a
        }

        if (cc13a >= 10) {
                cc13a=cc13a.toString()
                cc13b = cc13a.charAt(0)
                cc13c = cc13a.charAt(1)
                cc13 = parseFloat(cc13b) + parseFloat(cc13c)
        }
        
        else {
                cc13 = cc13a
        }

        value = 0
        value +=parseFloat(cc0)
        value +=parseFloat(cc1)
        value +=parseFloat(cc2)
        value +=parseFloat(cc3)
        value +=parseFloat(cc4)
        value +=parseFloat(cc5)
        value +=parseFloat(cc6)
        value +=parseFloat(cc7)
        value +=parseFloat(cc8)
        value +=parseFloat(cc9)
        value +=parseFloat(cc10)
        value +=parseFloat(cc11)
        value +=parseFloat(cc12)
        value +=parseFloat(cc13)
        value +=parseFloat(cc14)

        value=value.toString()

        if (value.charAt(1) != 0) { return "true" }    
}

function len16(Str) {
        cc0 = Str.charAt(0)
        cc1 = Str.charAt(1)
        cc2 = Str.charAt(2)
        cc3 = Str.charAt(3)
        cc4 = Str.charAt(4)
        cc5 = Str.charAt(5)
        cc6 = Str.charAt(6)
        cc7 = Str.charAt(7)
        cc8 = Str.charAt(8)
        cc9 = Str.charAt(9)
        cc10 = Str.charAt(10)
        cc11 = Str.charAt(11)
        cc12 = Str.charAt(12)
        cc13 = Str.charAt(13)
        cc14 = Str.charAt(14)
        cc15 = Str.charAt(15)

        cc0a = cc0 * 2
        cc2a = cc2 * 2
        cc4a = cc4 * 2
        cc6a = cc6 * 2
        cc8a = cc8 * 2
        cc10a = cc10 * 2
        cc12a = cc12 * 2
        cc14a = cc14 * 2

        if(cc0a >= 10) {
                cc0a=cc0a.toString()
                cc0b = cc0a.charAt(0)
                cc0c = cc0a.charAt(1)
                cc0 = parseFloat(cc0b) + parseFloat(cc0c)
        }
        else {
                cc0 = cc0a
        }

        if(cc2a >= 10) {

                cc2a=cc2a.toString()
                cc2b = cc2a.charAt(0)
                cc2c = cc2a.charAt(1)
                cc2 = parseFloat(cc2b) + parseFloat(cc2c)
        }

        else {
                cc2 = cc2a
        }

        if (cc4a >= 10) {
                cc4a=cc4a.toString()
                cc4b = cc4a.charAt(0)
                cc4c = cc4a.charAt(1)
                cc4 = parseFloat(cc4b) + parseFloat(cc4c)
        }
        
        else {
                cc4 = cc4a
        }

        if (cc6a >= 10) {
                cc6a=cc6a.toString()
                cc6b = cc6a.charAt(0)
                cc6c = cc6a.charAt(1)
                cc6 = parseFloat(cc6b) + parseFloat(cc6c)
        }

        else {
                cc6 = cc6a
        }

        if (cc8a >= 10) {
                cc8a=cc8a.toString()
                cc8b = cc8a.charAt(0)
                cc8c = cc8a.charAt(1)
                cc8 = parseFloat(cc8b) + parseFloat(cc8c)
        }

        else {
                cc8 = cc8a
        }

        if (cc10a >= 10) {
                cc10a=cc10a.toString()
                cc10b = cc10a.charAt(0)
                cc10c = cc10a.charAt(1)
                cc10 = parseFloat(cc10b) + parseFloat(cc10c)
        }

        else {
                cc10 = cc10a
        }

        if (cc12a >= 10) {
                cc12a=cc12a.toString()
                cc12b = cc12a.charAt(0)
                cc12c = cc12a.charAt(1)
                cc12 = parseFloat(cc12b) + parseFloat(cc12c)
        }
        
        else {
                cc12 = cc12a
        }

        if (cc14a >= 10) {
                cc14a=cc14a.toString()
                cc14b = cc14a.charAt(0)
                cc14c = cc14a.charAt(1)
                cc14 = parseFloat(cc14b) + parseFloat(cc14c)
        }
        
        else {
                cc14 = cc14a
        }
		
        var value = 0
        value +=parseFloat(cc0)
        value +=parseFloat(cc1)
        value +=parseFloat(cc2)
        value +=parseFloat(cc3)
        value +=parseFloat(cc4)
        value +=parseFloat(cc5)
        value +=parseFloat(cc6)
        value +=parseFloat(cc7)
        value +=parseFloat(cc8)
        value +=parseFloat(cc9)
        value +=parseFloat(cc10)
        value +=parseFloat(cc11)
        value +=parseFloat(cc12)
        value +=parseFloat(cc13)
        value +=parseFloat(cc14)
        value +=parseFloat(cc15)

        value=value.toString()

        if (value.charAt(1) != 0) { return "true" }
}