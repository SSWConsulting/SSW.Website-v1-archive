<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW Code Auditor - Tutorial" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <p>
        <img src="Images/CodeAuditor_Logo.gif" alt="Code Auditor Logo" style="width: 240px; margin-top: 30px;" />
    </p>

    <h4>Fixing Sample Solution with SSW Code Auditor - VS Extension</h4>
    <p>This tutorial will show you how to fix the sample &quot;10 Rules Fail Sample (10RulesFailSample_WindowsCS2010)&quot; project that came with SSW Code Auditor - VS Extension.</p>
    <p>We will show you how to run Code Auditor on the sample solution and step you through each of the violated rules.</p>
    <div class="TableOfContents">
        <h4>SSW Code Auditor - VS Extension - Getting started</h4>
        <ol>
            <li><a href="#Started">Getting started</a></li>
        </ol>
    </div>
    <div class="TableOfContents">
        <h4>SSW Code Auditor - VS Extension - Improving your code</h4>
        <ol start="2">
            <li><a href="#CatchRethrow">C# Code- Catch and re-throw exception improperly</a></li>
            <li><a href="#CatchSpecificException">C# Code- Catch Exception must be more specific</a></li>
            <li><a href="#HandleUnexpectedException">C#/VB.NET Code- Application entry method should handle "UnhandledException" and "ThreadException" events</a></li>
            <li><a href="#DoNotThrowSystemException">C#/VB.NET Code- Don't throw System.Exception</a></li>
        </ol>
    </div>
    <div class="TableOfContents">
        <h4>SSW Code Auditor - VS Extension - Improving your UI</h4>
        <ol start="5">
            <li><a href="#MessageBoxIcon">C#/VB.NET Code- MessageBoxes must have icons</a></li>
            <li><a href="#NoQuestionIcon">C#/VB.NET Code- MessageBoxIcon.Question should not be used</a></li>
            <li><a href="#Mnemonic">C#/VB.NET UI & Code- Buttons (except OK, Cancel, and Close), CheckBoxes, RadioButtons must have mnemonics</a></li>
            <li><a href="#NoMnemonic">C#/VB.NET UI & Code- OK, Cancel and Close buttons should not have mnemonics</a></li>
            <li><a href="#CenterParent">C#/VB.NET UI- FixedDialog must be used with CenterParent</a></li>
            <li><a href="#TextBoxPasswordChar">C#/VB.NET UI- TextBox's PasswordChar must be *</a></li>
        </ol>
    </div>

    <h3>SSW Code Auditor - VS Extension - Getting started</h3>
    <ol>
        <li>
            <h2><a id="Started"></a>Getting started</h2>
            <p>
                Follow these steps to start auditing your sample solution:
            </p>
            <ol>
                <li>Download and install SSW Code Auditor - VS Extension using the VS Extension Manager</li>
                <li>Restart Visual Studio</li>
                <li>Click on the menu "Samples" to download the sample solution<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/OpenSamples.png" alt="Download sample" border="0" /></dt>
                        <dd>Figure: Download sample solution from button "Samples"</dd>
                    </dl>
                </li>
                <li>Open <b>10RulesFailSample_WindowsCS2010.zip</b> in Samples folder, unzip it and run the <b>10RulesFailSample.sln</b> inside.<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/OpenSampleZip.png" alt="Open 10RulesFailSample.sln" border="0" /></dt>
                        <dd>Figure: Unzip 10RulesFailSample_WindowsCS2010.zip and run 10RulesFailSample.sln</dd>
                    </dl>
                </li>
                <li>From the "SSW Code Auditor" Menu, Select "Options", click on the "Code Auditor" tab and then click on the "Add" button   
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/AddRulesStep1.png" alt="Adding rules step 1" border="0" /></dt>
                        <dd>Figure: Select the "Options" Menu to add rules</dd>
                    </dl>
                </li>
                <li>Select "All" and then click on the "Add" button
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/AddRulesStep2.png" alt="Adding rules step 2" border="0" /></dt>
                        <dd>Figure: Select all available rules</dd>
                    </dl>
                </li>
                <li>On the "Code Auditor" tab "Enable All" rules and then click on the "Ok" button
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/AddRulesStep3.png" alt="Adding rules step 3" border="0" /></dt>
                        <dd>Figure: Enable rules in the "SSW Code Auditor" project</dd>
                    </dl>
                </li>
                <li>Click "Audit" on the menu or toolbar in Visual Studio.<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/ClickAudit.png" alt="Extension toolbar and menu" border="0" /></dt>
                        <dd>Figure: Extension toolbar and menu</dd>
                    </dl>
                </li>
                <li>Select source code to scan and click "Start".<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/ClickStart.png" alt="Select project to scan" border="0" /></dt>
                        <dd>Figure: Select project to scan</dd>
                    </dl>
                </li>
                <li>Scanning...<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/Scanning.gif" alt="Scanning in progress..." border="0" /></dt>
                        <dd>Figure: Scanning in progress...</dd>
                    </dl>
                </li>
                <li>Finished<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/AuditFinished.gif" alt="Click &quot;OK&quot; to see the result" border="0" /></dt>
                        <dd>Figure: Click "OK" to see the result</dd>
                    </dl>
                </li>
                <li>The report will now open.<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/FullReportSmall.png" alt="Report in browser" border="0" /></dt>
                        <dd>Figure: Report in browser</dd>
                    </dl>
                </li>
                <li>Close the report, go back to Visual Studio and see the error report in Output panel.<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/Tutorial/OutputPanel.png" alt="The result in Visual Studio Output panel" border="0" /></dt>
                        <dd>Figure: The result in Visual Studio Output panel</dd>
                    </dl>
                    <b>Note</b>: Make sure the Output panel is visible.<br />
                    <br />
                </li>
                <li>Continue with tutorial to start fixing code! :)<br />
                    <b>Note</b>: Double click on the error to navigate to error. </li>
            </ol>
        </li>

        <h3>SSW Code Auditor - VS Extension - Improving your code</h3>

        <li><a id="CatchRethrow"></a>
            <h2>C# Code- Catch and re-throw exception improperly</h2>
            <p>
                Never re-throw exceptions by passing the original exception object. Wrap the exception or use throw; instead.
            </p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red"><b>throw ex;</b></span><br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green"><b>throw;</b></span></td>
                </tr>
            </table>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulestoBetterErrorHandling.aspx#CatchRethrow">Do you catch and re-throw exceptions properly?</a>.
            </p>
        </li>
        <li><a id="CatchSpecificException"></a>
            <h2>C# Code- Catch Exception must be more specific</h2>
            <p>
                When an invalid regular expression is parsed in Regex.Match(), ArgumentException
                will be thrown - and this is what we want to catch.
            </p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red"><b>catch (Exception ex)</b></span><br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green"><b>catch (ArgumentException ex)</b></span></td>
                </tr>
            </table>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulestoBetterErrorHandling.aspx#CatchRethrow">Do you
                    catch and re-throw exceptions properly?</a>.
            </p>
        </li>
        <li><a id="HandleUnexpectedException"></a>
            <h2>C#/VB.NET Code- Application entry method should handle "UnhandledException" and
                "ThreadException" events</h2>
            <p>Application entry method should handle these exceptions properly to minimize risk and make the application more stable during runtime.</p>
            <p>
                Add the highlighted line:<br />
                <table class="clsSSWTableCode">
                    <tr>
                        <td>Application.ThreadException += new System.Threading.ThreadExceptionEventHandler(Application_ThreadException);<br />
                            <span style="background-color: #FFFF00">AppDomain.CurrentDomain.UnhandledException +=
                                new UnhandledExceptionEventHandler(CurrentDomain_UnhandledException);</span></td>
                    </tr>
                </table>
                And:
                <br />
                <table class="clsSSWTableCode">
                    <tr>
                        <td>
                            <pre>private static void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
{
    MessageBox.Show(e.ToString(), Application.ProductName + " " + new Version(Application.ProductVersion).ToString(2), MessageBoxButtons.OK, MessageBoxIcon.Error);
}
</pre>
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterErrorhandling.aspx#Except">Do you
                    use exception management application block?</a>.
            </p>
        </li>
        <li><a id="DoNotThrowSystemException"></a>
            <h2>C#/VB.NET Code- Don't throw System.Exception</h2>
            <p>
                While everyone knows that "catch (Exception ex)" is bad, no one has really noticed that "throw Exception()" is actually the root of all evil.<br />
                System.Exception is a very extensive class, and it is inherited by all other exception classes. If you throw an exception with the code "throw Exception()", what you need subsequently to handle the exception will be the infamous "catch (Exception ex)".
            </p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red"><b>throw new Exception("Not implemented
                            yet; This is a test.");</b></span><br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green"><b>throw new NotImplementedException("Not
                            implemented yet; This is a test.");</b></span></td>
                </tr>
            </table>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterErrorhandling.aspx#DoNotThrowSystemException">Do you know that you should never throw an exception using System.Exception?</a>.
            </p>
        </li>
        <li><a id="NoQuestionIcon"></a>
            <h2>C#/VB.NET Code- MessageBoxIcon.Question should not be used</h2>
            <p>
                NEVER use the question mark icon!.
                <br />
                According to Microsoft, the Question mark is being phased out, as any of the other three: Error, Warning or Information can easily be reworded into a Question, and Question does not show the user the severity of the issue that has just occurred.<br />
                E.g.  If you want to ask the user whether they want to save a file before closing, you should use the Warning Icon. 
            </p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show("File cannot be found.", Application.ProductName
                        + " " + new Version(Application.ProductVersion).ToString(2), MessageBoxButtons.OK,
                        MessageBoxIcon.<span style="background-color: #FFFF00">Question</span>);<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show("File cannot be found.", Application.ProductName
                        + " " + new Version(Application.ProductVersion).ToString(2), MessageBoxButtons.OK,
                        MessageBoxIcon.<span style="background-color: #FFFF00">Warning</span>);</td>
                </tr>
            </table>
            <dl class="badImage">
                <dt>
                    <img src="Images/Tutorial/MessageBoxQuestionIcon.gif" alt="MessageBox with question icon"
                        border="0" /></dt>
                <dd>Figure: Bad - MessageBox with question icon</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/Tutorial/MessageBoxWarningIcon.gif" alt="MessageBox with warning icon" border="0" /></dt>
                <dd>Figure:
                        Good - MessageBox with warning icon</dd>
            </dl>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#MessageBoxGuidelines">Do you know how to make message boxes user friendly?</a>.
            </p>
        </li>

        <h3>SSW Code Auditor - VS Extension - Improving your UI</h3>

        <li><a id="MessageBoxIcon"></a>
            <h2>C#/VB.NET Code- MessageBoxes must have icons</h2>
            <p>Message boxes should have consistent and informative titles and descriptions, and icons should be used appropriately.</p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show("An error has occurred:" + Environment.NewLine
                        + &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Environment.NewLine + &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ex.ToString(),
                        Application.ProductName + " " + new Version(Application.ProductVersion).ToString(2),
                        MessageBoxButtons.OK);<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show("An error has occurred:" + Environment.NewLine
                        + &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Environment.NewLine + &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ex.ToString(),
                        Application.ProductName + " " + new Version(Application.ProductVersion).ToString(2),
                        MessageBoxButtons.OK<span style="background-color: #FFFF00">, MessageBoxIcon.Error</span>);</td>
                </tr>
            </table>
            <dl class="badImage">
                <dt>
                    <img src="Images/Tutorial/MessageBoxWithoutIcon.gif" alt="MessageBox without icon" border="0" /></dt>
                <dd>Figure:
                        Bad - MessageBox without icon</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/Tutorial/MessageBoxWithIcon.gif" alt="MessageBox with icon" border="0" /></dt>
                <dd>Figure:
                        Good - MessageBox with icon</dd>
            </dl>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#MessageBoxGuidelines">Do you know how to make message boxes user friendly?</a>.
            </p>
        </li>
        <li><a id="Mnemonic"></a>
            <h2>C#/VB.NET UI & Code- Buttons (except OK, Cancel, and Close), CheckBoxes, RadioButtons
                must have mnemonics</h2>
            <p>
                A mnemonic for a button is the letter which has an underscore, and the user can press the button using Alt-"Char".<br />
                This enables the user to navigate through the form quicker and is a must for Buttons (except OK, Cancel and Close), Checkboxes and Radiobuttons.
            </p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.btnOpen.Text = "Open";<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.btnOpen.Text = "<span style="background-color: #FFFF00">&</span>Open";</td>
                </tr>
            </table>
            <br />
            You can also do this using VS IDE designer:
            <dl class="image">
                <dt>
                    <img src="Images/AddMnemonic.gif" alt="Add the Mnemonic using VS IDE designer" border="0" /></dt>
                <dd>Figure:
                        Add the Mnemonic using VS IDE designer</dd>
            </dl>
            <dl class="badImage">
                <dt>
                    <img src="Images/BadWithoutMnemonic.gif" alt="&quot;Open&quot; button does not have mnemonic (bad)"
                        border="0" /></dt>
                <dd>Figure: Bad - "Open" button does not have mnemonic</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/GoodWithMnemonic.gif" alt="&quot;Open&quot; button has mnemonic (good)"
                        border="0" /></dt>
                <dd>Figure: Good - "Open" button has mnemonic</dd>
            </dl>
            <p>
                See rule <a href="/ssw/standards/Rules/RulestoBetterInterfaces-Controls.aspx#UseMnemonic">Control
                    - Do your buttons have a mnemonic?</a>.
            </p>
        </li>
        <li><a id="NoMnemonic"></a>
            <h2>C#/VB.NET UI & Code- OK, Cancel and Close buttons should not have mnemonics</h2>
            <p>OK, Cancel, Close, and Apply buttons should not have mnemonics, because they should be associated with Accept and Cancel buttons.</p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.btnClose.Text = "<span style="background-color: #FF0000">&</span>Close";<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.btnClose.Text = "Close";</td>
                </tr>
            </table>
            <br />
            You can also do this using VS IDE designer
            <dl class="image">
                <dt>
                    <img src="Images/AddMnemonic.gif" alt="Remove the Mnemonic using VS IDE designer"
                        border="0" /></dt>
                <dd>Figure: Remove the Mnemonic using VS IDE designer</dd>
            </dl>
            <dl class="badImage">
                <dt>
                    <img src="Images/BadWithMnemonic.gif" alt="&quot;Close&quot; button has mnemonic (bad)"
                        border="0" /></dt>
                <dd>Figure: Bad - "Close" button has mnemonic</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/GoodWithoutMnemonic.gif" alt="&quot;Close&quot; button does not have mnemonic (good)"
                        border="0" /></dt>
                <dd>Figure: Good - "Close" button does not have mnemonic</dd>
            </dl>
            <p>
                See rule <a href="/ssw/standards/Rules/RulestoBetterInterfaces-Controls.aspx#UseMnemonic">Control
                    - Do your buttons have a mnemonic?</a>.
            </p>
        </li>
        <li><a id="CenterParent"></a>
            <h2>C#/VB.NET UI- FixedDialog must be used with CenterParent</h2>
            <p>FixedDialog must be used with CenterParent to prevent multi-monitor confusion.</p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.StartPosition = System.Windows.Forms.FormStartPosition.<span
                            style="background-color: #FFFF00">CenterParent</span>;</td>
                </tr>
            </table>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#InheritedForms">Do you use inherited forms for consistent behaviour?</a>.
            </p>
        </li>
        <li><a id="TextBoxPasswordChar"></a>
            <h2>C#/VB.NET UI- TextBox's PasswordChar must be *</h2>
            <p>If you want to work with sensitive data on textboxes is always good practice to set PasswordChar to (*).</p>
            <table class="clsSSWTableCode">
                <tr>
                    <td>Change from:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.txtPassword.PasswordChar = '#';<br />
                        to:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;this.txtPassword.PasswordChar = '<span
                            style="background-color: #FFFF00">*</span>';</td>
                </tr>
            </table>
            <br />
            You can also do this using VS IDE designer
            <dl class="image">
                <dt>
                    <img src="Images/Tutorial/ChangePasswordChar.gif" alt="Change the password char using VS IDE designer"
                        border="0" /></dt>
                <dd>Figure: Change the password char using VS IDE designer</dd>
            </dl>
            <dl class="badImage">
                <dt>
                    <img src="Images/Tutorial/BadPasswordChar.png" alt="Password character is # (bad)"
                        border="0" /></dt>
                <dd>Figure: Bad - Password character is "#"</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/Tutorial/GoodPasswordChar.gif" alt="Password character is * (good)"
                        border="0" /></dt>
                <dd>Figure: Good - Password character is "*"</dd>
            </dl>
            <p>
                See rule <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#PasswordChar">Do you set PasswordChar to (*) on a TextBox on sensitive data?</a>.
            </p>
        </li>
    </ol>
</asp:Content>
