<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - Configuration"  %>
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
		
		<h1>Managing the storage of application configuration settings</h1>		

<h2>Key Features and benefits of SSW Configuration</h2>
	<p>How do you get a setting from a configuration file?&nbsp; What do you 
			do when you want to get a setting from a registry, a database or 
			memory?&nbsp; Everyone faces these problems, and most people come up with 
			their own solution.&nbsp; We used to have a few different standards, but 
			when Microsoft released the Configuration Application Blocks, we 
			have found that working to extend it and use it in all our projects 
			saves us a lot of time! Use a a local configuration file for machine 
			and/or user specific settings (such as a connection string), and use 
			a database for any shared values such as Tax Rates.</p>
	<p>Now, getting a setting is a breeze, the code is simple, and no 
			one has to worry about how it works underneath.&nbsp; Here are the 
			procedures for setting your project up to use the Configuration 
			Management Application Block (CMAB).</p>
	<ol>
		<li>Reference the Configuration block dll from the package. <br></li>
		<li>
		<p align="left"><a name="ConfigFiles"></a>For your convenience, 
				an example App.Config and Settings.Config files is available 
				here: Configs.zip<br>If you use 
				these as a starting point, read the comments in the App.Config 
				file and remove any sections that you won't need (like database, 
				memory section handlers)</p></li>
		<li>
		<p align="left">Modify your App.Config, you'll need to copy &amp; 
				paste the sections that you want into your current App.Config 
				file.<br><br>App.Config is a special file that Visual Studio.NET uses, at 
				compilation, it is converted to &lt;AppName&gt;.Config and resides in 
				the same folder as the application.</p>
		<p>Your App.Config needs the following lines/sections as a 
				minimum:</p>
				
		<dl class="code">
		    <dt>
		        <pre>&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;configuration&gt;
  &lt;configSections&gt;
    <span class="TakeNote">&lt;section 
    name=&quot;applicationConfigurationManagement&quot; 
    type=&quot;Microsoft.ApplicationBlocks.ConfigurationManagement.
    ConfigurationManagerSectionHandler,
    SSW.Framework.Configuration&quot;/&gt;
		
    &lt;section 
    name=&quot;FileSettings&quot; 
    type=&quot;SSW.Framework.Configuration.DictionarySectionHandlerWriter, 
    SSW.Framework.Configuration&quot;/&gt;
  &lt;/configSections&gt;</span>

  <span class="TakeNote">&lt;applicationConfigurationManagement <br />defaultSection=&quot;FileSettings&quot;&gt;
    &lt;configSection name=&quot;FileSettings&quot;&gt;
    &lt;configCache enabled=&quot;true&quot; refresh=&quot;1 * * * *&quot; /&gt;
    &lt;configProvider 
     assembly=&quot;SSW.Framework.Configuration&quot; 
     type=&quot;Microsoft.ApplicationBlocks.ConfigurationManagement.Storage.XmlFileStorage&quot;
     signed=&quot;false&quot; 
     refreshOnChange=&quot;false&quot; 
     encrypted=&quot;false&quot; 
     path=&quot;Settings.config&quot; /&gt;
     &lt;/configSection&gt;
     &lt;/applicationConfigurationManagement&gt;
</span>&lt;/configuration&gt;</pre>
		    </dt>
		    <dd>
		        Figure: App.Config code
		    </dd>		
		</dl>
		<dl class="code">
		    <dt>
		        <pre>
&lt;?xml version="1.0" encoding="utf-8" ?&gt;
&lt;configuration&gt;
      &lt;configSections&gt;
            &lt;section 
            name="applicationConfigurationManagement" 
            type="Microsoft.ApplicationBlocks.ConfigurationManagement.ConfigurationManagerSectionHandler,
            SSW.Framework.Configuration" /&gt;
            &lt;section name="FileSettings" type="SSW.Framework.Configuration.DictionarySectionHandlerWriter, 
            SSW.Framework.Configuration" /&gt;
      &lt;/configSections&gt;
      &lt;applicationConfigurationManagement  defaultSection="FileSettings"&gt;
    	   &lt;configSection name="FileSettings"&gt;
                  &lt;configCache enabled="true" refresh="1 * * * *" /&gt;
                  &lt;configProvider 
                        assembly="SSW.Framework.Configuration" 
                        type="Microsoft.ApplicationBlocks.ConfigurationManagement.Storage.XmlFileStorage"
                        signed="false" 
                        refreshOnChange="true" 
                        encrypted="false" 
                        path="<span style="background-color: #FFFF00">{base.dir}Settings.config</span>" /&gt;
            &lt;/configSection&gt;
      &lt;/applicationConfigurationManagement&gt;
  &lt;system.web&gt;
