<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Unit Tests" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    
    <p>Do you agree with them all? Are we missing some? Email me your tips, thoughts or arguments. <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Let me know</a> what you think.</p>
    <p><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /> Indicates important rule</p>
    
    <div class="TableOfContents">
        <ol>
            <li><a href="#WhyUnitTests">Do you know why tests are important?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#TypesOfTests">What are the different types of test you can have? </a></li>
            <li><a href="#StructureUnitTest">How do you structure a unit test (aka the 3 a's)? </a></li>
            <li><a href="#ImportantDocs">Do you know the few important documents to read to get you started on Unit Testing?</a></li>
            <li><a href="#HowMany">Do you know what unit tests to write and how many?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#ReplyDone">Do you reply "DONE + Added a unit test so it can't happen again"?</a></li>
            <li><a href="#NamingConventions">Do you follow the standard naming conventions for Tests?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#Naming">Do you know when you are adding a unit test for an edge case - the naming convention should just be the issue ID?</a></li>
            <li><a href="#OutsideProject">Do you have unit tests outside the project - not inside?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#Dependencies">Do you write Integration Test for Dependencies - e.g. DLLs?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#DependenciesDB">Do you *not* write integration tests for Database Dependencies - e.g. Database Schema, Datasets?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#DependenciesWebService">Do you write integration tests for Web Service Dependencies?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#ConfigDB">Do you write integration tests for your database configuration?</a></li>
            <li><a href="#ConfigRS">Do you write integration tests for your reporting service configuration?</a></li>
            <li><a href="#TestURLs">Do you write integration tests to validate your web links?</a></li>
            <li><a href="#TestJavaScript">Do you test your JavaScript?</a></li>
            <li><a href="#RegEx">Do you test Fragile Code - e.g. Regular Expressions?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#Arithmetic">Do you have tests for difficult to spot errors - e.g. Arithmetic, Rounding, Calculations?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#Performance">Do you have tests for Performance?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#RunUnitTests">Do you run Unit Tests in Visual Studio?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#TestSendMail">Do you have a integration test for your send mail code?</a></li>
            <li><a href="#HealthCheck">Do you have a /HealthCheck (was /zsValidate) page to test your website dependencies?</a></li>
            <li><a href="#ComplicatedFunctions">Do you know when functions are too complicated?</a></li>
            <li><a href="#IsolateLogic">Do you isolate your logic and remove dependencies on instances of objects?</a></li>
            <li><a href="#IsolateIO">Do you isolate your logic from your IO to increase the testability?</a></li>
            <li><a href="#UITesting">Do you make sure you integration tests include UI (aka form) testing?</a></li>
            <li><a href="#NotVSTS">Do you know the best unit test framework to use for your project? </a></li>
            <li><a href="#NUnitInVS">Do you know how to run nUnit tests from within Visual Studio?</a></li>
            <li><a href="#ConfigAndVersion">Do you use the right version and configuration for Nunit?</a></li>
            <li><a href="#VSTS">Did you know Visual Studio Team System does the same thing (but we don't recommend it)?</a></li>
            <li><a href="#MenuUnitTests">Do you have a standard 'Help' menu that includes a way to run your unit tests? </a></li>
            <li><a href="#UnitTestCanFail">Do you make sure that the test can be failed?</a></li>
            <li><a href="#ContinuousBuildServer">Do you have a Continuous Build Server?</a></li>
            <li><a href="#DatabaseUnitTest">Do you unit test your database?</a></li>
            <li><a href="#CodeUITests">When you record VS 2010 coded UI tests, make them less brittle</a></li>
			<li><a href="#IntelliTesting">Do you use IntelliTesting to save you in testing?</a></li>
            <li><a href="#CodeCoverage">Do you use Live Unit Testing to see code coverage?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="WhyUnitTests"></a>Do you know why tests are important? <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>Customers get cranky when developers make a change, and this causes a bug to pop up somewhere else. They may also complain that they shouldn't have to pay for this new bug to be fixed. Although this is understandable, fixing bugs is a large part of the project and is always billable, although if these bugs can be caught early, they are quicker and cheaper to fix.</p>
                    <p>When writing code, one of the most time consuming and frustrating parts of the process is finding that something you have changed has broken something you're not looking at. These bugs often don't get found for a long time as they are not the focus of the "test please" and only get found later by users.</p>
                    <p>The best way to avoid this issue is to use Tests. These double check your core logic is still working every time you compile, and will minimise the number of bugs that get through your internal testing and end up being found by the client.</p>
                    <p>This is a "Pay now -pay much less later" approach.</p>
                    <p>More reasons for writing tests can be found on <a href="http://blog.gfader.com/2010/10/why-are-automated-tests-so-important.html">Peter's blog</a>.</p>
            </li>

            <li>
                <h2><a name="TypesOfTests"></a>What are the different types of test you can have?</h2>
                    <ul>Smoke test
                        <li>You fire up your application and click around prior to giving it to a tester. Most developers do this.</li>
                    </ul>
                    <ul>Unit Tests 
                        <li>They are coded by a developer</li>
                        <li>Quick</li>
                        <li>Independent</li>
                        <li>Test just 1 method in a class </li>
                        <li>Tip: Use mock objects to make it faster and not to be bothered by external dependencies eg. the web service going down. The popular ones are: MOQ, TypeMock, NMock, RhinoMocks, nSubstitute</li>               
                    </ul>
                    <ul>Integrations Tests
                        <li>They are coded by a developer</li>
                        <li>Slower</li>
                        <li>Test the interaction of components eg. Databases, Web Services </li>                 
                    </ul>
                    <ul>Functional Tests
                        <li>Recorded by a tester</li>
                        <li>Verifies the functionality of a system, typically from an end user perspective</li>
                        <li>Tip: Use VS Webtest if you have got no AJAX in your page</li>
                        <li>Tip: Use Coded UI Test or Telerik Tests to test the interactivity</li>                 
                    </ul>
                    <ul>Load Tests
                        <li>Setup by developers</li>
                        <li>Reuse the web tests</li>
                        <li>Simulate expected load on your application</li>
                        <li>Tip: Use VS Load tests or 3rd party such as <a href="Tip: Use VS Load tests or 3rd party such as loadstorm">loadstorm</a></li>
                        <li>Use the performance stats as a baseline for regression. You don't want to decrease performance in your application.</li>   
                    </ul>
                    <ul>Stress Tests
                        <li>Setup by developers</li>
                        <li>Reuse web tests</li>
                        <li>Hit your application very hard, and try to see where your limits are (CPU, Network, Memory, ?</li>               
                    </ul>
            </li>

            <li>
                <h2><a name="StructureUnitTest"></a>How do you structure a unit test (aka the 3 a's)? </h2>
                    <p>A test verifies expectations. Traditionally it has the form of 3 major steps: 1. Arrange, 2. Act, 3. Assert. <br />
                    In the "Arrange" step we get everything ready and make sure we have all things handy for the "Act" step. <br />
                    The "Act" step executes the relevant code piece that we want to test. <br />
                    The "Assert" step verifies our expectation by stating what we were expecting from the system under test.<br />
                    Developers call this the "AAA" syntax.</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
[TestMethod]
public void TestRegisterPost_ValidUser_ReturnsRedirect()
{
&nbsp;&nbsp;&nbsp;// Arrange
&nbsp;&nbsp;&nbsp;AccountController controller = GetAccountController();
&nbsp;&nbsp;&nbsp;RegisterModel model = new RegisterModel()
&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserName = "someUser",
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email = "goodEmail",
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password = "goodPassword",
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ConfirmPassword = "goodPassword"
&nbsp;&nbsp;&nbsp;};

&nbsp;&nbsp;&nbsp;// Act
&nbsp;&nbsp;&nbsp;ActionResult result = controller.Register(model);

&nbsp;&nbsp;&nbsp;// Assert
&nbsp;&nbsp;&nbsp;RedirectToRouteResult redirectResult = (RedirectToRouteResult)result;
&nbsp;&nbsp;&nbsp;Assert.AreEqual("Home", redirectResult.RouteValues["controller"]);
&nbsp;&nbsp;&nbsp;Assert.AreEqual("Index", redirectResult.RouteValues["action"]);

}
                            </pre>
                        </dt>
                        <dd>Figure: A good structure for a unit test</dd>
                    </dl>
            </li>
            
            <li>
                <h2><a name="ImportantDocs"></a>Do you know the few important documents to read to get you started on Unit Testing?</h2>
                    <p>Do you know the basic readings to get an understanding of quality development</p>
                    <ul>
                        <li>Read the <a href="/SSW/Redirect/WikipediaUnitTest.htm">Wikipedia Unit test</a> (write unit tests on fragile code)</li>
                        <li>Read the <a href="/SSW/Redirect/WikipediaRevisionControl.htm">Wikipedia Revision Control</a> (use source control for your code - understand "Check-out" and "Check-in")</li>
                        <li>Read the <a href="/SSW/Redirect/WikipediaTest-drivenDevelopment.htm">Wikipedia Test-driven development</a>(optional)</li>
                        <li>Read the <a href="/ssw/Standards/Rules/RulesToBetterVersionControlWithTFS(AKASourceControl).aspx#TestDrivenProcess"> SSW Rule - Do you follow a Test Driven Process</a> (don't just check in)</li>
                        <li>Read the <a href="https://rules.ssw.com.au/conduct-a-test-please-internally-and-then-with-the-client">SSW Rule - Test Please</a> (don't release un-tested code to a client)</li>
                    </ul>
            </li>
            
            <li>
                <h2><a name="HowMany"></a>Do you know what unit tests to write and how many?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>People aim for 100% Unit Test Coverage but in the real world this is 100% impractical. Actually it seems that the most popular metric in TDD (Test Driven Development) is to aim for 100% of methods to be unit tested. However in the real world this goal is rarely, if ever, achieved. Unit tests are created to validate and assert that public and protected methods of a class meet an expected outcome based on varying input. This includes both good and bad data being tested, to ensure the method behaves as expected and returns the correct result or traps any errors.</p>
                    <p>Generally, private methods should not have unit tests written for them as they are not exposed to other objects outside the original class. These private methods are likely to be refactored (eg. changed, renamed) over time and will require the unit tests to be updated and this becomes a maintenance nightmare. So how do private methods get tested? Private methods should be tested by the unit tests on the public and protected methods calling them and this will indirectly test the private method behaves as intended.</p>
                    <p>E.g. You would test correct input such as 12/3 = 4 plus bad input such as 12/4 <> 4 and that 12/0 does not crash the application, and instead a DivideByZero Exception is thrown and handled gracefully.<br />
                        E.g. Methods returning a Boolean value need to have both true and false test cases.</p>
                    <p>Unit tests should be written for:</p>
                    <ul>
                        <li>Fragile Code - e.g. Regular Expressions - <a href="#RegEx">see below</a></li>
                        <li>When errors can be difficult to spot - e.g. Rounding, arithmetic, calculations - <a href="#Arithmetic">see below</a></li>
                    </ul>
                    <p>Unit tests should not be written for:</p>
                    <ul>
                        <li>Dependencies - e.g. DLLs Run time errors (JIT) - <a href="#Dependencies">see below</a></li>
                        <li>Dependencies - e.g. Database Schema, Datasets, Web Services - <a href="#DependenciesDB"> see below</a></li>
                        <li>Performance - e.g. Slow forms, Time critical applications - <a href="#Performance"> see below</a></li>
                        <li>When code has been generated from Code Generators eg. SQL database functions (Customer.Select, Customer.Update, Customer. Insert, Customer. Delete) </li>
                        <li>When unit tests become bigger than the original function eg. When you know to insert items into a database in the SetUp to test a function that uses the database</li>
                        <li>For Private methods because these will be tested by the public functions calling them, and they are likely to be change or refactored.</li>
                    </ul>
            </li>

            <li>
                <h2><a name="ReplyDone"></a>Do you reply "DONE + Added a unit test so it can't happen again"?</h2>
                    <p>When you encounter a bug in your application you should never let the same bug happen again. The best way to do this is to write a unit test for the bug.<br />
                        See our <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/DoneReplyAndDeleteEmail.aspx">Rules to Better Email</a> to implement a good 'DONE' email.</p>
            </li>

            <li>
                <h2><a name="NamingConventions">Do you follow the standard naming conventions for Tests?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></a></h2>
                    <div class="greyBox">
                        <p>Hi Adam<br /><br />

                As well as keeping your code tidy, using this naming convention also allows you to use TestDriven.Net's 'Go To Test/Code' command.<br />
                This navigates between your tests and code under test (and back). This is something that test driven developers end up doing a lot.<br />
                Screen captures at http://weblogs.asp.net/nunitaddin/archive/2010/06/09/testdriven-net-3-0-all-systems-go.aspx <br /><br />

                Jamie Cansdale<br />
                --<br />
                http://www.testdriven.net <br />
                http://twitter.com/jcansdale <br />
                 </p>            
                </div>

                <table class="clsSSWTable" cellpadding="2" summary="Formatting Table" width="100%" style="border-color: #FFF">
                    <tr>
                        <th>
                            <b>Test Object</b>
                        </th>
                        <th>
                            <b>Recommended Style</b>
                        </th>
                        <th>
                            <b>Example</b>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Project Name
                        </td>
                        <td>
                            Tests.[Testtypes].Projectname
                        </td>
                        <td>
                            Tests.Unit.Common,Tests.Unit.WebFrontend,Test.Integration.MainWCFService<br />
                            Tests.Functional.SilverlightUI, Tests.Functional.WebUI *
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Test Fixture Name
                        </td>
                        <td>
                            [Type]Tests
                        </td>
                        <td>
                            OrdersTests, CustomerTests, DeveloperTests
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Test Case
                        </td>
                        <td>
                            [Function]Test
                        </td>
                        <td>
                            NullableIntTryParse_NumberIsValid1_Return1, StringHelperEncodeTo64_EncodeAndUnencodeString_ReturnSameString
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!--SSW Code Auditor - Ignore next	line(HTML)-->
                            Set Up
                        </td>
                        <td>
                            <!--SSW Code Auditor - Ignore next	line(HTML)-->
                            SetUp
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tear Down
                        </td>
                        <td>
                            TearDown
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                
                <p>*Test types are categorized into "Unit" "Integration" or "Functional" tests, as explained in "<a href="#TypesOfTests">2. What are the different types of test you can have?</a>" </p>
                    <p>The main reason why we are categorizing tests is, so that we can run different test suites. Eg.</p>
                    <ul>
                        <li>Unit tests on Gated Checkin</li>
                        <li>Integration tests after each check in on the build server</li>
                        <li>All tests including the functional tests in the nightly build</li>                   
                    </ul>  
                <p>
                 <b>Samples for Naming of test projects</b> <br />
                 Test.Unit.WebUI: This test project, tests the WebUI project, and is independent of external resources. <br />
                 That means all tests must pass.<br /> 
                 Test.Integration.WebUI: This test project tests the WebUI and depends from other external resources (Eg. probably needs a database, webservices etc.). <br />
                 That means if any external resource are unavailable, the tests will fail. <br />
                 Tests.Functional.SilverlightUI: Tests the Silverlight UI from an end user perspective by clicking around in the application
                </p>
                <dl class="goodImage">
                    <dt><img border="0" src="Images/UnitTestsProject.jpg" alt="Unit test project" /></dt>
                    <dd>Figure: Good example - Naming for a Unit Test Project </dd>
                </dl>
                <p>
                    <b>Samples Naming of test methods</b>
                    <dl class="badCode">
                        <dt>
                            <pre>
                            [TestMethod]
                            public void Test_Client()
                            </pre>
                        </dt>
                        <dd>
                            Bad example: There is no way to guess what this test does; you have to read the source
                        </dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>
                            [TestMethod]
                            public void PubSubServiceConnectTest_AuctionOk_AuctionInfoReturned()
                            </pre>
                        </dt>
                        <dd>
                            Good Example: We are testing PubSubService.Connect under the scenario that the "Auction status is OK" with an expected behaviour that data is returned
                        </dd>
                    </dl>
                </p>
                
                <p>
                    <b>Sample Code for Integration Tests</b>:</p>
                <pre>
using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using NUnit.Framework;
using SSW.NetToolKit.BusinessService;
using SSW.NetToolKit.DataAccess;

namespace SSW.NETToolkit.IntegrationTests
&nbsp;&nbsp;{
&nbsp;&nbsp;[TestFixture]
&nbsp;&nbsp;Public class CustomerTests
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;BusinessRules business=new BusinessRules(); 

&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void OrderTotal_SimpleExampleInput()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decimal calculatedGrandTotal = business.CalculateOrderGrandTotal(10248);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int expected = 440;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(expected, calculatedGrandTotal, "Calculated grand total didn't match the expect
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void OderTotal_Discounts()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decimal calculatedGrandTotal = business.CalculateOrderGrandTotal(10260);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decimal expected = 1504.65m;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(expected, calculatedGrandTotal, "Calculated grand total didn't match the expecte
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void RoundingTest_RoundUp()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(149.03, business.ApplyRounding(149.0282m), "Incorrect rounding rules applied for
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void RoundingTest_RoundDown()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(149.02, business.ApplyRounding(149.0232m), "Incorrect rounding rules applied 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void RoundingTest_NoRoundingNeeded()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(149.02, business.ApplyRounding(149.02m), "Incorrect rounding rules applied for 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
                                 
&nbsp;&nbsp;&nbsp;&nbsp;[Test]
&nbsp;&nbsp;&nbsp;&nbsp;public void RoundingTest_BorderCondition()
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assert.AreEqual(149.02, business.ApplyRounding(149.025m), "Incorrect rounding rules applied for
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
                               
&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;}</pre>
                <br />
                <dl class="image">
                    <dt><img border="0" src="Images/TestGenerationSettings.gif" alt="Test Generation Settings" /></dt>
                    <dd>Figure: This rule is consistent with the Visual Studio default</dd>
                </dl>
                <p class="productBox">
                    We have a program called <a href="/SSW/NETToolkit/">SSW .Net Toolkit</a> that implements
                    this.</p>
                <p>
                    Tip: You can create a test project using the Unit Test Wizard: Test > Add New Test<br />
                </p>
                <dl class="image">
                    <dt><img border="0" src="Images/AddNewTest.gif" alt="Add New Test" /></dt>
                    <dd>Figure: Unit Test Wizard 1</dd>
                </dl>
                <dl class="image">
                    <dt><img border="0" src="Images/CreateUnitTests.gif" alt="Create Unit Tests"></dt>
                    <dd>Figure: Unit Test Wizard 2</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Naming"></a>Do you know when you are adding a unit test for an edge case - the naming convention should just be the issue ID?</h2>
                    <p>When you are adding a unit test for Email validation it is easy to come up with obvious names eg. "TestValidEmails()" and "TestInvalidEmails()".<br />
                    But when you have just read a bug report and there are 5 steps to reproduce it, people come up with all sorts of long wacky names to explain the 5 steps.</p>
                    <dl class="badCode">
                        <dt>
                            <pre>TestEnterTitleSaveGoBackResave</pre>
                        </dt>
                        <dd>
                            Figure: Bad example - The test name reads like repro steps.
                        </dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>TestProj11</pre>
                        </dt>
                        <dd>
                            Figure: Good example - The test is the issue name and you can understand by visiting
                            the issue in your bug database
                        </dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>
 ///
 Test case where a user can cause an application exception on the
 Seminars webpage
 
 1. User enters a title for the seminar
 2. Saves the item
 3. Presses the back button
 4. Chooses to resave the item
 
 See: https://server/jira/browse/PROJ-11
 ///

[Test]
public void TestProj11()
{
    
}</pre>
                        </dt>
                        <dd>
                            Figure: Good comments for the unit test
                        </dd>
                    </dl>
                
            </li>

            <li>
                <h2><a name="OutsideProject"></a>Do you have unit tests outside the project - not inside?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>Unit tests should be written outside the project because:</p>
                    <ul type="disc">
                        <li>Separation of duties - the guys writing the unit tests should not have knowledge
                            of the internals of the project - they should see it as a black box</li>
                        <li>Most developers don't want the unit tests deployed - even with conditional compilation
                            you leave references behind</li>
                        <li>The projects will be smaller without the unit tests</li>
                    </ul>
                    <dl class="badImage">
                        <dt><img src="images/outsideProject1.gif" alt="outside project" /></dt>
                        <dd>Figure: Bad Structure;</dd>
                    </dl>
                    <dl class="badImage">
                        <dt><img src="images/outsideProject2.gif" /></dt>
                        <dd>Figure: Bad Structure - each layer for UnitTests are related to each other, meaning it's not easy to maintain;</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="images/outsideProject3.gif" /></dt>
                        <dd>Figure: Good Structure - each layer for UnitTests are isolated from each other, meaning it's easier to maintain (adding new project and test, removing a project and its test cases);</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="Dependencies"></a>Do you write Integration Test for Dependencies - e.g. DLLs?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>Dependant code is code that relies on other factors like methods and classes inside a separate DLL. Because of the way the .NET works assemblies are loaded as required by the program (this is what we call the JIT compiler). Thus, when a DLL goes astray, you will only find out at run time when you run a form/function that uses that DLL. These run time errors can occur when you have not packaged DLLs in your release or if the versions are incompatible. Such errors cause the following exceptions:</p>
                    <ul>
                        <li>An unhandled exception (&quot;System.IO.FileNotFoundException&quot;) occurred in SSW.NETToolkit.exe.</li>
                        <li>System.IO.FileLoadException The located assembly's manifest definition with name 'SSW.SQLDeploy.Check' does not match the assembly reference.</li>
                    </ul>
                    <p>These errors can be fixed by writing a integration test to check all referenced assemblies in a project.</p>
                    <p><b>Sample Code:</b></p>
                <dl class="code">
                    <pre>
[Test]
public void ReferencedAssembliesTest()
{
    // Get the executing assembly
    Assembly asm = Assembly.GetExecutingAssembly();
    // Get the assemblies that are referenced
    AssemblyName[] refAsms = asm.GetReferencedAssemblies();
    // Loop through and try to load each assembly
    foreach( AssemblyName refAsmName in refAsms)
    {
        try
        {
            Assembly.Load(refAsmName);

     	}
        catch(FileNotFoundException)
        {
            // Missing assembly
            Assert.Fail(refAsmName.FullName + &quot; failed to load&quot;);
        }
    }
}</pre>
                    <dd>
                        Figure: This code is a unit test for checking that all referenced assemblies are
                        able to load.</dd>
                </dl>
                <p class="productBox">
                    We have a program called <a href="/SSW/NETToolkit/">SSW .Net Toolkit</a> that implements
                    this.</p>
            </li>

            <li>
                <h2><a name="DependenciesDB"></a>Do you *not* write integration tests for Database Dependencies - e.g. Database Schema, Datasets?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>If we did our Data Access layer manually we should be testing this. Instead we recommend using:</p>
                    <ol>
                        <li>LINQ (VS2008) or Code Generators (VS2005)</li>
                        <li><a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#CodeGenerators">Use a _regenerate.bat</a></li>
                        <li>Add a unit test to create the database and check that "reconcile" works<br />
                        <br />
                        <p class="productBox">
                            We have a program called <a href="/ssw/SQLDeploy/">SSW SQL Deploy</a> that implements
                            this.</p>
                        </li>
                    </ol>
                    <dl class="badImage">
                        <dt><img src="Images/BadDataSet.gif" width="600" height="315" /></dt>
                        <dd>Figure: The dataset and the database schema are not consistent (Bad)</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/GoodDataSet.gif" width="600" height="315" /></dt>
                        <dd>Figure: The dataset and the database schema are consistent (Good)</dd>
                    </dl>
                    <p>As long as you have a _regenerate.bat file your schema will not get out of sync.</p>
            </li>

            <li>
                <h2><a name="DependenciesWebService">Do you write integration tests for Web Service Dependencies?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></a></h2>
                    <p>With web services you should:</p>
                    <ol>
                        <li>Use a _regenerate.bat to regenerate the proxy classes (See our <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#CodeGenerators"> Rules To BetterWindows Forms</a> for more information.)</li>
                        <li>Compare old WSDL with new WSDL to pick up changes and email the diff file to developers</li>
                        <li>Minimum Tests - Call the web service to check it's alive</li>
                        <li>Performance Test - If it takes longer than 4 seconds to call a methods - it fails</li>
                    </ol>
            </li>

            <li>
                <h2>Do you write integration tests for your database configuration?<a name="ConfigDB"></a></h2>
                <p>We recommend you have test data for your database configuration and reconcile form rather than testing it by opening the UI and doing the configuration manually.</p>
                <dl class="image">
                    <dt><img border="0" src="Images/1 Get Confirmation.gif" width="766" height="522"></dt>
                    <dd>Figure 1: Get user's confirmation</dd>
                </dl>
                <dl class="image">
                    <dt><img border="0" height="336" src="Images/3 Create Test Database.gif" width="568" alt="" /></dt>
                    <dd>Figure 2: Create test database</dd>
                </dl>
                <dl class="image">
                    <dt><img border="0" height="336" src="Images/4 Do Reconciliation.gif" width="568" /></dt>
                    <dd>Figure 3: Reconcile</dd>
                </dl>
                <p><b>Sample Code</b>:</p>
                <pre>
<span style="color: gray">/// &lt;summary&gt;</span> 
<span style="color: gray">/// </span><span style="color: green">Create a temp database
    and do reconcile then drop it </span>
<span style="color: gray">///&lt;/summary&gt;</span>
<span style="color: gray">///&lt;param name="Config"&gt;</span><span style="color: green">DBConfig
    Config</span><span style="color: gray">&lt;/param&gt;</span>
<span style="color: gray">///&lt;returns&gt;</span><span style="color: green">string</span><span
    style="color: gray">&lt;/returns&gt;</span> 
<span style="color: blue">public static string</span> ConfigAndReconcileTester(DBConfig Config) 
        {  
            <span style="color: blue">try</span> {
                _deployForm = <span style="color: blue">new</span> DatabaseDeployForm(Config);
                _deployForm.IsATest = <span style="color: blue">true</span>;
                <span style="color: blue">if</span>(_deployForm.ShowDialog() != DialogResult.OK)
                {
                    <span style="color: blue">return</span> "Failed to create test database";
                }
                Config.IsReconcile = <span style="color: blue">true</span>;
                DialogResult reconciled = <span style="color: blue">new</span> 
                SqlDeployHelper(Config).BeginProcess();              

                <span style="color: blue">if</span>(reconciled == DialogResult.OK)
                {
                    <span style="color: blue">return</span> SUCCESS_INFO;
                }          
                <span style="color: blue">return</span> "Reconciliation failed";
            }
            <span style="color: blue">finally</span>
            {
                DropTestDB(Config);
            }
}
                </pre>
                <pre>
<span style="color: blue">Imports</span> System
<span style="color: blue">Imports</span> NUnit.Framework
<span style="color: blue">Imports</span> SSW.Framework.Data
<span style="color: blue">Imports</span> SSW.Framework.UnitTests
<span style="color: blue">Import</span> SSW.Framework.Data.SqlServer.WindowsUI
<span style="color: blue">Imports</span> SSW.SQLAuditor.WindowsUI

<span style="color: blue">Namespace</span> Functional
&lt;TestFixture()&gt; _
<span style="color: blue">Public Class</span> DataBaseConfigureTests
<span style="color: blue">Private Const</span> STR_SSWSQLAuditorNorthwindTest As String = <span
    style="color: maroon">"SSWSQLAuditorNorthwindTest"</span>

<span style="color: blue">Private</span> config <span style="color: blue">As</span> DBConfig = <span
    style="color: blue">New</span> DBConfig()

&lt;SetUp()&gt; _
<span style="color: blue">Public Sub</span> Setup()
<span style="color: green">'configurations for database deploy form</span>
    config.ConnectionBuilder.ConnectionString = <span style="color: blue">String</span>.Empty
    config.CreateScriptsPath = System.IO.Path.Combine(Application.StartupPath + "\..\..\", _
  "DatabaseSQLScripts")
    config.UpgradeScriptsPath = config.CreateScriptsPath  
    config.SampleScriptsPath = System.IO.Path.Combine(config.CreateScriptsPath, <span
        style="color: maroon">"Samples"</span>)
    config.NewDatabaseName = STR_SSWSQLAuditorNorthwindTest
    config.IsDatabaseNameEnforced = <span style="color: blue">True</span>
    config.ShouldCreateSamples = <span style="color: blue">True</span>
    config.IsNew = <span style="color: blue">True</span>
    config.IsSampleDatabaseNameEnforced = <span style="color: blue">True</span>
    config.SampleDatabaseName = STR_SSWSQLAuditorNorthwindTest  
    config.DatabaseNamePlaceholder = <span style="color: maroon">"[DatabaseName]" </span>
<span style="color: blue">End Sub</span>

&lt;Test()&gt; _
<span style="color: blue">Public Sub</span> ConfigureTest()
    <span style="color: blue">Dim</span> testResult <span style="color: blue">As String</span> = <span
        style="color: blue">String.Empty</span>

    'get user's confirmation to continue test  
    <span style="color: blue">If</span> MessageBox.Show(<span style="color: maroon">"This
        will create the sample database and reports and then delete them."</span> _
    + Environment.NewLine + " Do you want to continue?", "Continue", MessageBoxButtons.OKCancel, _
    MessageBoxIcon.Exclamation) = DialogResult.Cancel <span style="color: blue">Then</span>
	<span style="color: blue">Return End If</span>
  <span style="background-color: #ffff00">testResult = DatabaseConfigTester. ConfigAndReconcileTester(config)</span>
    <span style="background-color: #ffff00">Assert.AreEqual(testResult, DatabaseConfigTester.SUCCESS_INFO,
        testResult)</span>
<span style="color: blue">End Sub</span>

&lt;TearDown()&gt; _
<span style="color: blue">Public Sub</span> RestoreToDefault()
<span style="color: blue">End Sub End Class End Namespace</span>
</pre>
            </li>

            <li>
                <h2>Do you write integration tests for your reporting service configuration?<a name="ConfigRS"></a></h2>
                    <p>We also recommend you have test data for your reporting service configuration. However, before configuring the reporting service, you should specify a data source for the reports using your database deploy form.</p>
                    <dl class="image">
                        <dt><img border="0" src="Images/RS config test.gif" width="600" height="408"></dt>
                        <dd>Figure: Reporting service config test</dd>
                    </dl>
                    <p><b>Sample Code</b>:</p>
                <pre><span style="color: #0000FF;"></span><span style="color: #000000;"></span><span
                    style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">
                        &lt;summary&gt;</span><span style="color: #008000;"> </span><span style="color: #808080;">
                            ///</span><span style="color: #008000;"> Properties ApplicationName, ReportDirectoryName,
                                ReportDirectoryName, </span><span style="color: #808080;">///</span><span style="color: #008000;">
                                    ReportRdlFolderPathAlternative, ReportManagerUrl and ReportServerWebServiceUrl
</span><span style="color: #808080;">///</span><span style="color: #008000;"> in rsConfig
    should be configed before start testing. </span><span style="color: #808080;">///</span><span
        style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span
            style="color: #008000;"> </span><span style="color: #808080;">///</span><span style="color: #008000;">
            </span><span style="color: #808080;">&lt;param name=&quot;dbConfig&quot;&gt;&lt;/param&gt;</span><span
                style="color: #008000;"> </span><span style="color: #808080;">///</span><span style="color: #008000;">
                </span><span style="color: #808080;">&lt;param name=&quot;rsConfig&quot;&gt;&lt;/param&gt;</span><span
                    style="color: #808080;"> </span><span style="color: #000000;"></span><span style="color: #0000FF;">
                        public</span><span style="color: #000000;"> </span><span style="color: #0000FF;">static</span><span
                            style="color: #000000;"> </span><span style="color: #0000FF;">void</span><span style="color: #000000;">
                                StartTest(DBConfig dbConfig,RSConfig rsConfig) { (</span><span style="color: #0000FF;">new</span><span
                                    style="color: #000000;"> DatabaseDeployForm(dbConfig)).ShowDialog(); <span style="color: #008000;">
                                        //get a data source from database deploy form </span>rsConfig.DataSourceConnectionString
                                </span><span style="color: #000000;">=</span><span style="color: #000000;"> dbConfig.ConnectionBuilder.ConnectionString;
                                    rsConfig.DataSourceName </span><span style="color: #000000;">=</span><span style="color: #000000;">
                                        dbConfig.ConnectionBuilder.DatabaseName; <span style="color: #008000;">//pop up a reporting
                                            service config form </span>PublishReportsForm prForm </span>
<span style="color: #000000;">=</span><span style="color: #000000;"> </span><span
    style="color: #0000FF;">new</span><span style="color: #000000;"> PublishReportsForm(</span><span
        style="color: #0000FF;">new</span><span style="color: #000000;"> ReportSetupControl(),rsConfig);
            prForm.IsAUnitTest </span><span style="color: #000000;">=</span><span style="color: #000000;">
            </span><span style="color: #0000FF;">true</span><span style="color: #000000;">; Assert.AreEqual(prForm.ShowDialog(),DialogResult.OK,</span><span
                style="color: #000000;">&quot;</span><span style="color: #000000;">Cancled by user</span><span
                    style="color: #000000;">&quot;</span><span style="color: #000000;">); } } </span></pre>
                <br />
                <br />
                <pre>
<span style="color: blue;">using</span>System;<span style="color: blue;">using</span>System.Windows.Forms;
<span style="color: blue;">using</span>System.Collections.Generic;
<span style="color: blue;">using</span>System.Text;
<span style="color: blue;">using</span>NUnit.Framework;
<span style="color: blue;">using</span>SSW.Framework.Data;
<span style="color: blue;">using</span>SSW.Framework.UnitTests;
<span style="color: blue;">using</span>SSW.Framework.Data.SqlServer.WindowsUI;
<span style="color: blue;">using</span>SSW.Framework.ReportingServices.WindowsUI;
<span style="color: blue;">using</span>SSW.LinkAuditor.Common;
<span style="color: blue;">namespace</span>
   SSW.LinkAuditor.UnitTests.Functional { [TestFixture]
   <span style="color: blue;">publicclass</span>ReportingServiceConfigTests { 
   <span style="color: blue;">privateconststring</span> STR_SSWLinkAuditor = "SSWLinkAuditor"; <span
       style="color: blue;">private</span> DBConfig _dbConfig = <span style="color: blue;">new</span>
   DBConfig(); RSConfig _rsConfig = <span style="color: blue;">new</span>
   RSConfig(); [SetUp] <span style="color: blue;">public</span>
   <span style="color: blue;">void</span> SetUp()
   { <span style="color: green;">//configurations for database deploy form</span>
   _dbConfig.ConnectionBuilder.ConnectionString = String.Empty; _dbConfig.CreateScriptsPath 
   = System.IO.Path.Combine(Application.StartupPath
   + @"\..\Database", "Create Scripts"); _dbConfig.UpgradeScriptsPath
   = _dbConfig.CreateScriptsPath;
   _dbConfig.SampleScriptsPath =
   _dbConfig.CreateScriptsPath; _dbConfig.NewDatabaseName 
   = STR_SSWLinkAuditor; _dbConfig.IsDatabaseNameEnforced
   = <span style="color: blue;">false</span>; _dbConfig.ShouldCreateSamples
   = <span style="color: blue;">false</span>; _dbConfig.IsNew
   = <span style="color: blue;">true</span>; _dbConfig.IsSampleDatabaseNameEnforced
   = <span style="color: blue;">false</span>; _dbConfig.SampleDatabaseName
   = STR_SSWLinkAuditor;
   _dbConfig.DatabaseNamePlaceholder = "[DatabaseName]"; <span style="color: green;">//configurations
       for reporting service config form</span> _rsConfig.ApplicationName 
   = "SSW Link Auditor"; _rsConfig.ReportDirectoryName 
   = _rsConfig.ApplicationName 
   + " Reports"; _rsConfig.ReportRdlFolderPath 
   = AppDomain.CurrentDomain.BaseDirectory + 
   @"\Report\RS2000"; _rsConfig.ReportRdlFolderPathAlternative 
   = AppDomain.CurrentDomain.BaseDirectory + 
   @"\Reports\RS2005"; _rsConfig.ReportManagerUrl 
   = "http://localhost/Reports"; _rsConfig.ReportServerWebServiceUrl 
   = "http://localhost/reportserver/ReportService.asmx"; }
       [Test] <span style="color: blue;">public void</span> ConfigTest()
    {  <span style="background-color: #ffff00;">ReportingServiceConfigTester.StartTest(_dbConfig,_rsConfig);</span>

     } } }


</pre>
            </li>

            <li>
                <h2><a name="TestURLs"></a>Do you write integration tests to validate your web links?</h2>
                <p>If you store your URL references in the application settings, you can create integration tests to validate them.</p>
                <dl>
                    <dt><img src="images/testURLSettings.gif" /></dt>
                    <dd>Figure: URL for link stored in application settings</dd>
                </dl>
                <p><b>Sample Code: How to test the URL</b></p>
                <pre>
	[Test]
        public void urlRulesToBetterInterfaces()
        {
            HttpStatusCode result = WebAccessTester.GetWebPageStatusCode(Settings.Default.urlRulesToBetterInterfaces);
            Assert.IsTrue(result == HttpStatusCode.OK, result.ToString());
        }
	</pre>
                <b>Sample Code: Method used to verify the Page</b>
                <pre>
	 public class WebAccessTester
    {        
        public static HttpStatusCode GetWebPageStatusCode(string url)
        {
            HttpWebRequest req = ((HttpWebRequest)(WebRequest.Create(url)));
            req.Proxy = new WebProxy();
            req.Proxy.Credentials = CredentialCache.DefaultCredentials;
            HttpWebResponse resp = null;
            try
            {
                resp = ((HttpWebResponse)(req.GetResponse()));
                if (resp.StatusCode == HttpStatusCode.OK)
                {
                    if (url.ToLower().IndexOf("redirect") == -1 && url.ToLower().IndexOf(resp.ResponseUri.AbsolutePath.ToLower()) == -1)
                    {
                        return HttpStatusCode.NotFound;
                    }
                }
            }
            catch (System.Exception ex)
            {JavaScript
                while (!(ex == null))
                {
                    Console.WriteLine(ex.ToString());
                    Console.WriteLine("INNER EXCEPTION");
                    ex = ex.InnerException;
                }
            }
            finally
            {
                if (!(resp == null))
                {
                    resp.Close();
                }
            }
            return resp.StatusCode;
        }
    }
    </pre>
            </li>

            <li>
                <h2><a name="TestJavaScript"></a>Do you test your JavaScript?</h2>
                <p>The need to build rich web user interfaces is resulting in more and more JavaScript in our applications.</p>
                <p>Because JavaScript does not have the safeguards of strong typing and compile time checking, it is just as important to unit test your JavaScript as your server side code.</p>
                <p>You can write unit tests for JavaScript using:</p>
                <ol>
                    <li><a href="/SSW/Redirect/Jsunit.htm">JsUnit</a><br />
                        <dl class="badImage">
                            <dt><a href="/SSW/Redirect/Jsunit1.htm"><img alt="Code Metrics" src="Images/JsUnit.gif" /></a></dt>
                            <dd>Figure: Bad Example – Not updated for several years </dd>
                        </dl>
                    </li>
                    <li><a href="http://qunitjs.com/">QUnit</a><br />
                        <p>QUnit focuses on testing JavaScript in the browser, while providing as much convenience to the developer as possible. Blurb from the site:</p>
                        <div class=" greyBox" >
                            <p>QUnit is a powerful, easy-to-use JavaScript unit test suite. It's used by the jQuery, jQuery UI and jQuery Mobile projects and is capable of testing any generic JavaScript code</p>
                        </div>
                        <p>QUnit was originally developed by John Resig as part of jQuery. In 2008 it got its own home, name and API documentation, allowing others to use it for their unit testing as well.</p>
                        <p>You should have a section on your zsValidate page that runs your JavaScript unit tests.</p>

                        <dl class="goodImage">
                            <dt><img alt="QUnit test and the test results" src="Images/QUnit.jpg" /></dt>
                            <dd>Figure: Good Example – An example QUnit test and the test results</dd>
                        </dl>
                    </li>
                </ol>
            </li>

            <li>
                <h2><a name="RegEx">Do you test Fragile Code - e.g. Regular Expressions?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></a></h2>
                    <p>Fragile code is code that often breaks and are difficult to understand. An example of this is with Regular Expressions.</p>
                    <p>When using regular expressions, because of their rather cryptic syntax, They should always be associated with at least two sample tests - one that passes the regular expression and one that fails. These regular expressions should be stored in a central location, i.e. a database or a class file.</p>
                    <p>A Unit Test should be written such that it loops through each of these regular expressions and tests it against the supplied test cases.</p>
                    <p><b>Sample Code</b>:</p>
                    <dl class="code">
                    <pre>
public bool IsValidEmail(string strIn)
        {
           invalid = false;
            if (String.IsNullOrEmpty(strIn))
                return false;
            // Use IdnMapping class to convert Unicode domain names. 
            try
            {
                strIn = Regex.Replace(strIn, @"(@)(.+)$", this.DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
            if (invalid)
                return false;
            // Return true if strIn is in valid e-mail format. 
            try
            {
                return Regex.IsMatch(strIn,
                      @"^(?("")(""[^""]+?""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                     @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9]{2,24}))$",
                      RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
</pre>
                    <dd>Figure: A function to validate email addresses</dd>
                </dl>

                <dl class="code">
                    <pre>
[TestMethod]
        public void RegexUtilitiesIsValidEmail_IsNotEmailValid_EmailIsNotValid()
        {
            string email = "in@correct_email@ssw.com";
            bool expected = false;

            RegexUtilities address = new RegexUtilities();

            bool response = address.IsValidEmail(email);

            Assert.AreEqual(expected, response, "Invalid Email");

        }
</pre>
                    <dd>
                        Figure: Tests a bad case</dd>
                </dl>
                <dl class="code">
                    <pre>
[TestMethod]
        public void RegexUtilitiesIsValidEmail_IsEmailValid_EmailIsValid()
        {
            string email = "correct_email@ssw.com";
            bool expected = true;

            RegexUtilities address = new RegexUtilities();

            bool response = address.IsValidEmail(email);

            Assert.AreEqual(expected, response, "Valid Email");
          
        }
</pre>
                    <dd>Figure: Tests a good case</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Arithmetic"></a>Do you have tests for difficult to spot errors - e.g. Arithmetic, Rounding, Calculations?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>By difficult to spot errors we mean errors that do not give the user a prompt that an error has occurred. Things such as: Arithmetic, Rounding or Calculations should have unit tests written for them.</p>
                    <p><b>Sample Code:</b></p>
                <dl class="code">
                    <pre>
DataAccess |Utilities.cs

using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess {
      public class Utilities {
                          // A business rule &#8211; it should be unit tested
            public decimal CalculateTotal(List&lt;myitem&gt; items) {
                  decimal total = 0.0M;
                  foreach (MyItem i in items) {
                        total += i.UnitPrice * (1 - i.Discount);
                  }
                  return total;
            }     
      }
}
		</pre>
                    <dd>Figure: Function to calculate a total for a list of items</dd>
                </dl>
                <p>For a function like this, it might be simple to spot errors when there are one or two items, but if you were to calculate the total for 50 items, then the task of spotting an error isn't so easy. That's why a unit test should be written so that you know when the function doesn't work.</p>
                <p><b>Sample Test:</b></p>
                <dl class="code">
                    <pre>
DataAccess.Tests | UtilitiesTest.cs

using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
namespace DataAccess.Tests {

      [TestFixture()]
      public class UtilitiesTests {

            [Test()]
            public void CalculateTotalSimpleTest() {
                  List&lt;myitem&gt; items = new List&lt;MyItem&gt;();
                  items.Add(new MyItem(12.50M));
                  items.Add(new MyItem(4.75M));
                  items.Add(new MyItem(9.05M));
                  items.Add(new MyItem(6.55M));
                  items.Add(new MyItem(20.12M));
 
                  decimal expected = 52.97M;
                  Utilities u = new Utilities();
                  decimal actual = u.CalculateTotal(items);

                  Assert.AreEqual(expected, actual);
            }

            [Test()]
            public void CalculateTotalWithDiscountTest() {
                  List&lt;myitem&gt; items = new List&lt;myitem&gt;();
                  items.Add(new MyItem(12.50M, 0.1M));
                  items.Add(new MyItem(4.75M));
                  items.Add(new MyItem(9.05M));
                  items.Add(new MyItem(6.55M));
                  items.Add(new MyItem(20.12M));
 
                  decimal expected = 51.72M;
                  Utilities u = new Utilities();
                  Assert.IsNotNull(u);

                  decimal actual = u.CalculateTotal(items);
                  Assert.AreEqual(expected, actual);
            }
      }
}

DataAccess | MyItem.cs

using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess {
      public class MyItem {
            public MyItem(decimal unitPrice) {
                  _unitPrice = unitPrice;
            }

            public MyItem(decimal unitPrice, decimal discount) : this(unitPrice) {
                  _discount = discount;
            }

            private decimal _unitPrice;
            private decimal _discount;

            public decimal Discount {
                  get { return _discount; }
                  set { _discount = value; }
            }

            public decimal UnitPrice {
                  get { return _unitPrice; }
                  set { _unitPrice = value; }
            }
      }
}
		</pre>
                    <dd>Figure: Test calculate total by checking something we know the result of. (Note: it doesn't need a failure case because it isn't a Regex.)</dd>
                </dl>
                <p class="productBox"> We have a program called <a href="/SSW/NETToolkit/">SSW .Net Toolkit</a> that implements this.</p>
            </li>

            <li>
                <h2><a name="Performance">Do you have tests for Performance? <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></a></h2>
                    <p>Typically there are User Acceptance Tests that need to be written to measure the performance of your application. As a general rule of thumb, Forms should not load in more than 4 seconds. This can be done using <a href="../DeveloperGeneral/netTools.aspx#NUnit"> NUnit</a>.</p>
                    <p><b>Sample Code</b>:</p>
                    <dl class="code">
                    <pre>
<!-- [Test]
public void LoginFormTimeTest()
{
   DateTime startTime = DateTime.Now;
   timer1.Interval = 1000;
   timer1.Start();
   LoginForm frmLogin = new LoginForm();
   frmLogin.Show();
   DateTime endTime = DateTime.Now;
   TimeSpan timeTaken = endTime - startTime;
   
   Assert.IsTrue(timeTaken.Seconds &lt; 4);
}-->
    public abstract class FormTestBase&lt;F&gt;
        where F : Form, new()
    {
        protected TimeSpan _ExpectedLoadTime = TimeSpan.FromSeconds(4);

        [Test]
        public void LoadTest()
        {
            Stopwatch stopwatch = new Stopwatch();

            stopwatch.Start();

            F testForm = new F();
            testForm.Show();
            testForm.Close();

            stopwatch.Stop();

            Console.WriteLine("Form [{0}] took {1:#,##0.0} seconds to open", typeof(F), stopwatch.Elapsed.TotalSeconds);
            Assert.IsTrue(stopwatch.Elapsed < _ExpectedLoadTime, 
                string.Format("Loading time ({0:#,##0.0} seconds) exceed the expected time ({1:#,##0.0} seconds).", 
                stopwatch.Elapsed.TotalSeconds, _ExpectedLoadTime.TotalSeconds));
        }
    }
    
    
    [TestFixture]
    public class LoginFormTests : FormTestBase&lt;LoginForm&gt;
    {
    }
    
    [TestFixture]
    public class MainFormTests : FormTestBase&lt;MainForm&gt;
    {
    }
		</pre>
                    <dd>Figure: This code tests that the LoginForm and MainForm load in under 4 seconds</dd>
                </dl>
                <p class="productBox">We have a program called <a href="/SSW/NETToolkit/">SSW .Net Toolkit</a> that implements this.</p>
            </li>

            <li>
                <h2><a name="RunUnitTests"></a>Do you run Unit Tests in Visual Studio?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>When you build the test project, the tests appear in Test Explorer. If Test Explorer is not visible, choose Test on the Visual Studio menu, choose Windows, and then choose Test Explorer.</p>
                    
                    <dl class="image">
                                <dt><img alt="Code Metrics" src="Images/test-explorer.jpg" /></dt>
                                <dd>Figure: Test Explorer</dd>
                            </dl>

                    <p>As you run, write, and rerun your tests, Test Explorer displays the results in default groups of Failed Tests, Passed Tests, Skipped Tests and Not Run Tests. You can change the way Test Explorer groups your tests.<br />
                       You can perform much of the work of finding, organizing and running tests from the Test Explorer toolbar.</p>
                     
                    <dl class="image">
                                <dt><img alt="Code Metrics" src="Images/run-tests.jpg" /></dt>
                                <dd>Figure: Run Tests</dd>
                            </dl>

                    <p>You can run all the tests in the solution, all the tests in a group, or a set of tests that you select. Do one of the following:</p>
                    <ul>
                        <li>To run all the tests in a solution, choose Run All</li>
                        <li>To run all the tests in a default group, choose Run... and then choose the group on the menu</li>
                        <li>Select the individual tests that you want to run, open the context menu for a selected test and then choose Run Selected Tests.</li>
                    </ul>
                    <p>The pass/fail bar at the top of the Test Explorer window is animated as the tests run. At the conclusion of the test run, the pass/fail bar turns green if all tests passed or turns red if any test failed.</p>
            </li>

            <li>
                <h2><a name="TestSendMail"></a>Do you have a integration test for your send mail code?</h2>
                    <p>The code below could help you test your send mail code:</p>
                    <dl class="goodCode">
                    <dt>
                        <pre>
DotNetOpenMailProvider provider = new DotNetOpenMailProvider();
NameValueCollection configValue = new NameValueCollection();
configValue["smtpServer"] = "127.0.0.1";
configValue["port"] = "8081";
provider.Initialize("providerTest", configValue);

TestSmtpServer receivingServer = new TestSmtpServer();
try
{
    receivingServer.Start("127.0.0.1", 8081);
    <!--SSW Code Auditor - Ignore next	line(HTML)-->
    provider.Send("phil@example.com", 
    <!--SSW Code Auditor - Ignore next	line(HTML)-->
                "nobody@example.com", 
                "Subject to nothing", 
                "Mr. Watson. Come here. I need you.");
}
finally
{
    receivingServer.Stop();
}

// So Did It Work?
Assert.AreEqual(1, receivingServer.Inbox.Count);
ReceivedEmailMessage received = receivingServer.Inbox[0];
<!--SSW Code Auditor - Ignore next	line(HTML)-->
Assert.AreEqual("phil@example.com", received.ToAddress.Email);
                        </pre>
                    </dt>
                    <dd>Figure: This code could help you validate the send mail code</dd>
                </dl>
            </li>

            <li>
                <h2><a name="HealthCheck"></a>Do you have a /HealthCheck (was /zsValidate) page to test your website dependencies?</h2>
                <p>There are two kinds of errors, coding errors and deployment errors. Coding errors should be found during development by compiling or debugging, while deployment errors
                    should be find by a validation test.<br />
                    Refer to the following rules for details:<br />
                    See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesTuningAndMaintenance.aspx#HealthCheck">
                        SSW Rules - Do you have a HealthCheck page to make sure your website is healthy?</a><br />
                    See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#ValidateSetup">
                        SSW Rules - Do you have a Validation Page for your web server?</a><br />
                </p>
            </li>

            <li>
                <h2><a name="ComplicatedFunctions"></a>Do you know when functions are too complicated?</h2>
                    <p>In general you should always be looking to simplify your code (e.g. heavily nested case statements). As a minimum look for the most complicated method you have and check that it needs simplifying.</p>
                    <p>In VS 2008, there is inbuilt support for Cyclomatic Complexity analysis.</p>
                    <ol>
                        <li>Go to Developer > Code Metrics > Generate for Solution<br />
                            <dl class="image">
                                <dt><img alt="Code Metrics" src="Images/CodeMetrics.gif" /></dt>
                                <dd>Figure: Cyclomatic Complexity analysis tool</dd>
                            </dl>
                        </li>
                        <li>Look at the largest Cyclomatic Complexity number and refactor.<br />
                            <dl class="image">
                                <dt><img alt="Results from Cyclomatic analysis" src="Images/CyclomaticAnalysis.gif" /></dt>
                                <dd>Figure: Results from Cyclomatic analysis these metrics give an indication on how complicated functions are</dd>
                        </dl>
                    </li>
                </ol>
            </li>

            <li>
                <h2><a name="IsolateLogic"></a>Do you isolate your logic and remove dependencies on instances of objects?</h2>
                    <p>If there are complex logic evaluations in your code, we recommend you isoloate them and write unit tests for them.</p>
                    <p>Take this for example:</p>
                <dl class="code">
                    <dt>
                        <pre>
while ((ActiveThreads > 0 || AssociationsQueued > 0) && (IsRegistered || report.TotalTargets <= 1000 )
    && (maxNumPagesToScan == -1 || report.TotalTargets < maxNumPagesToScan) && (!CancelScan))     
		</pre>
                    </dt>
                    <dd>Figure: This complex logic evaluation can't be unit tested.</dd>
                </dl>
                <p>
                    Writing a unit test for this piece of logic is virtually impossible - the only time
                    it is executed is during a scan, and there are lots of other things happening at
                    the same time meaning the unit test will often fail and you won't be able to identify
                    the cause anyway.</p>
                <p>
                    We can update this code to make it testable though.</p>
                <ul>
                    <li>Update the line to this:
                    <dl class="code">
                        <dt>
                            <pre>
while (!HasFinishedInitializing (ActiveThreads, AssociationsQueued, IsRegistered, 
    report.TotalTargets, maxNumPagesToScan, CancelScan))
		</pre>
                        </dt>
                        <dd>
                            Figure: Isolate the complex logic evaluation.</dd>
                    </dl>
                    <p>
                        We are using all the same parameters - however now we are moving the actual logic
                        to a separate method.</p></li>
                    <li>Now create the method:
                    <dl class="code">
                        <pre>
private bool HasFinishedInitializing(int ActiveThreads, int AssociationsQueued, bool IsRegistered, 
    int TotalAssociations, int MaxNumPagesToScan, bool CancelScan)
{
   return (ActiveThreads > 0 || AssociationsQueued > 0) && (IsRegistered || TotalAssociations <= 1000 )
       && (maxNumPagesToScan == -1 || TotalAssociations < maxNumPagesToScan) && (!CancelScan);		
}
		</pre>
                        <dd>
                            Figure: Function of the complex logic evaluation.</dd>
                    </dl></li>
                </ul>
                <p>The critical thing is that everything the method needs to know is passed in, it mustn't go out and get any information for itself and mustn't rely on any other objects being instantiated. A good way to enforce this is to make each of your logic methods static. It has to be completely self contained.</p>
                <p>The other thing we can do now is actually go and simplify / expand out the logic so that it's a bit easier to digest.</p>
                <pre>
private bool HasFinishedInitializing(int ActiveThreads, int AssociationsQueued, bool IsRegistered, 
    int TotalAssociations, int MaxNumPagesToScan, bool CancelScan)
{
   //Cancel
   if (CancelScan)     
   { return true; }

   //only up to 1000 links if it is not a registered version
   if (!IsRegistered && TotalAssociations > 1000) 
   { return true; }

   //only scan up to the specified number of links
   if (MaxNumPagesToScan != -1 && TotalAssociations > MaxNumPagesToScan) 
   { return true; }

   //not ActiveThread and the Queue is full
   if(ActiveThreads <= 0 && AssociationsQueued <= 0) 
   { return true; }

   return false;
}		</pre>
                <dl class="code">
                    <dd>Figure: Simplify the complex logic evaluation.</dd>
                </dl>
                <p>The big advantage now is that we can unit test this code easily in a whole range of different scenarios!</p>
                <pre>
[Test]
public void HasFinishedInitializingLogicTest()
{
   Validator validator = new Validator();

    //Set scenario A
   int activeThreads = 2;
   int associationsQueued = 20;
   bool isRegistered = false;
   int totalAssociations = 1200;
   int maxNumPagesToScan = -1;
   bool cancelScan = false;

   bool actual = (bool)Reflection.InvokeMethod("HasFinishedInitializing", validator,
       new object[] {activeThreads, associationsQueued, isRegistered,
       totalAssociations, maxNumPagesToScan, cancelScan});
   Assert.IsTrue(actual, "HasFinishedInitializing LogicTest A failed.");

   //Set scenario B
   activeThreads = 2;
   associationsQueued = 20;
   isRegistered = true;
   totalAssociations = 1200;
   maxNumPagesToScan = -1;
   cancelScan = false;
           
   actual = (bool)Reflection.InvokeMethod("HasFinishedInitializing", validator,
       new object[] {activeThreads, associationsQueued, isRegistered,
       totalAssociations, maxNumPagesToScan, cancelScan});
   Assert.IsFalse(actual, "HasFinishedInitializing LogicTest B failed.");
   }	
		</pre>
                <dl class="code">
                    <dd>Figure: Write unit test for complex logic evaluation.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="IsolateIO"></a>Do you isolate your logic from your IO to increase the testability?</h2>
                <p>If your method is consist of logic and IO, we recommend you isoloate them to increase the testability of the logic.</p>
                <p>Take this for example (and see how we refactor it):</p>
                <pre>public static List&lt;string&gt; GetFilesInProject(string projectFile)
{
    List&lt;string&gt; files = new List&lt;string&gt;();

    TextReader tr = File.OpenText(projectFile);

    Regex regex = RegexPool.DefaultInstance[RegularExpression.GetFilesInProject];
    MatchCollection matches = regex.Matches(tr.ReadToEnd());

    tr.Close();

    string folder = Path.GetDirectoryName(projectFile);

    foreach (Match match in matches)
    {
        string filePath = Path.Combine(folder, match.Groups["FileName"].Value);

        if (File.Exists(filePath))
        {
            files.Add(filePath);
        }
    }

    return files;
}</pre>
                <dl class="bad">
                    <dd>Bad - The logic and the IO are coded in a same method.</dd>
                </dl>
                <p>While this is a small concise and fairly robust piece of code, it still isn't that easy to unit test. Writing a unit test for this would require us to create temporary files on the hard drive, and probably end up requiring more code than the method itself.</p>
                <p>If we start by refactoring it with an overload, we can remove the IO dependency and extract the logic further making it easier to test:</p>
                <pre>public static List&lt;string&gt; GetFilesInProject(string projectFile)
{
    string projectFileContents;
    using (TextReader reader = File.OpenText(projectFile))
    {
        projectFileContents = reader.ReadToEnd();
        reader.Close();
    }

    string baseFolder = Path.GetDirectoryName(projectFile);

    return GetFilesInProjectByContents(projectFileContents, baseFolder, true);
}

public static List&lt;string&gt; GetFilesInProjectByContents(string projectFileContents, string baseFolder, bool checkFileExists)
{
    List&lt;string&gt; files = new List&lt;string&gt;();

    Regex regex = RegexPool.DefaultInstance[RegularExpression.GetFilesInProject];
    MatchCollection matches = regex.Matches(projectFileContents);

    foreach (Match match in matches)
    {
        string filePath = Path.Combine(baseFolder, match.Groups["FileName"].Value);

        if (File.Exists(filePath) || !checkFileExists)
        {
            files.Add(filePath);
        }
    }

    return files;
}</pre>
                <dl class="goodCode">
                    <dd>Good - The logic is now isolated from the IO.</dd>
                </dl>
                <p>The first method (GetFilesInProject) is simple enough that it can remain untested. We do however want to test the second method (GetFilesInProjectByContents). Testing the second method is now too easy:</p>
                <dl class="goodCode"><dt>
                    <pre>[Test]
public void TestVS2003CSProj()
{
    string projectFileContents = VSProjects.VS2003CSProj;
    string baseFolder = @"C:\NoSuchFolder";

    List&lt;string&gt; result = CommHelper.GetFilesInProjectByContents(projectFileContents, baseFolder, false);
    Assert.AreEqual(15, result.Count);
    Assert.AreEqual(true, result.Contains(Path.Combine(baseFolder, "BaseForm.cs")));
    Assert.AreEqual(true, result.Contains(Path.Combine(baseFolder, "AssemblyInfo.cs")));
}

[Test]
public void TestVS2005CSProj()
{
    string projectFileContents = VSProjects.VS2005CSProj;
    string baseFolder = @"C:\NoSuchFolder";

    List&lt;string&gt; result = CommHelper.GetFilesInProjectByContents(projectFileContents, baseFolder, false);
    Assert.AreEqual(6, result.Count);
    Assert.AreEqual(true, result.Contains(Path.Combine(baseFolder, "OptionsUI.cs")));
    Assert.AreEqual(true, result.Contains(Path.Combine(baseFolder, "VSAddInMain.cs")));
}</pre>
                    </dt>
                    <dd>Good - Different test cases and assertions are created to test the logic.</dd>
                </dl>
            </li>
           
            <li>
                <h2><a name="UITesting"></a>Do you make sure you integration tests include UI (aka form) testing?</h2>
                    <p>This is only for Web Based apps.... and it is free.</p>
                    <p>You should check:</p>
                    <ul>
                        <li>Form entry works</li>
                        <li>Validation works</li>
                    </ul>
                    <p>Use <a href="/SSW/Redirect/Selenium.htm">Selenium</a> for this task. Save the recorded C# into your integration project.</p>
            </li>

            <li>
                <h2><a name="NotVSTS"> </a>Do you know the best unit test framework to use for your project?</h2>
                    <p><b>For Windows Applications:</b></p>
                    <p>Unit tests shouldn't only be for developers, it should be able to run on customer's machines as well. Based on this consideration, we still NUnit in order to allow our users to run available tests on their machine. This will help us collect more useful information on client machines and give our products more confidence and professional look.</p>
                    <p>As NUnit provides a great UI for this purpose, we recommend you to use NUnit even you've already been working on VSTS.</p>
                    <dl class="image">
                        <dt><img src="Images/NUnitGui.gif" /></dt>
                        <dd>Figure: NUnit UI</dd>
                    </dl>
                    <p><b>For Web Applications:</b></p>
                    <p>With web applications we use MSTest.<br />
                    Also see this rule: <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#ValidateSetup">Do you have a Validation Page for your web server?</a></p>
            </li>

            <li>
                <h2><a name="NUnitInVS"></a>Do you know how to run nUnit tests from within Visual Studio?</h2>
                    <p><b>Option 1: External tool (not recommended)</b><br />
                    Using NUnit with Visual Studio: To make it easy to use, you need to add it as an
                    External tool in Visual Studio.</p>
                    <p>In Visual Studio:</p>
                    <ol>
                        <li>Go to Tools > External Tools </li>
                        <li>Click &#8220;Add&#8221; button </li>
                        <li>Type in:</li></ol>
                    <ul>
                        <li>Title: NUnit GUI</li>
                        <li>Command: Location of nUnit.exe file</li>
                        <li>Argument: /run (so that the tests run automatically when started)</li>
                        <li>Initial Directory: $(Target directory)</li>
                    </ul>
                    <dl class="image">
                    <dt><img src="Images/NUnitInVStudio.jpg" alt="Nunit in VS" /></dt>
                    <dd>Figure: Bad Example - NUnit In Visual Studio</dd>
                </dl>

                <p><b>Option 2: Test Driven .net</b><br />
                    TestDriven.net has better NUnit integration &#8211; from both code and Solution Explorer windows. </p>
                <dl class="image">
                    <dt><img src="Images/UseTestDriven.jpg" alt="use TestDriven.net"/></dt>
                    <dd>Figure: Better way - Use TestDriven.Net - it has a 'Run Test(s)' command for a single test (above) or...</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/GUIBringUpAction.jpg" alt="GUI bring up action"/></dt>
                    <dd>Figure: ...you can right click on a project and select 'Test With > NUnit' to bring up the GUI. It is certainly more convenient</dd>
                </dl>
                <p>To run unit testing: Tools > NUnit GUI to launch NUnit and run the tests.</p>

                <p><b>Option 3: Other Tools</b><br />
                    Other Visual Studio tools including Resharper and Coderush have their own integration with NUnit. If you&#8217;re already using one of these, installing TestDriven.net is unnecessary.
                </p>

            </li>

            <li>
                <h2><a name="ConfigAndVersion"></a>Do you know the right version and config for Nunit?</h2>
                    <p>There are multiple version of NUnit and .NET Framework, the following will explain how to use them correctly.</p>
                    <ul>
                        <li>if your application was built with .NET Framework 1.1, NUnit 2.2.0 which was built
                        with .NET Framework 1.1 is the best choice if you compact it into the installation
                        package, You then don't need any additional config - it will auto use .NET Framework
                        1.1 to reflect your assembly;
                        <ul>
                            <li>If there is only .NET Framework 2.0 on the client side, how to make it works?<br />
                                Just add the <b>yellow</b> into nunit-gui.exe.config (it is under the same folder
                                as nunit-gui.exe), which will tell NUnit to reflect your assembly with .NET Framework
                                2.0;
                                <div class="greyBox">
                                    <p>
                                        ...<br />
                                        &lt;startup&gt;<br />
                                        <span style="background-color: Yellow;">&lt;supportedRuntime version="v2.0.50727" /&gt;</span><br />
                                        &lt;supportedRuntime version="v1.1.4322" /&gt;<br />
                                        &lt;supportedRuntime version="v1.0.3705" /&gt;<br />
                                        &lt;requiredRuntime version="v1.0.3705" /&gt;<br />
                                        &lt;/startup&gt;<br />
                                        ...</p>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li>if your application was built with .NET Framework 2.0, then you may get choices:
                        <ul>
                            <li>NUnit 2.2.7 or higher (built with .NET framework 2.0) (recommended)<br />
                                Then you don't need any extra configuration for NUnit, just follow the default;
                            </li>
                            <li>NUnit 2.2.0 or lower (built with .NET Framework 1.1)<br />
                                Then you need to add the yellow statement (see above in this section); </li>
                        </ul>
                    </li>
                </ul>
            </li>

            <li>
                <h2><a name="VSTS"></a>Did you know Visual Studio Team System does the same thing (but we don't recommend it)?</h2>
                    <p>Visual Studio Team System has unit testing integrated into the IDE. There is a new Test View window and a Test Results window. You can run the unit tests from the right click menu in Visual Studio Team System.</p>
                    <dl class="image">
                        <dt><img src="Images\UnitTestsVSTS2.gif" width="327" height="396" /></dt>
                        <dd>Figure: New Test View window (run tests from right click)</dd>
                    </dl>
                    <dl class="image">
                        <dt><img src="Images\UnitTestsVSTS1.gif" width="399" height="205" /></dt>
                        <dd>Figure: New Test Results window</dd>
                    </dl>
                    <p>You can write unit tests much the same way as in NUnit with a few changes in syntax:</p>
                <table class="clsSSWTable" cellpadding="2" summary="Formatting Table" width="100%"
                    style="border-color: #FFFFFF">
                    <thead>
                        <th>
                            <b>Test Attribute</b>
                        </th>
                        <th>
                            <b>NUnit</b>
                        </th>
                        <th>
                            <b>Visual Studio Team System</b>
                        </th>
                    </thead>
                    <tr>
                        <td>
                            Test Fixture
                        </td>
                        <td>
                            [TestFixture]
                        </td>
                        <td>
                            [TestClass]
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!--SSW Code Auditor - Ignore next line(HTML)-->
                            Set Up
                        </td>
                        <td>
                            <!--SSW Code Auditor - Ignore next line(HTML)-->
                            [SetUp]
                        </td>
                        <td>
                            [TestInitialize]
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tear Down
                        </td>
                        <td>
                            [TearDown]
                        </td>
                        <td>
                            [CleanUp]
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Test
                        </td>
                        <td>
                            [Test]
                        </td>
                        <td>
                            [TestMethod]
                        </td>
                    </tr>
                </table>
                <p>VSTS is a great integrated toolset and there are many features in it you need. However
                    because there is no existing GUI to run these tests outside of VSTS (like you can
                    with nUnit) there is no way of having this menu option in your application.<br />
                    Therefore we <b>*don't recommend*</b> it if you also want to <a href="#MenuUnitTests"> Run Unit Tests from the Help Menu</a></p>
            </li>

            <li>
                <h2><a name="MenuUnitTests"></a>Do you have a standard 'Help' menu that includes a way to run your unit tests?</h2>
                <div class="quoteRightWrap" style="width: 50%;">
                    <blockquote>
                        Thanks Adam for coming to our user group in Boston and presenting your session "Rules
                        to Healthier Code"</blockquote>
                    <blockquote>
                        While I had used most of your best tips I'd never thought to put them in concert
                        as you have. In concert I mean together, I have used and demo'd NUNIT, FxCop. MBUnit
                        and almost the full range of third party tools you suggest. I tend to use them when
                        I need to fix a particular problem.</blockquote>
                    <blockquote>
                        BUT I never thought to use all of them together. Like your tip to include NUnit
                        with the finished product! Just brilliant! It still makes me laugh at the simplicity
                        of it. I get the flash of a cool validation tool and user validation for the work
                        I've already done in NUnit. Its good marketing, good salesmanship and good engineering!
                        Its just elegant, I might include it with my setup as part of the install! "Click
                        here to validate your install" It'll force me to be more diligent about NUnit, but
                        now there is a better reason for the diligence.</blockquote>
                    <blockquote>
                        Again thanks for the great presentation Wednesday. I'll be re-working the concept
                        into my own UG programs here in New Hampshire.</blockquote>
                    <p>Pat Tomey<br />
                        www.4square.net</p>
                </div>
                <p>Your standard help menu should include an option to run your Unit Tests. Everybody
                    knows the importance of Unit tests for the middle tier. However, Unit Tests are
                    also important to capture problems that occur on other peoples' machines so that
                    users can perform a quick check when a product is not behaving correctly. This is
                    important for troubleshooting during support calls and enables your customers to
                    do a Health Check on the product.</p>
                <p>And yes, there are many tests that can be written that will pass on the developers
                    PC - but not on the users PC. e.g. Ability to write to a directory, missing dlls,
                    missing tables in the schema etc.
                </p>
                <p>Note: Adding this option requires you to include NUnit in your setup.exe (See <a
                        href="../WiseSetup/WiseStandards.aspx#IncludeAllFiles">Include all the files needed</a>
                    in our Wise Standard)</p>
                <dl class="image">
                    <dt><img src="Images/HelpRunUnitTests.gif" width="640" height="504" alt=""></dt>
                    <dd>Figure: Standard Help menu should give you an option to Run Unit Tests to check the users' environment (Good)</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/NUnitGui.gif" width="600" height="406" alt="" /></dt>
                    <dd>
                        Figure: Obviously the red indicates that there is a problem with a Unit Test (Good)</dd>
                </dl>
                <p>We Create:</p>
                    <ol>
                        <li><a href="#TestURLs">VS.NET for Web</a></li>
                        <li><a href="#NotVSTS">NUnit for Windows</a></li>
                    </ol>
                    <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#UnitTestRunner">
                        TFS needs to include a unit test runner</a>
                <p>We have a rule <a href="RulestoBetterInterfaces-Windows-Applications.aspx#HelpMenu">Do you know the Seven items every Help menu needs?</a></p>
                <p class="productBox">We have a program called <a href="/SSW/NETToolkit/">SSW .Net Toolkit</a> that implements this.</p>
            </li>

            <li>
                <h2><a name="UnitTestCanFail"></a>Do you make sure that the test can be failed?</h2>
                <p>You should make sure that the unit test you created can actually fail. It is very easy and common to create a test which never fails. It is very important to take baby steps and not to make any assumptions.
                </p>
                <p>One of the ways you can do this is by returning NotImplementedException() from the method you are writing test for. For Example:
                </p>
                <dl class="code">
                    <pre>
    [Test]
    public void Test_ABC_MethodReturns_XYZ()
    {
        MyClass classObj = new MyClass();
        Assert.IsNotNull(classObj.Get_XYZ());
    }
    
    
    //The method to test in class MyClass ...
    public int Get_XYZ()
    {
        throw new NotImplementedException("Write a test");
    }
                    </pre>
                    <dd>
                        Figure: Example of how to use NotImplementedException
                    </dd>
                </dl>
            </li>

            <li>
                <h2><a name="ContinuousBuildServer"></a>Do you have a Continuous Build Server?</h2>
                <p>A continuous build server monitors the Source Control repository and, when something changes, it will update, build and test the software. If something is wrong, notifications are sent out via email.</p>
            </li>
            <li>
                <h2>
                    <a name="DatabaseUnitTest"></a>Do you unit test your database?</h2>
                <p>
                    We've all heard of writing unit tests for code and business logic, but what happens
                    when that logic is inside SQL server?</p>
                <ol>
                    With Visual Studio, you can write database unit tests. These are useful for testing
                    out:
                    <li>Stored Procedures</li>
                    <li>Triggers</li>
                    <li>User defined functions</li>
                    <li>Views</li>
                </ol>
                <p>
                    These tests can also be added to the same library as your unit, web and load tests.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/AddNewTest.jpg"  alt="Add a new test">
                    </dt>
                    <dd>
                        Figure 1 - Database Unit Test</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/WriteUnitTest.jpg" alt="Write the unit test">
                    </dt>
                    <dd>
                        Figure 2 - Writing the unit test against a stored proc</dd>
                </dl>
            </li>
                        <li>
                <h2><a name="IntelliTesting"></a>Do you use IntelliTesting to save you in testing?</h2>

                         
<p>It is difficult to measure test quality as there are a number of different available metrics - for example, code coverage and number of assertions. Furthermore, when we write code to test, there are number of questions that we must answer, such as, “is the code easily testable?” and “are we only testing the happy path or have we included the edge cases?”&#8203;</p>
<p>However, the most important question a dev can ask themselves is, “What assertions should I test?&#8203;”.</p>
<p>This is where IntelliTesting comes into play. The feature, formerly known as Smart Unit Testing (and even more formerly known as PEX), will help you answer this question by intelligently analyzing your code. Then, based upon the information gathered, it will generate a unit test for each scenario it finds.</p>


                                            <dl class="badImage">
                    <dt><img border="0" src="Images/IntelliTest-bad.png" style=" height: 50%; width: 50%;" alt="What’s wrong with this code" /></dt>
                    <dd>Figure: Bad example - What’s wrong with this code? </dd>
                </dl>

                                            <dl class="goodImage">
                    <dt><img border="0" src="Images/IntelliTest-Good.png" style=" height: 50%; width: 50%;" alt="IntelliTest in action" /></dt>
                    <dd>Figure: Good example - IntelliTest in action </dd>
                </dl>
<p>In short, by using IntelliTest, you will increase code coverage, greatly increase the number of assertions tested, and increase the amount of edge cases tested. By adding automation to your testing, you save yourself time in the long run and reduce the risk of problems in your code caused by simple human error.</p>


            </li>
            <li>
             <h2><a name="CodeUITests"></a>When you record VS 2010 coded UI tests, make them less brittle</h2>
              <dl class="image">
                    <dt>
                        <img src="Images/CodedUITest.jpg" alt="Coded UI test ">
                    </dt>
                    <dd>
                        Figure: You record a coded UI test by clicking the buttons "2", "+" and "2"</dd>
                </dl>
               <dl class="code">
                        <dt>
                            <pre>
 public void Calculator_Add2Plus2_Equals4()
        {
            &nbsp;&nbsp;&nbsp; #region Variable Declarations
            &nbsp;&nbsp;&nbsp;WinButton uIItem2Button = this.UICalculatorWindow.UIItemWindow.UIItem2Button;
            &nbsp;&nbsp;&nbsp;WinButton uIAddButton = this.UICalculatorWindow.UIItemWindow1.UIAddButton;
           &nbsp;&nbsp;&nbsp; WinButton uIEqualsButton = this.UICalculatorWindow.UIItemWindow2.UIEqualsButton;
            &nbsp;&nbsp;&nbsp;#endregion

            &nbsp;&nbsp;&nbsp;// Launch '%SystemRoot%\System32\calc.exe'
            &nbsp;&nbsp;&nbsp;ApplicationUnderTest uICalculatorWindow = ApplicationUnderTest.Launch(this.Calculator_Add2Plus2_Equals4Params.UICalculatorWindowExePath, this.Calculator_Add2Plus2_Equals4Params.UICalculatorWindowAlternateExePath);

           &nbsp;&nbsp;&nbsp; // Click '2' button
            &nbsp;&nbsp;&nbsp;Mouse.Click(uIItem2Button, <span class="highlight">new Point(12, 8));</span>

            &nbsp;&nbsp;&nbsp;// Click 'Add' button
            &nbsp;&nbsp;&nbsp;Mouse.Click(uIAddButton, <span class="highlight">new Point(10, 19));</span>

            &nbsp;&nbsp;&nbsp;// Click '2' button
            &nbsp;&nbsp;&nbsp;Mouse.Click(uIItem2Button, <span class="highlight">new Point(9, 11));</span>

            &nbsp;&nbsp;&nbsp;// Click 'Equals' button
            &nbsp;&nbsp;&nbsp;Mouse.Click(uIEqualsButton, <span class="highlight">new Point(24, 33));</span>
        }
                            </pre>
                        </dt>
                        <dd>
                            Figure: You get this beautiful coded UI test
                        </dd>
                    </dl>
              <p>These tests could fail in the future, if the buttons were resized to be smaller. So to make them less brittle change them to 1, 1 .</p>
            </li>

            <li>
                <h2><a name="CodeCoverage"></a>Do you use Live Unit Testing to see code coverage?</h2>
                <p>Visual Studio 2017 introduces a new feature called Live Unit Testing. This gives the developer insight into code coverage of the file that they are working on, so they can quickly and easily see if there’s a unit test that covers the code they are working on.</p>
                <dl class="image">
                    <dt><img src="https://rules.ssw.com.au/PublishingImages/lut-codecoverage1.jpg" alt="Code Coverage 1" /></dt>
                    <dd>Figure: Enable it by selecting Test | Live Unit Testing | Start</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="https://rules.ssw.com.au/PublishingImages/lut-codecoverage2.jpg" alt="Code Coverage 2" /></dt>
                    <dd>Figure: Bad Example – This method isn't covered by any unit tests, so the developer should consider writing a unit test for it</dd>
                </dl>
                <dl class="image">
                    <dt><img src="https://rules.ssw.com.au/PublishingImages/lut-codecoverage3.jpg" alt="Code Coverage 3" /></dt>
                    <dd>Figure: The developer can right click and create a test immediately</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="https://rules.ssw.com.au/PublishingImages/lut-codecoverage4.jpg" alt="Code Coverage 4" /></dt>
                    <dd>Figure: Good Example – Developer can see that the code is covered by 2 passing tests and one failing test</dd>
                </dl>

                <p>For more details see Joe Morris’s video on .NET Tooling Improvements Overview – Live Unit Testing:</p>
                <iframe src="https://channel9.msdn.com/Events/Connect/2016/171/player" width="800" height="450" allowFullScreen frameBorder="0"></iframe>
            </li>

        </ol>
    </div>
    <h2>Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/ChrisBriggs.aspx">Chris Briggs</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ML">Mark Liu</a><br />
        Troy Magennis
    </p>
</asp:Content>
