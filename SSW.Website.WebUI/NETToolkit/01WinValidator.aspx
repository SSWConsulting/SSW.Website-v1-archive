<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - WinValidator"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

		<p><a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> > <a href="/ssw/NETToolkit/userguide.aspx">User Guide</a></p>
		
		<p><img src="Images/NETToolkitLogo.gif" alt="DOT NET Tool kit - Develop Applications More Efficiently with the SSW .NET Toolkit" width="188" height="83"></p>
		
		<h1>Client Side Validation using Extended Providers</h1>
		
		<p>SSWValidator provides a simple form validation control that solves the rule 
<a href="../Standards/rules/RulesToBetterWindowsForms.aspx#ValidatorControls">Do you use Validator controls?</a></p>
<h2>What is an extended provider?</h2>

	<p>An extended provider is a component that is dropped on your forms 
            and the purpose of the extended provider is to add more properties 
            to your controls. A good example of an extended provider is the 
            ErrorProvider control that comes with Visual Studio.NET. What the 
            ErrorProvider does is to add some properties to an existing control 
            (e.g. a textbox) which allows error messages to be displayed on that 
            textbox.
     </p>
					
	<p><img border="0" src="Images/textboxControl.gif" alt="Textbox" width="240" height="32">
					<br><b><span style = "FONT-SIZE:10pt;">Figure: A textbox with the ErrorProvider attached to it
					</span></b>
	</p>
					
    <p>SSW WinValidator is an extended provider. When dropped on the form from the 
                    toolbox, it attaches additional properties to textboxes to provide 
                    field validation.</p>

<h2>How to use the SSW Validator</h2>

			<ul>
				<li>
				<p>Right-Click on the toolbox tab and click Add/Remove Items...
              (It might be a good idea to add a tab to the Toolbox 
              to hosts your custom controls)</p>
              </li>
				<li>Browse to our DLL and click on OK</li>
				<li>You should see these new components in your toolbox
		<p>
						<img border="0" src="Images/CustomControls.gif" alt="Custom controls" width="167" height="192">
						<br><b><span style = "FONT-SIZE:10pt;">Figure: The WinValidator components added to your control 
            toolbox.</span></b></p>
</li>
				<li><p>Drop the components that you will need your forms, 
          including the ErrorProvider Control that comes with Visual Studio.NET. 
          When you do that, you will see these fields added to your textbox properties.</p>
			
								<p>
						<img border="0" src="Images/ExtendedProperties.gif" alt="Extended properties" width="382" height="145"><br><b>
						<span style = "FONT-SIZE:10pt;">Figure: Additional Properties added to a textbox</span></b>
				
			</li>
				<li>On the validation Properties window of the Validation Manager, set 
          the setting as per the figure below
						<p>
						<img border="0" src="Images/ValidationManager.gif" alt="Validation Manager" width="400" height="393"><br>
						<b><span style = "FONT-SIZE:10pt;">Figure: Validation Manager Properties to be modified</span></b></p>
		</li>	
			<li>Use these to enable fields validation on your textboxes.</li>
		</ul>
			
			
				<h2>Custom Controls</h2>
				
					<p>Another way to achieve a similar result is by creating 
                    custom controls. This can be done by creating a new control 
                    which inherits the base control and then adding the 
                    properties required for validation to the new control.</p>
                    
	<table class="clsSSWTableCode">
		<tr>
			<td>Public Class mySelfValidatingTextbox<br>
            Inherits System.Windows.Forms.TextBox<br><br>
            '// Implementation code goes here<br><br>
             End Class</td>
		</tr>
	</table>
	       <b><span style = "FONT-SIZE:10pt;">Figure: Sample Self Validating Textbox</span></b>
			<p>Custom controls are good because they:</p>
	    <ul>
          <li>can be coded neatly,</li>
          <li>can be customised as needed,</li>
          <li>are easy to implement.</li>
        </ul>
			<p>Although custom controls have some benefits, they are vulnerable 
            to certain pitfalls that extended providers are not. For instance, 
            on a form that has several textboxes, in order to use a customised 
            textbox, substantial code modification would be required. It would 
            be necessary to:</p>
	    <ul>
          <li>replace every textbox that requires customisation with the newly 
          created custom textbox</li>
          <li>make sure that each new textbox has the same name as the one it 
          replaced and re-add the event handler to the existing code behind that 
          textbox (if any)</li>
          <li>ensure that each custom control is positioned in the same place on 
          the form.</li>
        </ul>
			<p>This tedious procedure makes it clear as to why Extended 
            Providers are the better choice for adding properties to controls.</p>

		</asp:content>