</pre>
		    </dt>
		    <dd>
		        Figure: Note the difference in the path when using with the 
				Web.config in a Web Application.
		    </dd>
		</dl>
</li>
		<li>For file settings, the settings is written to &quot;Settings.config&quot; 
				in the application directory. The format is like this:
				<dl class="code">
				    <dt>
				        <pre>&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
    &lt;configuration&gt;
     &lt;FileSettings&gt;
       &lt;appSettings&gt;
         &lt;add key=&quot;My Setting&quot; value=&quot;My Value&quot;/&gt;
         &lt;add key=&quot;My Setting 2&quot; value=&quot;2&quot;/&gt;
       &lt;/appSettings&gt;
     &lt;/FileSettings&gt;
    &lt;/configuration&gt;
    </pre>
				    </dt>
				    <dd>
				        Figure: Settings.Config format
				    </dd>
				</dl>
			<p>You'll need to have a copy in your application directory for 
				it to work, the application block can automatically add new 
				key/values, but it will not create the new file if the file 
				doesn't already exist. You can use the one from the zip file 
				available in 
				<a href="#ConfigFiles">step 2</a> as a starting point.</p></li>
		<li>Code in your application is very simple, once you have 
				referenced the files, use this code to read and write to the 
				settings. 
				<dl class="code">
				    <dt>
				    <pre>string value = ConfigurationManager.Items[&quot;My Setting&quot;];
ConfigurationManager.Items[&quot;My Setting&quot;] = value;

int i = Convert.ToInt32(ConfigurationManager.Items[&quot;My Setting 2&quot;]);
ConfigurationManager.Items[&quot;My Setting 2&quot;] = i;</pre>
				    </dt>
				    <dd>
				    Figure: Code to read and write to your settings
				    </dd>				
				</dl>
		</li>
		<li>You should always encapsulate and use the settings in a 
				strong-bound way, so create a class Configuration and do the 
				following:
				<dl class="code">
				    <dt>
				    <pre>public sealed class Configuration
{
   // Prevent the class from being constructed
   private Configuration() { }

   public static string MySetting
   {
      get
      {
         // if the value doesn't exist (e.g. XML node doesn't exist), <br />Configuration will
         // return (null) instead of empty string (&quot;&quot;)
         // so we need a few more lines of code to handle this situation.
         object val = ConfigurationManager.Items[&quot;My Setting&quot;];

         if ( val == null ) return string.Empty;
            return val.ToString();
      }
      set
      {
         ConfigurationManager.Items[&quot;My Setting&quot;] = value;
      }
   }

   public static int MySetting2
   {
      get
      {
         //Use a try/catch ParseException if the setting isn't a valid integer.
         //This also catches if the value returned is null

         try
         {
            return Convert.ToInt32(ConfigurationManager.Items[&quot;My Setting 2&quot;]);
         }
         catch
         {
            return 0;
         }
      }
      set
      {         ConfigurationManager.Items[&quot;My Setting 2&quot;] = value;
      }}
   }
}

//Then, in your code, write
//Configuration.MySetting = &quot;hi&quot;;
//int i = Configuration.MySetting2;</pre>
				    </dt>
				    <dd>
				    Figure: Use your settings in a Strong-Bound way
				    </dd>				
				</dl> 
        		</li>
	</ol>

<h2>Do you have a resetdefault() function in your configuration management application block?</h2>
<p>This ensures that a new user on a different computer will always have a 
working config file. This solves the rule <a href="../Standards/rules/RulesToBetterWindowsForms.aspx#ResetDefault">Do you have a ResetDefault() function 
to handle messed up user settings?</a></p>


