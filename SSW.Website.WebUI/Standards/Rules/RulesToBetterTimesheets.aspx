<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules to Better timesheets" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323074696d65736865657473')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323074696d65736865657473');return true;"  
onmouseout="javascript:clearStatus(); return true;" > Let us know </a> what you think.</p>

    <div class="TableOfContents">
        <ol>
            <li><a href="#timesheet">Do you know what timesheets are?</a></li>
            <li><a href="#Policies">Do you follow policies for recording time?</a></li>
            <li><a href="#Diary">Do you keep your hard copy diary or timesheet with you?</a></li>
            <li><a href="#Fields">Do you have essential fields for your hard-copy diary or timesheet?</a></li>
            <li><a href="#DescribeWork">Do you know how to describe the work you have done (aka avoid using 'Bug')?</a></li>
            <li><a href="#Enter">Do you know when to enter your timesheets?</a></li>
            <li><a href="#timesheets">Do you enter detailed and accurate timesheets?</a></li>
            <li><a href="#OnTime">Do you reward your employees for doing their timesheets on time?</a></li>
            <li><a href="#BookedInWork">Do you know that when you're booked in, you're working?</a></li>
            <li><a href="#BookWorkInAdvance">Do you book a minimum of 1 day's work at a time?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li><h2><a name="timesheet"></a>Do you know what timesheets are?</h2>
                <p>timesheets are an accurate record of the hours and work you complete in a day. <strong>timesheets are the lifeblood of the company</strong> and are the ultimate source of everyone's income and are recorded into your hard copy diary. All your company staff members are to keep diaries.</p>
                <dl class="image">
                    <dt><img src="Images/Bucket-list.jpg" alt="Bucket list"/></dt>
                    <dd>Figure: timesheets come first, always!</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="Policies"></a>Do you follow policies for recording time?</h2>
                <ul>
                    <li>Be honest</li>
                    <li>Record your time whenever you are doing work for a client, even if it is to be written off.</li>
                    <li>Round start/end/break times to the nearest 10 minutes (avoid rounding up time as this gives the impression to the client we are &quot;penny pinching&quot;)</li>
                    <li>If you are working with another employee, ensure your times are consistent</li>
                    <li>If you are providing telephone support, count your time in 10 minute blocks</li>
                </ul>
            </li>
            
            <li>
                <h2><a name="Diary"></a>Do you keep your hard copy diary or timesheet with you?</h2>
                <dl class="image">
                    <dt><img src="Images/TimeSheet_1.jpg" alt="Keep your Diary or timesheet with you"/></dt>
                    <dd>Figure: Keep your hard copy Diary or timesheet with you.</dd>
                </dl>
                <ul>                
                    <li>Carry your diary with you at all times</li>
                    <li>Have your diary open next to you at ALL TIMES</li>
                    <li>Stamp your ENTIRE diary with the 'Development Completed to a Professional Standard' stamp at the beginning of every year. NOTE: If a dispute arises with a client, hiring an Expert to objectively determine whether work is of a good quality is a very expensive exercise. The stamp establishes that clients acknowledge the work is of a professional standard</li>
                    <li>Everything you write in your diary must be clear and legible. (Assume another person would be able to enter from it)<img src="Images/fp.gif" alt="" align="right" /> <img src="Images/e.gif" alt="" align="right" /></li>
                    <li>Once your timesheets are entered electronically write an 'e' with a circle around it to show that they have been 'entered'</li>
                    <li>If you are working on a fixed price project write 'FP' with a circle around it to show that is it fixed-price work</li>
                    <li>Mark the time that you do your daily scrum meeting with an 'S' (in a circle)</li>
                    <li>Every day you are to have your diary signed by your manager or the client you are working for. Do not leave the client site until someone has signed your diary</li>
                    <li>Your TimePRO! entry is to be an exact replica of your hard copy diary entry. If you change one record, change the other.</li>
                </ul>
            </li>
            
            <li>
                <h2><a name="Fields"></a>Do you have essential fields for your hard-copy diary or timesheet?</h2>
                <ol>
                    <li>Client ID - or Client Name</li>
                    <li>&quot;On-Site&quot; or &quot;Off-Site&quot;</li>
                    <li>Start time &amp; end time. </li>
                    <li>Billable time is highlighted</li>
                    <li>Project Name</li>
                    <li>Break - Minimum 0.5 hours for time &gt;5.5 hours, greater if you have a longer break</li>
                    <li>Who you were working with that day - both your company and Client people. We then know if we are missing any timesheets</li>
                    <li>Version #</li>
                </ol>
            </li>
            
            <li>
                <h2><a name="DescribeWork"></a>Do you know how to describe the work you have done (aka avoid using 'Bug')?</h2>
                <ul>
                    <li>Use standard terms to describe the work you have done e.g. 'Build', 'Investigated', 'Resolved', 'Enhanced', 'Created', 'Optimized', 'Experimented with', 'Improved' or 'Fix'. Don't use unprofessional language like 'sorted out' or 'worked out'</li>
                    <li>The term 'Investigated and changed' is to be preferred over 'Fixed bug'.<br />
                        'Bug' gives the impression that the problem was solely the developer's fault, when generally most fixes are to do with changes as a result of unspecified work (extra validation, extra testing or gold plating).<br />
                        <dl class="bad">
                            <dt class="greyBox">'Bug on customer form'</dt>
                            <dd>Figure: Bad example</dd>
                        </dl>
                        <dl class="good">
                            <dt class="greyBox">'Investigated and improved the  validation on customer form to enable saving when Customer Name is > 100 characters' </dt>
                            <dd>Figure: Good example</dd>
                        </dl>
                        Note: Of course if the problem was the developers fault, use 'bug' when appropriate. 
                    </li>
                    <li>Be specific about what you did e.g. if you create a new form, write 'Created frmClient', if you are adding a button to a form write 'Added btnAddNew to frmClient', if you are trying to find a bug write 'Investigated error on frmClientDiary'. If you fix something, write 'Resolved', if you are making something faster write 'Optimized procClientDiary'. If you are writing stored procs write down their names</li>
                    <li>Follow the normal rules of English, use normal sentence structure not note style</li>
                    <li>Use capital letters appropriately - if it is a Proper Noun use a capital - e.g. Adam Cogan, SQL Server, Toyota is ok, Website is not</li>
                    <li>Don't start a new line for every detail (it takes up too much room on the invoice)</li>
                    <li>Use past tense e.g. 'Updated web page' rather than 'update web page'</li>
                    <li>Avoid abbreviations. Use 'version' rather than 'ver'</li>
                    <li>Don't skip small words like 'and'</li>
                </ul>
                <p><strong>Note:</strong> If you have any working papers (e.g. written notes from a client requesting work), once the work is completed write 'DONE' on the paper and give it to your project manager for filing.</p>
                <dl class="greyBox">
                    <dt>'Apply changes as per Tony's request for FRDCAPP'</dt>
                </dl>
                <dl class="bad">
                    <dd>Figure: This is an example of a bad timesheet note</dd>
                </dl>
                <dl class="greyBox">
                    <dt>'CaterPRO! Version 8.3; Fixed Sales Reports (rptSales) (reconciles correctly with Food Sales Summary; Fixed Function Counts (was doublecounting); Fix to DiaryTemplate Updates; Fix to copy of Contacts (frmMoveClientPopup) - primary; Attempt to run CaterPRO! In XP with Alan.' </dt>
                </dl>
                <dl class="good">
                    <dd>Figure: This is an example of a good timesheet note</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="Enter"></a>Do you know when to enter your timesheets?</h2>
                <ul>
                    <li>At the end of each day, you need to get your timesheets signed by your client or manager at 6pm.</li>
                    <li>You must enter your timesheets into your hard copy diary every day.</li>
                    <li>Before close of business every Friday:
                        <ol>
                            <li>If you are in the office enter them into your timesheeting system</li>
                            <li>If you are working on-site and you have VPN access or web services, enter your times directly into your timesheeting system</li>
                            <li>If you don't have VPN access and web services are not working, email your timesheets to your manager</li>
                        </ol>
                    </li>
				    <li>As a deadline, you should enter timesheets at 5pm on Friday, any changes to that on Friday, Saturday or Sunday, must happen by Sunday night.</li>
                </ul>
            </li>
            
            <li>
                <h2><a name="timesheets"></a>Do you enter detailed and accurate timesheets?</h2>
                <p>It is essential that a company keeps a record of how much time its employees are spending on billable and non-billable work. This helps at invoicing time, and to make sure the clients see exactly where their time and money is being spent. One of the primary responsibilities as a developer is to complete timesheets.</p>
                <p>timesheets should be completed at the end the week before you go home on Friday afternoon. That way the project manager is able to send out the invoices on Monday for the previous week's work. It is the project manager's responsibility to ensure that the developers have their timesheets entered at the end of each week.</p>
                <p>As full-time employees, you should <i>always</i> enter Monday to Friday (your standard hours), as well as any weekend work. At SSW we use <a href="/ssw/TimePRONet">SSW TimePRO! .NET</a> with the following categories, but irrespective of the system you use, all days should be filled in.</p>
                <ul>
                    <li>For annual leave, select "Leave" as the project type and "Leave - Annual"</li>
                    <li>For public holidays, select "Leave" as the project type and "Leave - Non Working Day (Public Holiday)"</li>
                    <li>For sick leave, select "Leave" as the project type and "Leave - Sick" </li>
                    <li>For time in lieu, select "Leave" as the project type and "Leave - Time off in lieu"</li>
                </ul>
                <p>
                    It is crucial that you are very specific with your timesheets. If you stop doing
                    client work to help someone else (or something unrelated to the client), make sure
                    you write the time you stopped client work on your timesheet. When you resume client
                    work, circle that time, enter the client ID next to the time, and continue working.</p>
                <p>
                    For customers from other States, travel time is usually billable and should be recorded
                    separately on the timesheets so that the customer is fully aware of the exact time spent travelling to/from the client site. Travel time within Sydney is not billable to the client and of course you don't ever need to enter timesheets for travel from home to work or from work to home.</p>
                <p>Do not group non-client work and client work in the same time slot. If you worked
                    on AB COs web site from 9 to 12, then helped someone out with something else for
                    an hour, do not enter 9am-1pm under AB CO:</p>
                <dl class="badImage">
                    <dt><img src="Images/TimeSheets_bad.gif" alt="bad timesheet" /></dt>
                    <dd>Figure: Don't group non-client work with client work we don't want the client being charged for time that was not spent on them</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/TimeSheets_good.gif" alt="good timesheet" /></dt>
                    <dd>Figure: Separate client work from other work, so that clients only pay for work you actually did for them</dd>
                </dl>
                <p>That being said, if you do any work that is related to a client that you would not usually bill for (such as going to an initial meeting or travel within Sydney ), you should still enter it under that client - when it comes to invoicing time, this rate will be set to zero, but still show on the invoice, so the client has a record of all the time that was spent on their project.</p>
                <p>If using SSW TimePRO .NET, the time you spend on creating estimates should be entered under the <b>Specifications - At SSW</b> timesheet category, which makes it clear that there is work and time involved.</p>
                <p>Time sheet entry itself should always be billed to the client unless you spent the whole day working solely for SSW.</p>
                <p>The ideal technique for entering the maximum information with the minimum of double entry is, during the day:</p>
                    <ul>
                        <li>Check in your code</li>
                        <li>Type comments</li>
                        <li>Copy | Paste into OneNote</li>
                    </ul>
                <p>At the end of the day:</p>
                    <ul>
                        <li>Enter timesheets</li>
                        <li>Copy | Paste from OneNote into the notes field</li>
                    </ul>
                <dl class="image">
                    <dt><img src="Images/TimeSheets-from-check-in-notes.jpg" alt="timesheet check in notes" /></dt>
                    <dd>Figure: Detailed timesheets from check in notes.</dd>
                </dl>
            
            </li>
            
            <li>
                <h2><a name="OnTime"></a>Do you reward your employees for doing their timesheets on time?</h2>
                <p>On Fridays, you are to enter your timesheets as <strong>the 1st thing after lunch</strong>. In most cases you should know what you are doing for the rest of the day. Before leaving, if you did anything different, then fix up that last timesheet.</p>
                <p>An email will be sent around to remind everyone to do their timesheets, run <a href="/ssw/Diagnostics/">SSW Diagnostics</a> (to make sure their software is up to date) and clean up any papers on their desks (before the cleaners come on the weekend).</p>
                <p>The deadline for submitting timesheets is <strong>Friday 5pm</strong>. If all timesheets are received on time, everyone is rewarded with a free lunch. However, if someone fails to enter their timesheets, they will be put on the "SHAME LIST" and all team members will miss out on the free lunch.</p>
                <p>It is your responsibility to get your timesheets in on time.</p>
                <p>Of course it has to be said, the Free Lunch doesn't accumulate. It's an 'on the day' reward, so take it or leave it... If you're not in the office you've got 30 days to get the $8.00 Tax Invoice back to accounts for reimbursement.</p>
            </li>
            
            <li>
                <h2><a name="BookedInWork"></a>Do you know that when you're booked in, you're working?</h2>
                <p>When an Account Manager and a client have made an agreement that you will work on a particular project for a day, you need to work on it all day (at least 8 hours), and that should be reflected in your timesheets.</p>
                <p>If you are booked in on the Service Calendar in CRM, you will be billing that full day to the respective client.</p>
                <dl class="bad">
                    <dt class="greyBox">
                        <ul>
                            <li>Developer X comes in in the morning</li>
                            <li>Checks inbox, replies to a few emails, gets a coffee</li>
                            <li>Looks at the calendar to see what he&#8217;s supposed to work on that day</li>
                            <li>Spends some time getting up to speed on the tasks involved</li>
                            <li>Then starts billing once he has started work on a specific task for a client</li>
                        </ul>
                    </dt>
                    <dd>Bad Example: Scenario where developer bills a partial day</dd>
                </dl>
                <dl class="good">
                    <dt class="greyBox">
                        <ul>
                            <li>Developer checks his calendar or the CRM Service Calendar the day or week before and knows what client he&#8217;s going to work on before he comes in</li>
                            <li>Arrives, starts billing as he opens his computer and sets up his development environment</li>
                            <li>Works and bills all day regardless of distractions and other people</li>
                            <li>Does not stop to wait on someone else because of a dependency, but continues to find ways to deliver value</li>
                            <li>The full 8 hours is billed to the client</li>
                        </ul>
                    </dt>
                    <dd>Good Example: The developer knows ahead of time what he&#8217;s working on and bills the full day</dd>
                </dl>
                
                <p>The bad example scenario is no longer acceptable as the full day will be billed to the client, so it's up to you to make sure you are as productive as possible</p>
                <p>The major benefit of this is that the Service Calendar will be an accurate representation of what will be worked, and when a client thinks they have a resource booked for a day, they do in fact get the full day.</p>
                <p>There will of course be exceptions, such as emergencies or urgent work coming up, but 90% of the time, full days should be billed to 1 client.</p>
                <dl class="image">
                    <dt><img src="Images/CRM-timesheets.jpg" alt="CRM showing timesheets" /></dt>
                    <dd>Figure: Your timesheets for next week should end up looking a lot like your original bookings (in our case this is shown in the CRM service calendar)</dd>
                </dl>
            </li>
            <li>
               <h2><a name="BookWorkInAdvance"></a>Do you book a minimum of 1 day's work at a time?</h2>
               <p>When booking in client work always make sure you ask the client to gather enough work for 8 hours of work. The minimum amount of time per booking is 8 hours. See Rules to Better Sales Account Management - <a href="/ssw/Standards/Rules/RulestoSuccessfulSalesAccountManagement.aspx#BookInAdvance">Do you book in a minimum of 1 day's work at a time?</a> </p>
            </li>
        </ol>
    </div>
    <h2>Acknowledgments</h2>
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
