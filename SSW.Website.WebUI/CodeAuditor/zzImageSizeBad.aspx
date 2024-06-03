<%@ Page  Language="C#" AutoEventWireup="false" Title="Code Auditor Samples"  %>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr valign="middle">    
    <td bgcolor="#999999"><h1>SSW Code Auditor Samples - Bad Image Size</h1></td>
  </tr>
</table>

<p><a name="IMGWidth"></a>Width of images in web pages must not be more than 600 pixels. See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx#OversizedWidth">Printing: Do you check for oversized images and table?</a> for more details.
</p>
<p style="color:#FF0000"><img src="Images/WAS_NOT_IN_TFS/Bad.gif" width="16" height="16"> This image is oversized (over 600 pixel wide):</p>
<p><img src="Images/WAS_NOT_IN_TFS/ImageSizeBad.gif" width="841" height="588" border="0"></p><br/>

<p>Go Print - Preview and see how it goes in 100% print size.</p>
<p><img src="Images/WAS_NOT_IN_TFS/PrintSizeBad.gif" width="816" height="670"></p>