<ol>
	<li>First we need a proper setup of our App.config file, as per the sample above we need to add one more block in our App.config file
		<dl class="code">
		<dt>
		    <pre>
			&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
			&lt;configuration&gt;
			  &lt;configSections&gt;
			    <span class="TakeNote">&lt;section 
			    name=&quot;applicationConfigurationManagement&quot; 
			    type=&quot;Microsoft.ApplicationBlocks.ConfigurationManagement.
			    ConfigurationManagerSectionHandler,
			    SSW.Framework.Configuration&quot;/&gt;
					
			    &lt;section 
			    name=&quot;DefaultSettings&quot; 
			    type=&quot;SSW.Framework.Configuration.DictionarySectionHandlerWriter, 
			    SSW.Framework.Configuration&quot;/&gt;
			  &lt;/configSections&gt;</span>
			
			  <span class="TakeNote">&lt;applicationConfigurationManagement defaultSection=&quot;<br />DefaultSettings&quot;&gt;
			    &lt;configSection name=&quot;FileSettings&quot;&gt;
			    &lt;configCache enabled=&quot;true&quot; refresh=&quot;1 * * * *&quot; /&gt;
			    &lt;configProvider 
			     assembly=&quot;SSW.Framework.Configuration&quot; 
			     type=&quot;Microsoft.ApplicationBlocks.ConfigurationManagement.Storage.XmlFileStorage&quot;
			     signed=&quot;false&quot; 
			     refreshOnChange=&quot;false&quot; 
			     encrypted=&quot;false&quot; 
			     path=&quot;default.config&quot; /&gt;
			     &lt;/configSection&gt;
			     &lt;/applicationConfigurationManagement&gt;
			</span>&lt;/configuration&gt;
							</pre>
		</dt>
		<dd>
		    Figure: Code to add in App.Config file.
		</dd>
		
		</dl>
		<p>Include the following code in ConfigurationManager.cs this will 
				copy all the settings in default.config to settings.config file.</p>
		<dl class="code">
		    <dt>
		        <pre>
				#region ResetDefault
				/// <summary>
				/// This function will reset your configuration settings to default.
				/// </summary>
				public static void ResetDefaults() 
				{
					Hashtable ht = ReadDefaults();
					Hashtable htSection = ConfigurationManager.Read();
					if (ht == null)
					{
						return;
					}
				
					if (htSection == null)
					{
						htSection = new Hashtable();
					}
					Hashtable dumpHt = ht.Clone() as Hashtable;
					foreach (Object obj in dumpHt.Keys) 
					{
						htSection[ obj ] = ht [ obj ] ;
					}
					ConfigurationManager.Write( htSection );
				}
				
				private static Hashtable ReadDefaults()
				{
					// Check the static initialization result
					if( !_isInitialized ) 
					{
						throw _initException;
					}
					
					object section = Read( DEFAULTSECTION_NAME );
					if( section == null ) 
					{
						return null;
					}
					if( !( section is Hashtable ) ) 
					{
					throw new ConfigurationException( 
						Resource.ResourceManager<br />
						[ "RES_ExceptionConfigurationManagerDefaultSectionIsNotHashtable" ] );
					}
					return (Hashtable)section;
				}
				
				
				#endregion
				</pre>
		    </dt>
		    <dd>
		        Figure: Code to implement in ConfigurationManager.cs
		    </dd>		
		</dl>		
	</li>
	
	<li>Call this function in our application.
	<dl class="code">
	<dt>
	<pre>
			if(ConfigurationManager.Items["ComputerName"] != Environment.MachineName)
			{
				ConfigurationManager.ResetDefault();
				ConfigurationManager.Items["ComputerName"] = Environment.MachineName;
			}
			</pre>
	</dt>
	<dd>
	Figure: Sample Code to implement resetDefault in our applications
	</dd>	
	</dl>
	</li>
</ol>

<p>
By default we will have an empty setting called &quot;ComputerName&quot; in the settings 
file. Developers always accidentally package their development setting files in 
the build. If the machine name is different we should reset the default with the above function.
</p>

		</asp:content>