// JScript source code
/*
DHTML slideshow script- 
© Dynamic Drive (www.dynamicdrive.com)
For full source code, usage terms, and 100's more DHTML scripts, visit http://dynamicdrive.com
*/

var photos=new Array()
var photoslink=new Array()
var which=0

//define images. You can have as many as you want. Images MUST be of the same dimensions (for NS's sake)
photos[0]="images/AdamCogan_Large.gif"
photos[1]="images/CameronShaw_Large.gif"
photos[2]="images/DavidKlein_Large.gif"
photos[3]="images/SergeiTchernykh_Large.gif"
photos[4]="images/DavidReidy_Large.gif"
photos[5]="images/JohnLiu_Small.gif"
photos[6]="images/PeterAhn_Large.gif"
photos[7]="images/RossDonald_Large.gif"
photos[8]="images/JasonLien_Large.gif"
photos[9]="images/JohnPrince_Large.gif"
photos[10]="images/DanielHyles_Large.gif"
photos[11]="images/RayMoukaddem_Large.gif"
photos[12]="images/PeterHuang_Large.gif"
photos[13]="images/KyallMai_Large.gif"
photos[14]="images/DavidCai_Large.gif"
photos[15]="images/PrajwolDevkota_Large.gif"
photos[16]="images/IgorPluzhnik_Large.gif"
photos[17]="images/AnaMavrogeorgis_Large.gif"
//photos[1]="images/EmpAndrewJuliusLarge.gif"
//photos[9]="images/EmpJulieKingLarge.gif"


//Specify whether images should be linked or not (1=linked)
var linkornot=0

//Set corresponding URLs for above images. Define ONLY if variable linkornot equals "1"
photoslink[0]="<font color=black><a href='employeesprofile.aspx?EmpID=AC'>Adam Cogan</a></font>"
photoslink[1]="Cameron Shaw"
photoslink[2]="David Klein"
photoslink[3]="Sergei Tchernykh"
photoslink[4]="David Reidy"
photoslink[5]="John Liu"
photoslink[6]="Peter Ahn"
photoslink[7]="Ross Donald"
photoslink[8]="Jason Lien"
photoslink[9]="John Prince"
photoslink[10]="Daniel Hyles"
photoslink[11]="Ray Moukaddem"
photoslink[12]="Peter Huang"
photoslink[13]="Kyall Mai"
photoslink[14]="David Cai"
photoslink[15]="Prajwol Devkota"
photoslink[16]="Igor Pluzhnik"
photoslink[17]="Ana Cogan"
//do NOT edit pass this line






var preloadedimages=new Array()
for (i=0;i<photos.length;i++){
preloadedimages[i]=new Image()
preloadedimages[i].src=photos[i]
}


function applyeffect(){
if (document.all){
photoslider.filters.revealTrans.Transition=Math.floor(Math.random()*23)
photoslider.filters.revealTrans.stop()
photoslider.filters.revealTrans.apply()
}
}



function playeffect(){
if (document.all)
photoslider.filters.revealTrans.play()
}

function keeptrack(){
window.status="Image "+(which+1)+" of "+photos.length
}


function backward(){
if (which>0){
which--
applyeffect()
document.images.photoslider.src=photos[which]
document.images.photoslider.alt=photos[which]
document.all.ctlimagename.innerHTML=photos[which]
document.all.ctlname.innerHTML=photoslink[which]
playeffect()
keeptrack()
}
}

function forward(){
if (which<photos.length-1){
which++
applyeffect()
document.images.photoslider.src=photos[which]
document.images.photoslider.alt=photos[which]
document.all.ctlimagename.innerHTML=photos[which]
document.all.ctlname.innerHTML=photoslink[which]
playeffect()
keeptrack()

}
}

function transport(){
window.location=photoslink[which]
}
