<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft WPF Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
	</asp:SiteMapPath>
</p>

<asp:label id="lblWelcome" runat="server"></asp:label>
<p>
	<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"> Indicates important rule
</p>
<p>
<p>
<p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
<tr>
<td>
<ol>
	<li><a href="#InkCanvas">Provide built in fill functionality for the InkCanvas rather than implementing a work around using pixels</a></li>
	<li><a href="#3DMeshGeometry">3DMeshGeometry does not provide good support for dynamically creating a surface based on points</a></li>
	<li><a href="#LinePrimitive">The Line Primitive functionality given by the ScreenSpaceLines3D object should not have been removed from .NET 3.0's object model</a></li>
	<li><a href="#Inherit">There is currently no way to inherit off a BaseForm in WPF</a></li>
	<li><a href="#UserControl">When customized UserControls are added into XAML, it breaks the WPF designer in Visual Studios</a></li>
	<li><a href="#ImproveCheckedListBox">Have a CheckedListBox support Control+A and Control+C</a></li>
	<li><a href="#Package">WPF Projects should have an option to package and deploy</a></li>
</ol>
</td>
</tr>
</table>
<ol>
<li>
    <h2><a name="InkCanvas"></a>Provide built in fill functionality for the InkCanvas rather than implementing a work around using pixels</h2>
    Currently, there is no fill functionality for InkCanvas. The only way to fill shape is to add a basic shape as a children. Furthermore, it's not facility to get pixel from point, so that the InkCanvas must be converted to Bitmap and then get the pixel. It's much better to add some GDI+ properties in it.
</li>
<li>
    <h2><a name="3DMeshGeometry"></a>3DMeshGeometry does not provide good support for dynamically creating a surface based on points</h2>
    3DMeshGeometry can only define triangle primitive as its surface, if the surface is polygon, the points index of triangle must be defined very carefully, otherwise it should be shown out of your imagination. So polygon surface should be supported by 3DMeshGeometry.
</li>
<li>
    <h2><a name="LinePrimitive"></a>The Line Primitive functionality given by the ScreenSpaceLines3D object should not have been removed from .NET 3.0's object model</h2>
    This is currently the only method of dynamically creating objects based purely on vectors (x,y,z). It has been extremely useful because we are importing directly from a csv file, rather than creating the 3D objects manually by defining the Triangle space they are in.
    Currently I use a third party application that Daniel Lehenbauer wrote to replicate this functionality. It is found at <a href="/SSW/Redirect/MicrosoftBlogs/3DTools.htm">http://blogs.msdn.com/danlehen/archive/2006/05/29/610310.aspx</a>
</li>
<li>
    <h2><a name="Inherit"></a>There is currently no way to inherit off a BaseForm in WPF</h2>
    Currently the Form's Icon, and the OK and Cancel button are copied, and pasted for similar functionality in each form. It is not a good method for reusable functionality. We could add them as user controls, but then base functionality that we want reused from a base class would not be appropriate for this.
</li>
<li>
    <h2><a name="UserControl"></a>When customized UserControls are added into XAML, it breaks the WPF designer in Visual Studios</h2>
    The XAML designer will be invalidated if an user control is added to form. A render error might happen on refreshing the user control. It will be ok, even if an icon, which represents an user control, is shown in the form.
</li>
<li>
    <h2><a name="ImproveCheckedListBox"></a>Have a CheckedListBox support Control+A and Control+C</h2>
    <p>Add support for Control+A to select all items.<br/>
       Add support for Control+C to copy all items to the clipboard.<br/>
    </p>
    <dl class="image">
     <dt>
      <img src="Images/ImproveCheckedListBox.jpg" alt="These functionalities should be default in Windows Forms" /></dt>
      <dd>Figure: Windows Forms should have the same functionality</dd></dl><br/>
    <p>See the same suggestion at <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#ImproveCheckedListBox">Microsoft .NET (Windows Forms) suggestions</a>. </p>
</li>
<li>
    <h2><a name="Package"></a>WPF Projects should have an option to package and deploy</h2>
    <p>One of the things that is always last on the developer's mind is deployment. With Web Projects deployment is just two clicks away:
    <ol>
    <li>Right click the project</li>
    <li>Create Package</li>
    </ol>
    </p>
    <dl class="image">
     <dt>
      <img src="Images/CreatePackage.jpg" alt="Create package" /></dt>
      <dd>Figure: Deployment options are in the context menu of the project</dd>
     </dl>
      <p>For a WPF project, the deployment menu can add a new Setup Project to the solution.</p>
</li>

</ol>
<h2>Acknowledgements</h2>
<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p> 
</asp:content>