function checkIt(){
			var intCount = GetDownloadCount();

			if (intCount == 0)
			{
				alert("There are no downloads selected");
				return false;
			}
			else
			{
				return true;
			}
		}
				
		// global var for total 
		var currTotalSize = null;
		var conGrowing = -1;
		var conShrinking = 1;
	
		function UpdateCount(Obj, fileSize, totalSize, nameID, sizeID)
		{
			var intCount = GetDownloadCount();
			var currValue;
			var oClip = document.getElementById(nameID);
			
			//alert (nameID)
			
			// check to see if the page is the initial loaded page
			if (currTotalSize == null) 
				currTotalSize = parseInt(totalSize);
			else
				currTotalSize = parseInt(currTotalSize);
			
			currValue = parseInt(fileSize);		

			// if not initial page load			
			if (Obj != null)
			{  
				if (Obj.checked == false)
				{
						currTotalSize = currTotalSize - currValue
						// move div from 1 point to the row of the datagrid
						fnMoveObject(oClip, conGrowing);
						document.getElementById(nameID).style.color="blue";
						document.getElementById(sizeID).style.color="blue";

						
						document.all.CurrentSelected.style.color="blue";
						document.all.CurrentSelected.style.fontWeight="bold";
				}
				else 
				{
					if (Obj.checked == true) {
  							currTotalSize = currTotalSize + currValue;
  							
  							fnMoveObject(oClip, conShrinking);
  							document.getElementById(nameID).style.color="gray";
  							document.getElementById(sizeID).style.color="gray";
  					}
				}
				// update current total download size to global variable 'currTotalSize'
				currTotalSize = parseInt(currTotalSize);
			}
			
			var strExtra = "";
			if (intCount > 1)
			{
				strExtra = "s";
			}
			
			total = currTotalSize
			if (total > 1000)
			{
				total = (total/1000)
				total = total.toPrecision(3)
				suffix = "MB"
			}
			else
			{
				suffix = "KB"
			}

			// Display Total Size and number of files selected
			document.getElementById("DownloadSizeSpan").innerHTML = total + suffix;
			document.getElementById("CurrentSelected").innerHTML = intCount + " File" + strExtra + " ";
			var strSendButtonText;
			var strLoginStatus = "";
			if (document.getElementById("SendButton").value.indexOf("Login") > -1)
			{
				strLoginStatus= "Login and ";
			}
			
			document.getElementById("SendButton").value = strLoginStatus + "Send " + intCount + " Download" + strExtra
			
			///strLoginStatus = replaceString("1",intCount ,document.getElementById("SendButton").value)
			//strSendButtonText = replaceString("1",intCount ,document.getElementById("SendButton").value);
			//document.getElementById("SendButton").value =strSendButtonText;
		}

			function replaceString(oldS,newS,fullS) {
				// Replaces oldS with newS in the string fullS
				for (var i=0; i<fullS.length; i++) {
					if (fullS.substring(i,i+oldS.length) == oldS) {
						fullS = fullS.substring(0,i)+newS+fullS.substring(i+oldS.length,fullS.length);
					}
				}
				return fullS;
			}

		function GetDownloadCount()
		{
			var intStartCount =<%=intOtherEmailCount%>;
			var intCount = intStartCount;
				
			var e = document.forms["Form1"].elements;
			var l = e.length;
			for(i=0;i<l;i++)
			{
				if(e[i].type == "checkbox") if( e[i].checked ) intCount++;
			}
				
			return intCount;
		}