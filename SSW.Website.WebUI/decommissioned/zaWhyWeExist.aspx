<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Page  MasterPageFile="~/Masters/Default.master" Title="[DECOMMISSIONED] SSW Sydney Consulting - Why we exist"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

				<asp:label id="lblWelcome" runat="server"></asp:label><p>
		<h1>[DECOMMISSIONED]</h1>
		<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="4" />
		
		<p>
		<table class="clsSSWTable" align="center">
			<tr> 
				<td>
					<a href="#Whyweexist">1.</a> Why we 
					exist<br>
					<a href="#TheSSWTeam">2.</a> Technical Goals<br>
					<a href="#Education">3.</a> Education<br>
					<a href="#TradingHours">4.</a> Dealing with Customers<br>
					<a href="#WorldTimes">5.</a> What to expect from our 
					developers<br>
					<a href="#Bank">6.</a> Obligations to other members<br>
				</td>
			</tr>
		</table>
	
		<ol>
			<li>
			<a name="Whyweexist"></a>
					
					<h2>Why We exist</h2>
					
			</li>
			<p>
				People often ask our staff 'why do you work for SSW rather than 
				doing consulting work as an individual?' Certainly each of us should be good enough to make $1000/day 
				w more as an individual consultant. The reason we have banded together so that we can 
				take on the larger and more technical jobs that require more 
				resources and skills! As dedicated developers who love coding, 
				this is a mroe satisfactory arrangement. Also, as a group we are 
				able to provide better support, and add-ons like hosting if 
				needed.</p>
			<p>
				Software is complicated today and the best solutions come out of teams (the 
				once common scenario of a single developer working with Access has gone...) 
				We work in pairs according to the
				<a href="../Methodology/XPDM.aspx">eXtreme Programming 
				Methodology</a>, which we believe has contributed a large amount 
				to our success. This pair programming means that developers can cover for each other 
				in cases where one may be on leave and support is needed. Customers 
				need to feel that they won't be left on their own if something 
				goes wrong, and that's one of SSW's strong points. We share knowledge, 
				we support each other with complementary expertise 
				and we don't have much tolerance for downtime or failure.	
			</p>
			<p>
				&nbsp;
			</p>		
			
			<li>		
			<a name="TheSSWTeam"></a>
					
					<h2>Technical Goals</h2>
			</li>
			<p>
				We conform to our own strictly enforced
				<a href="../Standards/Rules/Default.aspx">development and coding 
				standards</a> that are commonly accepted 'best practices'. This 
				ensures that we
				An SSW built application should be:
			</p>
			<ul>
				<li>Easy to navigate (see our drop down menu)</li>
				<li>Fast - i.e. responsive to users 
				</li>
				<li>Clean 
			<ul>
				<li>Don't bombard users with options they don't need to know about</li>
				<li>Use wizards when doing complex tasks that you don't do every 
				day</li>
			</ul>
				</li>
				<li>Useful (Concentrate on content rather than graphics).&nbsp; 
				Sexiness doesn't bring business value - although the user must have a positive experience - eg 
				Google doesn't have flash intro screen... 
				</li>
				<li>Customizable.</li>
			</ul>
			<p>
				&nbsp;
			</p>		
			
			<li>		
			<a name="Education"></a>
					
					<h2>Education</h2>
			</li>
			<p>
				As well as all being Microsoft Certified Professionals, here at SSW
				we are happy to educate others people. We are often asked why we 
				publish our standards on our site for the world to copy and use. 
				The reason is that we learn from others peoples responses, and 
				we increase our technical expertise by exposing ourselves and 
				inviting criticism. We:</p>
			<ul>
				<li>Educate people by building great sites 
				</li>
				<li>Run the <a href="../NETUG/Default.aspx">Sydney .NET User 
				Group</a></li>
				<li>Regularly deliver custom desigend programming training</li>
				<li>Run <a href="/ssw/Events/SSWTechBreakfast.aspx">
				SSW Tech Breakfasts</a> 
				</li>
				<li>Make the Demo Materials for SSW Products available on the 
				Web for free so that other people can use them to teach 
				face-to-face classes or learn on their own</li>
				<li>Provide code in our Knowledge Base  
				</li>
				<li>Maintain KB/CodeBase</li>
			</ul>
			<p>
				&nbsp;
			</p>		
					
			
			<li>		
			<a name="TradingHours"></a>
					
					<h2>Dealing with customers</h2>
			</li>					
			<p>		
				It is our belief that the first principle of good business is that 
				you do not lie to customers. If a service goes down because of something we did wrong and should have known not to do, we tell the customer exactly what we did wrong in as clear language as possible. Even if the customer might not know that this was a stupid thing to do under Unix or Oracle, we explicitly tell them "this was a stupid thing to do." If we slacked off and partied all weekend and didn't finish some work that we promised, we admit it rather than conjuring up mythical technical dragons to slay. We do not take advantage of customer ignorance to hide our mistakes, a practice that is depressingly widespread in our industry. 
			</p>
			<ul>
				<li>Don't overwhelm customer with technical jargon - explain status to the customer in real terms - "constant communication doesn't solve problems"
				</li>
				<li>involve the customer in all steps
				</li>
				<li>Never be vague in requirements or contracts
				</li>
				<li>"To-do" lists need to be specific - never say "we will fix all these bugs..." *********need a list....**********
				</li>
				<li>Always be clear about billable work </li>
			</ul>
			<p>
				&nbsp;
			</p>
			
			<li>		
			<a name="WorldTimes"></a>
					
					<h2>What to expect from developers</h2>	
			</li>
			<p>
				The goal of each each member of SSW is eventually expected to become an internationally famous Web developer capable of managing an entire project from start to finish. 
				That doesn't mean that each person needs to acquire all the skills necessary for a site, but he or she has to understand what skills are necessary and where to get them within SSW. 
			</p>
			<p>
				&nbsp;
			</p>
			
			<li>		
			<a name="Bank"></a>
					
					<h2>Obligations to other members</h2>
			</li>
			<p>
				We live or die by customer satisfaction. It is safe to assume that the customers' priorities are (1) getting down services back up, and (2) getting new services developed on time. 
			</p>
		</ol>
	</asp:content>