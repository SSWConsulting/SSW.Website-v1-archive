<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Accounting" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />		
				
		<div class="Intro">
		<p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304163636F756E74696E67')">Let us know</a> 
		what you think.</p>                                                                            
		</div>
		
		<div class="TableOfContents">
			<h3>Rules to Better Accounting</h3>
			<ol>
			<li><a href="#Expense">Do you know the procedures of claiming expense reimbursement?</a></li>
			<li><a href="#Taxis">Are all taxi costs covered by your company?</a></li>
			<li><a href="#ChequeAndMemo">Do your cheque and memo field have good description?</a></li>
			<li><a href="#GeneralLedger">Do you print out your general ledger for the week and ask your boss to initial with "cheque number and memo descriptions good"?</a></li>
			<li><a href="#BetterEmail">Do you know when you should change a subject?</a></li>
			<li><a href="#PurchaseApprovals">Do you do know how to do purchase approvals?</a></li>
			</ol>
		</div>
        
        <div id="mainContent">
		<ol>
			<li>
				<h2><a name="Expense">
						</a>Do you know the procedures of claiming expense reimbursement?</h2>			
		    <p>
			The company will reimburse all reasonable expenses incurred in the carrying out of your duties, 
			which are above your normal costs or kms to and from work. 
			Common examples that you are likely to apply for include bus and train fares to client sites. 
			Amounts under $40 can be reimbursed through Petty Cash.
			</p>
			<p>
			Use <a href= "\ssw\StandardsInternal\Forms\ExpensesReimbursementKM.xlt">this document</a> if you want your reasonable km expenses for kms incurred. 
			</p>			
			<p>
			If greater than $40 then use the expense claim forms at <a href= "\ssw\StandardsInternal\Forms\ExpensesReimbursement.xls">this document.</a> 
			</p>
			<p>
			Please treat your company's money like your own and minimize company costs where possible. 
			Try to search around for a better price before committing to a purchase.
			</p>
			
			<ol>
			    <li>All expense claims must:</li><ol>
			       <li>Be work related</li>
				<li>Be made as soon as possible following incurrence and in any event no later than the last day of the week in which the expense occurred. 
			        They are not to be older than a week (unless you are on-site)</li>
				<li>Be signed by the claimant and authorized by the relevant Manager</li>
				<li>Be supported by Tax Invoices</li>
				<li>Not include alcohol, as it incurs FBT</li></ol>
			
			    <li>A director may request or present a list of expenses for reimbursements. 
			    By requesting approval from another director or manager, it may prevent some non-work related expenses from being claimed. 
			    This will also place responsibility on all directors/managers to act appropriately on claiming work related expenses.		
			    </li>
			</ol>
					
			</li>
           
            <li>
				<h2><a name="Taxis">Are all taxi costs covered by your company?</a></h2>			
		    <p>
		    Traveling around Sydney can take time and your time is best spent doing billable time in the office or at a client site. 
		    Taking a taxi is perfectly acceptable if it is going to save substantial time compared to taking public transport. 
		    This is applicable to travel between client sites or the office and a client site. 
		    Work <b>does not pay</b> for taxi travel from home to a client site, or home to the office. 
		    Remember to always obtain a Tax Invoice from the taxi driver so you can request for reimbursement later on.
		    </p>
		    </li>
		    
		    <li>
				<h2><a name="ChequeAndMemo">Do your cheque and memo field have good description?</a></h2>			
		    <p>
		    <img border="0" src="Images/AccountingchequeAndMemo.jpg" alt="Bad example of cheque and memo field" />
		    <br />
                        <b>Figure: Bad Example</b>
            </p>
            <p>            
            <img border="0" src="Images/AccountingchequeAndMemo2.jpg" alt="Good example of cheque and memo field" />
		    <br />
                        <b>Figure: Good Example</b>
		    </p>
		    </li>
		    
		    <li>
				<h2><a name="GeneralLedger">Do you print out your general ledger for the week and ask your boss to initial with "cheque number and memo descriptions good"?</a></h2>			
		    <p>
		          This is very important task for your first month in the job, otherwise you may find yourself going back and have to fix up all data. Do whatever you have to do e.g. drive to your boss' house to get this done! It can save your days off work.
                   </p><p><img border="0" src="Images/AccountingGeneralLedger.jpg" alt="General Ledger" />
		    <br />
		    </p>
		    </li>
            <li>
            	<h2><a name="BetterEmail">Do you know when you should change a subject?</a></h2>			
		    <p>
		    Refer to <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/WhenToChangeEmailSubject.aspx">Rules to better email -  Do you know when you should change a subject?</a><br /><br />
		    And be sure to check out all the other good tips on the <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/WhenToChangeEmailSubject.aspx">Rules to better email page</a><br />
		    </p>
            </li>
            <li>
              <h2><a name="PurchaseApprovals"></a>Do you do know how to do purchase approvals?</h2>
              <p>
                This is quintessential workflow and online forms. Basically you have purchase requests, then business rules, then approvals. <br />
                E.g. Less than $1K your direct manager can approve. 
              </p>
              <ul>
                Choices:
                <li><b>TFS 2010</b> (Too hard)<br />
                    You can have requests go in as a work items but there is no workflow service that runs on the server, so the workflow would have to be in a separate web service using WF4.</li>
                <li><b>SharePoint 2010</b> (recommended)<br />
                    SharePoint needs an out of the box solution. You can have requests go into SharePoint lists and then there is a workflow service that runs on the server, using WF3 under the covers.</li>
                 <li><b>CRM 4</b> <br />
                     CRM also needs an out of the box solution. You can have requests go into as CRM Entities and there is a workflow service that runs on the server, using WF3 under the covers.</li>
                 <li><b>JIRA</b><br />
                     Jira supports workflows and approvals (non .NET)</li>
              </ul>
            </li>
            
        </ol>
       
        </div>
            
            
		</asp:content>