// JScript File 
//Script for Event Calendar on New.Master
function toggleBlock(blockID, textID) {
    var blockID = document.getElementById(blockID);
    var textID = document.getElementById(textID);

    if(blockID.style.display == '') {
	    blockID.style.display = 'none';
	    textID.innerHTML = "More <b>&#8744</b>";
    } else {
	    blockID.style.display = '';
	    textID.innerHTML = "Less <b>&#8743</b>";
    }
}
function switch1(div) {
var option=['WebsiteDevelopment','WindowsApplication','CMS','DatabaseDevelopment','SystemArchitecture','CustomSolutions'];
for(var i=0; i<option.length; i++) {
if (document.getElementById(option[i])) {
obj=document.getElementById(option[i]);
obj.style.display=(option[i]==div)? "block" : "none";
}
}
}
window.onload=function () {switch1('WebsiteDevelopment');}