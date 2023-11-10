<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better WPF & Silverlight" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <div class="Intro">
        <p>
            Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C494E51')">Let us know</a> what you think.
            </p>
    </div>
    <div class="TableOfContents">
        <p>
            <strong>SSW Rules to Better WPF & Silverlight</strong></p>
       
        <ol>
            <li><a href="#Prism">Do you follow Composite Application Guidance (formerly code-named "Prism") in your Silverlight (and WPF) Projects?</a></li>
            <li><a href="#MVVM">Do you use the MVVM pattern in your Silverlight (and WPF) Projects?</a></li>  
            <li><a href="#ThreadSleep">Do you avoid using Thread.Sleep in your Silverlight application? </a></li>         
        </ol>
        <p>Note: This page has been moved to SahrePoint <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterSilverLight/Pages/default.aspx">http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterSilverLight/Pages/default.aspx</a></p>
    </div>
    <div id="mainContent">
        <ol>
           <li>
				<h2><a name="Prism"></a>Do you follow Composite Application Guidance (formerly code-named "Prism") in your Silverlight (and WPF) Projects?</h2>
				<p>
				    The Composite Application Guidance from the patterns & practices team at Microsoft is designed to help you more easily build loosely coupled, independently evolvable modular WPF and Silverlight client applications
				     which take advantage of the capabilities of WPF and Silverlight.
				 </p>
				<p>   
				   With  Composite Application Library (CAL), you can only adopt the components your application requires. For example, you could change your communication approach from .NET Framework events to use the Event Aggregator, which allows you to send loosely coupled messages between modules.
				    <br /><br />
				    <a href="http://msdn.microsoft.com/en-us/library/cc707819.aspx">Composite Application Guidance</a>
				</p>
		   </li>
		   <li>
				<h2><a name="MVVM"></a>Do you use the MVVM pattern in your Silverlight (and WPF) Projects?</h2>
				<p>
				    The term MVVM means Model-View-ViewModel design pattern. This pattern is an adaptation of the MVC and MVP patterns in which the view model provides a data model and behavior to the view but allows the view to declaratively bind to the view model. 
				    The view becomes a mix of XAML and C# (as WPF or Silverlight controls), the model represents the data available to the application, and the view model prepares the model in order to bind it to the view.				    
				</p>
				<p>
				    The most important aspect of WPF or Silverlight that makes MVVM a great pattern to use is the data binding infrastructure. 
				    By binding properties of a view to a ViewModel, you get loose coupling between the two and entirely remove the need for writing code in a ViewModel that directly updates a view. 
				    In a sense, Views and unit tests are just two different types of ViewModel consumers. Having a suite of tests for an application's ViewModels provides free and fast regression testing, which helps reduce the cost of maintaining an application over time.
				    <br /><br />
				    <a href="http://msdn.microsoft.com/en-us/magazine/dd419663.aspx">a good article about MVVM</a>
				</p>
		   </li>
		   <li>
		      <h2><a name="ThreadSleep"></a>Do you avoid using Thread.Sleep in your Silverlight application?</h2>
		       <p>
		         Calling Thread.Sleep on your Silverlight application causes the UI thread to sleep. That means the application is not responsive.<br />
                If you want to delay something, you can use a <a href="http://msdn.microsoft.com/en-us/library/system.windows.media.animation.storyboard.aspx">storyboard</a>.  
		       </p>
		       <pre class="brush:vb;">
Thread.Sleep(5000);
this.Dispatcher.BeginInvoke(new Action(() =>
                                            {
                                                //Try to reconnect in the background
                                                Connect.Execute(null);
                                            }));
Bad: Using Thread.Sleep() causes your Silverlight application to freeze

 
 
 
Storyboard sb = new Storyboard() { Duration = TimeSpan.FromSeconds(5) };

sb.Completed += (ds, de) => this.Dispatcher.BeginInvoke(new Action(() =>
                                                                        {
                                                                            //Try to reconnect in the background
                                                                            Connect.Execute(null);
                                                                        }));
sb.Begin();                
                </pre>
             <p class="goodCode">GOOD: Use a Storyboard with a duration of the delay and once the Storyboard is finished running</p>
		   </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JZ">James Zhou</a>
        </p>
    </div>
</asp:Content>
