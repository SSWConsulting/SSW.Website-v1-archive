<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules for Error Handling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <br />
    <div class="TableOfContents">
        <ol>
            <li><a href="#EMAB">Do you use LadyLog?</a></li>
            <li><a href="#CatchRethrow">Do you catch and re-throw exceptions properly?</a></li>
            <li><a href="#Except">Do you catch exception more precise?</a></li>
            <li><a href="#DoNotThrowSystemException">Do you know that you should never throw an
                exception using System.Exception?</a></li>
            <li><a href="#nameex">Do you name all your exception object as ex?</a></li>
            <li><a href="#NoOnErrorResumeNext">Do you always avoid On Error Resume Next?</a></li>
        </ol>
    </div>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c')"
            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c');return true;"
            onmouseout="javascript:clearStatus(); return true;">Let us know </a>what you
        think.</p>
    <ol>
        <li>
            <h2>
                <a name="EMAB"></a>Do you use LadyLog?</h2>
             <p>Your users should never see the "yellow screen of death" in ASP.NET nor the "unhandled exception" message in Windows Forms, WPF and Silverlight. You should always log errors somewhere (preferably a SQL database).</p>
              <dl class="badImage">
                <dt>
                  <img src="Images/YSOD.jpg" alt="Yellow Screen Of Death" />
                </dt>
                <dd>Figure: Bad example - your users should never see the Yellow Screen of Death (YSOD)</dd>
              </dl>
              
               <dl class="badImage">
                <dt>
                  <img src="Images/UnhandledExceptions.jpg" alt="Unhandled Exceptions" />
                </dt>
                <dd>Figure: Bad example - your users should never have unhandled exceptions in Windows Forms</dd>
              </dl>
              <ul>
                There are many good exception loggers that are free to use:
                <li>LadyLog (recommended for Windows applications)</li>
                <li><a href="http://www.ssw.com.au/ssw/Standards/DeveloperGeneral/netTools.aspx">Elmah - Error Logging Modules and Handlers</a> (recommended for web applications)<br />
                   Elmah is an easy to use, open source logger for .NET that has a good community around it that are always adding new features.
                </li>
                <li>Exception Handling application log from the <a href="http://msdn.microsoft.com/en-us/library/ff632023.aspx">Microsoft Enterprise Library </a></li>
              </ul>
              <ul>
               <br /><b>What is SSW LadyLog?</b>
               <li>It a Windows UI for your application that allows users to Log meaningful errors.
                  <dl class="goodImage">
                    <dt>
                      <img src="Images/ErrorReportingWindow.jpg" alt="Professional error reporting window" />
                     </dt>
                     <dd>Figure: Good example ?your users get a nice professional error reporting window</dd>
                   </dl> 
               </li>
               <li>It is a Database (TODO: Move to Elmah)</li>
               <li>It is a WebUI for the database  (TODO: Move to Elmah)</li>
               <li>It's a web service publisher for submitting unhandled exceptions back to home base (that's us). (TODO: Move to Elmah)</li>
              </ul>
            <table class="clsSSWProductTable" id="table1" cellspacing="2" cellpadding="2" summary=".NET Toolkit">
                <tr>
                    <td>
                        See how we configured this functionality with LadyLog in
                        the <a href="../../NetToolKit/04ExceptionReporter.aspx">.NET Toolkit</a>.
                    </td>
                </tr>
            </table>
            <table class="clsSSWProductTable" id="table2" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <br />
        </li>
        <li>
            <h2>
                <a name="CatchRethrow"></a>Do you catch and re-throw exceptions properly?</h2>
            <p>
                A good catch and re-throw will ease you in debugging, a bad catch and re-throw will
                ruin the exception's stack trace and make debugging difficult.</p>
            <dl class="badCode">
                <dt>
                    <pre>
catch {} 
<span style="color: red">(Never use an empty catch block. Do something in the block or remove it.)</span>

catch (SomeException) {} 
<span style="color: red">(Never use an empty catch block. Do something in the block or remove it.)</span>

catch { throw; } 
<span style="color: red">(Never use an empty catch block. Do something in the block or remove it.)</span>

catch (SomeException) { throw; } 
<span style="color: red">(Never use an empty catch block. Do something in the block or remove it.)</span>

catch (SomeException ex) { throw ex; } 
<span style="color: red">(Never re-throw exceptions by passing the original exception object. Wrap the exception or use throw; instead.)</span>

catch (SomeException ex) { someMethod(); throw ex; } 
<span style="color: red">(Never re-throw exceptions by passing the original exception object. Wrap the exception or use throw; instead.)</span>

</pre>
                </dt>
                <dd>
                    Bad code - The bad examples</dd></dl>
            <br />
            <dl class="goodCode">
                <dt>
                    <pre>
catch (SomeException ex) { someMethod(); 
                           throw; 
                           }

