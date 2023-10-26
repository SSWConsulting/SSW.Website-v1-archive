<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Rules to Better Project Management Methodology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div id="Intro">
        <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D53535725323052756C6573253230746F25323042657474657225323050726F6A6563742532304D616E616765722532304D6574686F646F6C6F6779')">
				Let us know</a> what you think.</p>
    </div>
    <div class="TableOfContents">
        <ol>
            <li><a href="#BuildingReleasePlan">Building the Release Plan</a></li>
        </ol>
    </div>
    <div id="mainContent">
    <ol>
    <li>
                <h2>
                    <a name="BuildingReleasePlan"></a>Building the Release Plan</h2>

                <b>Developer Breaks Stories into Tasks and Estimates</b><p>
                    To enable a customer to assign priorities you need to tell him how long each feature
                    will take. 
              
                <b>Project Plan (Maximum two weeks development) Established</b>
                <table class="clsSSWTable" width="50%" align="right" summary="Formatting Table">
                    <tr>
                        <td>
                            <b>Project Plan </b>
                            <p>
                                As you can see the 4 stories turned into 15 features, 4 have been killed from this
                                release
                            </p>
                            <p>
                                <b>Release 1 </b>
                            </p>
                            <i>Release 1a</i>
                            <ol>
                                <li>Data structure for Release 1 only (8 hrs) </li>
                                <li>Zero Feature Release - Setup.exe (16 hrs) </li>
                                <li>Menu system - htm with 2 URLs (1 hr) </li>
                                <li>Customer form - screen only (8 hrs) </li>
                                <li>Order form - screen only (8 hrs) </li>
                                <li>Review Mini-Release 1 with Customer (4 hrs) </li>
                            </ol>
                            <i>Release 1b</i>
                            <ol>
                                <li>Customer Search (16 hrs) </li>
                                <li>Customer Add/Edit/Delete (16 hrs) </li>
                                <li>CustomerOrderSubform read only (8 hrs) </li>
                                <li>Review Mini-Release 2 with Customer (4 hrs) </li>
                            </ol>
                            <i>Release 1c</i>
                            <ol>
                                <li>Orders + ProductsSubform Add/Edit/Delete (24 hrs) </li>
                                <li>Orders Calc (8 hrs) </li>
                                <li>Orders Search (16 hrs) </li>
                                <li>Review Mini-Release 3 with Customer (4 hrs)</li>
                            </ol>
                            <p>
                                TOTAL - 141 hours or 23.5 days (Note: Days are calculated as 6 hour days.)
                            </p>
                            <p>
                                <b>Release 2 </b>(The features cut from this release)
                            </p>
                            <ol>
                                <li>Product form - screen </li>
                                <li>Product Search </li>
                                <li>Product Add/Edit/Delete </li>
                                <li>Order Delivery - automatic order placement investigation for UPS, Fedex, DHL </li>
                                <li>Employee form - screen </li>
                                <li>Employee Search </li>
                                <li>Employee Add/Edit/Delete </li>
                                <li>Logon</li>
                            </ol>
                        </td>
                    </tr>
                </table>
                The project plan is used for quoting initially - later it will be used for the customer
                to see at what stage we are at. The developer should work down the list of &quot;features&quot;
                in priority order. However he can make changes to the order in a mini-release (in
                this example he could do 5 before 4) He should let the people involved know the
                logic of why he need to do it in a different order via an email. One reason he may
                want to change the order, is so that the more difficult parts are done first - this
                lowers risk.
                <p>
                    Also when creating a project plan the number of releases should be agreed upon.
                    Some clients like to be actively involved in the project and don't mind being sent
                    part working copies on a daily basis till project completion, so they can test each
                    module as it is being built. Whereas other clients tend to prefer not to receive
                    anything till it is completed and then conduct there own testing on the whole project.
                </p>
                <p>
                    It is important for you and the client to decide upon which method they prefer so
                    a client not wanting a incomplete release daily/weekly will not get one daily/weekly.
                </p>
                <p>
                    <b>Scenario</b></p>
                <p>
                    <i>RM:</i> Would you like to receive the software in pieces module by module
                    so you can test each module individually<br />
                    <i>Client:</i> No I would prefer to be given a completed and working release where
                    I can test the whole things at once<br />
                    <i>RM:</i> That would be no problem I will make that clear on the project plan.<br />
                    <br />
                    Educating and informing the customer is the key to customer relations.
                </p>
                <p>
                    See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SpecinBiteSizePieces.aspx">Rule to Successful
                        Projects</a> regarding Specifications in Bite-size pieces.
                </p>
                <b>Quoting with a Project Plan</b><p>
                    We work on either fixed or variable price contracts. However, even in fixed price
                    contracts there are always variable elements such as meetings on site.
                </p>
                <p>
                    The quote is produced by adding all the elements from a project plan. You cannot
                    quote without a project plan. In the example above you will quote for 141 hours
                    as per Release 1:
                </p>
                <ul>
                    <li>$90 (depending on the resource) per hour for 141 hours = $12,690</li>
                </ul>
                <p>
                    We add a 20% margin to the variable cost when we give a fixed price. This is to
                    cover for contingencies.
                </p>
                <ul>
                    <li>Fixed Price = $12,690 + 20% ($2,538) = $15,210%.</li>
                </ul>
                <p>
                    During Release 1 Development, the Customer can get 11 versions, a build is shipped
                    after every task is completed - these are called &quot;Task Builds.&quot; It is
                    recommended the Client review these versions, but they don't have to. The Customers
                    must review the mini-releases.
                </p>
                <p>
                    When working on a Fixed-Price a Customer can cancel the order at any time. However,
                    if part way through a mini-release (5-6 days) the customer must pay for that mini-release
                    + a penalty of 20% ($2,538). Just like a restaurant if the cook has started to prepare
                    a dish, then you pay.
                </p>
                <a name="QuotingWithoutProjectPlan"></a><b>Quoting without a Project Plan</b>
                <table class="clsSSWTable" align="right" width="40%" summary="Formatting Table">
                    <tbody>
                        <tr>
                            <td>
                                SUBJECT: CLIENTID Development<br />
                                Dear Sam,<br />
                                As per conversation we will spend approx 1 day with 2 developers on screens and
                                working out the scope of the required work - you will get all the screens and we
                                will continue to make modifications until you are fine with the look and feel.<br />
                                Regards,<br />
                            </td>
                        </tr>
                    </tbody>
                </table>
                When a client requests work that would be outside a project plan or existing specification,
                it is important to let the client know that you will be doing hourly-rate work for
                the specs. The Project Manager is to:
                <ul>
                    <li>Speak to the developer</li>
                    <li>See how many new screens are required </li>
                    <li>Draft email (don't send)</li>
                    <li>Call up client</li>
                    <li>Send email to client (cc developer)</li>
                </ul>
                <p>
                    Important Note: If the client is not happy to go variable then you need to say to
                    the client: &quot;I understand you want a fixed price and not an estimate. Fixed
                    prices are for work that both sides are confident in the scope of work. It doesn't
                    work for work like this that we don't have specifications that wont change. A fixed
                    price means you can't have variations. Bottom line in this case you AND SSW will
                    not be happy delivering software that is not AS GOOD AS IT CAN BE.&quot;
                </p>
                <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/Research.aspx">Add the 
                specifications to the web</a>
                
                <b>Maintenance - Updating the Project Plan</b><p>
                    Keep the project plan up-to-date daily so your customers can see what you are up
                    to. Make sure you meet with the customer after every Mini-Release. When updating
                    it we need to consider the developers productivity. Remember developer productivity
                    will be the same as yesterdays (just like the weather). See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/EnforceDeadlinesHaveAProjectReleasePlanADebriefAMark10AndAStatusMeeting.aspx">
                        Rules to Successful Projects</a>
                </p>
                <p>
                    Q: If a project duration is 3 months and after one month the project is one week
                    later. How late will the project be?<br />
                    A: Not 1 week...
                </p>
                <b>When Releasing a Version - release to one Client PC at a time</b>
                <p>
                    There's no purpose in releasing a new version to multiple users, no matter how small
                    your client is. Only one person should find bugs. Some clients have dedicated Testers
                    as part of their IT department, and some don't. In the absence of dedicated testers
                    it's important that the new version is released to one Client Machine. Never release
                    a version that only developer's have tested. It's important that the client knows
                    what are the parts of the new version that need testing.
                </p>
                <b>Onsite Customer</b>
                <table class="clsSSWTable" align="right" width="40%" summary="Formatting Table">
                    <tr>
                        <td>
                            SUBJECT: Onsite Contact<br />
                            Dear Gary,<br />
                            Our project has progressed to a point where we need your input. I have made 2 unsuccessful
                            attempts to contact you in 4 hours. We are working to a schedule, and as per our
                            agreement we need a representative available at all times during our development
                            process. We attempt to make the best decision in the circumstances, however if an
                            incorrect decision is made then the time to change it again is chargeable. I have
                            decided to make the primary contact read only.<br />
                            Regards,
                        </td>
                    </tr>
                </table>
                It is important that we have a customer contact available all the time. If customer
                contact is not handy it can cause significant delay to the project duration. We
                prefer to have customer working at our premises. If that is not possible, then the
                customer must be available by phone or email. The client has a 4 hour condition
                to get back to you. <b>Debrief</b><p>
                    At the end of each Release it is important to have a debrief where you evaluate
                    things like:
                </p>
                <ul>
                    <li>Is everything taking twice as long? 1/2 as long?</li>
                    <li>Is the customer involved?</li>
                    <li>Is the customer being responsive to your inquiries?</li>
                    <li>Is the customer testing your mini-releases?</li>
                    <li>Are you having fun?</li>
                </ul>
                <p>
                    Use the answers for more actual estimates/quotes for the next release.
                </p>
                <b>Collect Stats</b>
                <p>
                    The Project Manager is to collect data like number of tests written in a week, tasks
                    completed, bug reports etc. Don't collect too much data, it will never be referred
                    to. Don't measure work, like &quot;lines of code&quot;, measure productivity, like
                    &quot;releases&quot;.
                </p>
                <b>Coach</b>
                <p>
                    A coach's job is to encourage developers, not to be a system architect that makes
                    all the decisions but works with them to help them make decisions. A person also
                    needs to manage the personnel and would need to if a developer can not work well
                    in the team and remove the developer from the project.
                </p>
            </li>
        </ol>
    </div>
</asp:Content>
