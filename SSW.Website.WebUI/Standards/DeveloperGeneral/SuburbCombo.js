var req;
var ctlName ="autocomplete";
var ctlSuburbName;
var ctlKeywordName ="keyword";
var ctlPostCode;
function Initialize()
{
	try
	{
		req=new ActiveXObject("Msxml2.XMLHTTP");
	}
	catch(e)
	{
		try
		{
			req=new ActiveXObject("Microsoft.XMLHTTP");
		}
		catch(oc)
		{
			req=null;
		}
	}

	if(!req&&typeof XMLHttpRequest!="undefined")
	{
		req=new XMLHttpRequest();
	}
	
}

function SendQuery(key)
{

    var url="SuburbCombo.aspx?k="+key;

    

	Initialize();
	//ctlName =controlName
	if(req!=null)
	{
		req.onreadystatechange = Process;
		req.open("GET", url, true);
        req.send(null);
	}
}

function Process()
{
	if (req.readyState == 4) 
        {
         //only if "OK"
			if (req.status == 200) 
			{
				if(req.responseText=="")
					HideDiv(ctlName);
				else
				{
					ShowDiv(ctlName);
					document.getElementById(ctlName).innerHTML =req.responseText;
					document.getElementById(ctlName).style.backgroundColor = "#ccccff";
				}
			}
			else 
			{
				document.getElementById(ctlName).innerHTML="There was a problem retrieving data:<br>"+req.statusText;
			}
		}
}

function ShowDiv(divid) 
{
   if (document.layers) document.layers[divid].visibility="show";
   else 
    {
        document.getElementById(divid).style.display="";
   
   }
}

function HideDiv(divid) 
{
   if (document.layers) document.layers[divid].visibility="hide";
   else 
   {
        document.getElementById(divid).style.display="none";
   }
}

function BodyLoad()
{
	HideDiv(ctlName);
	
}
function OnClickSelectedID(id)
{
  //document.getElementById(ctlSuburbName).innerText=id;
}

function OnClickHideMe(suburb)
{
   
 alert("You selected " + suburb);
 document.getElementById(ctlKeywordName).innerText=suburb;
 HideDiv(ctlName);

}