catch (SomeException ex) { someMethod(); 
                           SomeOtherException wrapperEx = new SomeOtherException("This is a wrapper exception", ex);
                           throw wrapperEx; 
                           }</pre>
                </dt>
                <dd>
                    Good code - The good examples</dd></dl>
            <br />
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <br />
        </li>
        <li><a name="Except"></a>
            <h2>
                Do you catch exception more precise?</h2>
            In the try and catch block, if you always catch for normal "Exception" you will
            never know where the true problem is. While we using try we should always expect
            some exception may happen, in our code we always catch the specified exception.
            <dl class="badCode">
                <dt>
                    <pre>
try { connection.Open();
      }

catch (Exception ex) { return ex.ToString ();
                       }</pre>
                </dt>
                <dd>
                    Bad code - Catch general Exception.</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
try { connection.Open(); 
      }

catch (InvalidOperationException ex) { return ex.ToString(); 
                                       }

catch (SqlException ex) { return ex.ToString(); 
                          }</pre>
                </dt>
                <dd>
                    Good code - Catch with specific Exception.</dd></dl>
            <p>
                Implement <a href="#EMAB">Exception Management Application Block</a> and let it
                handles all unhandled and unexpected exceptions.</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Except">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <br />
        </li>
        <li>
            <h2>
                <a name="DoNotThrowSystemException">Do you know that you should never throw an exception
                    using System.Exception?</a>
            </h2>
            <p>
                While everyone knows that "catch (Exception ex)" is bad, no one has really noticed
                that "throw Exception()" is actually the root of all evil.</p>
            <p>
                System.Exception is a very extensive class, and it is inherited by all other exception
                classes. If you throw an exception with the code "throw Exception()", what you need
                subsequently to handle the exception will be the infamous "catch (Exception ex)".</p>
            <p>
                As a standard, you should use an exception class with the name that best describes
                the exception's detail. All exception classes in .NET Framework follow this standard
                very well. As a result, when you see exceptions like FileNotFoundException or DivideByZeroException,
                you know what's happening just by looking at the exception's name. .NET Framework
                has provided us a comprehensive list of exception classes that can we can use. If
                you really can't find one that is suitable for the situation, then create your own
                exception class with the name that best describes the exception (eg: EmployeeListNotFoundException).</p>
            <p>
                Also, System.ApplicationException should be avoided as well unless it's an exception
                related to the application. While it's acceptable and should be used in certain
                cases, be aware that using it massively will be just as bad as "throw (Exception
                ex)".</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Except">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <br />
        </li>
        <li>
            <h2>
                <a name="nameex"></a>Do you name all your exception object as ex?</h2>
            We suggested to use ex as all Exception Object.
            <dl class="badCode">
                <dt>
                    <pre>
catch (SomethingException myException) { Console.Writeline(myException.message);
                                         }</pre>
                </dt>
                <dd>
                    Figure: Bad example not using ex for the exception object.</dd>
            </dl>
            <dl class="goodCode">
                <dt>
<pre>
catch (SomethingException ex) { doSomething(); 
                                throw; 
                                }</pre>
                </dt>
                <dd>
                    Figure: Good example using ex for the exception object.</dd>
            </dl>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#re-throw">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li>
            <h2>
                <a name="NoOnErrorResumeNext"></a>Do you always avoid On Error Resume Next?</h2>
            <div class="greyBox">
                VB and VB.NET Only.
            </div>
            <p>
                Never use On Error Resume Next in VB (and VB.NET) projects.<br />
                <br />
                If an error occurred, On Error Resume Next will hide the error and things can go
                very haywire! In .NET, stop using the On Error syntax and use the try-catch exception
                syntax for better structural exception handling.<br />
                <br />
                In VB/VBA you should use On Error Resume Next with line of comment and after an
                offending line of code there should be statement On Error GoTo 0 to reset Errors
                collection.
            </p>
            <dl class="badCode">
                <dt>
                <pre>
Private Sub cmdSelect_Click()
    Dim varTemp As Variant
    On Error Resume Next
    varTemp = columnADOX.Properties(&quot;RelatedColumn&quot;).Value
        .
        ....many lines of code...
        .
    intRoutesPerDay = 2
    End Sub</pre>
                </dt>
                <dd>
                    Bad Example</dd>
            </dl>
            <dl class="goodCode">
                <dt><pre>
Private Sub cmdSelect_Click()
    Dim varTemp As Variant
    On Error Resume Next
    'Sometimes there is no related column value
    varTemp = columnADOX.Properties(&quot;RelatedColumn&quot;).Value
    On Error GoTo 0

    .
    ....continuing code...
    .
    End Sub</pre>
                    </dt>
                <dd>
                    Good Example</dd>
            </dl>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#NoOnErrorResumeNext">SSW
                            Code Auditor</a> to check for this rule.
                    </td>
                </tr>
            </table>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogann</a>
        <br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=CS">Cameron Shaw</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TF">Tim Fletcher</a><br />
        Edward Forgacs</p>
</asp:Content>
