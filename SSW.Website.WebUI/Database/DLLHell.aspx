<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubPage.master" Title="DLL Hell"  %>

<asp:content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

				
	<p>
        <h2>What is DLL Hell?</h2>
      <p>Most of you 
        have probably experienced DLL Hell, though you may not have heard of it 
        described as such. If not, you've probably heard horror stories from friends 
        or colleagues.</p>
      <p>The story 
        goes something like this: </p>
      <p>Ring ring, 
        ring ring...<br>
       </p>
      <p>&quot;Good 
        afternoon, SSW, Cameron speaking. How can I help?&quot;<br>
        &quot;Uhm, 
        your program doesn't work on my system anymore.&quot;<br>
        &quot;What seems to be the problem?&quot;<br>
        &quot;I don't know - it was working yesterday. There's no error message 
        or anything - it just doesn't work.&quot; </p>
      <p>Congratulations. 
        You've just become another victim of DLL Hell.</p>
      <p>
      <h2>What happened?</h2>
            <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="" align="right" style="{width:40%;}">
	<tr>
		<td>
			<b>In a Word
			</b>
		</td>
     </tr>
        <tr>
        	<td>"All it takes is a single DLL, VBX or OCX to be missing, or present in 
            	an older version... for an application to fail."
            </td>
        </tr>
    </tr>
    </tr>
    </table>
        

      <p>Most probably, 
        another program installed an older DLL, VBX or ActiveX file on their system. 
        OR maybe a newer, but incompatible version. OR a conflict due to an incompatible 
        DLL already loaded in memory. OR the PATH environment setting changed. 
        OR the file properly registered in the registry? OR a required file is 
        missing? </p>
      <p>Confused? 
        So were we. As you can see, you can literally spend HOURS trying to figure 
        out what is wrong with a customers machine, and why their applications 
        will no longer run. </p>
      
     <h2>Background</h2>
      <p>Lets take 
        a step back. In the old days, every application was self-contained. A 
        program would (generally) consist of a single executable file. One thing 
        was certain - the executables that accompanied a particular application 
        could be used only by that application. Other products would NOT interfere 
        with yours. </p>
      <h2>The Change</h2>
        <p>However, 
        the Windows operating environment took advantage of a capability called 
        dynamic linking to allow code modules to be shared by applications. The 
        most important demonstration of the use of this capability is Windows 
        itself - the code modules that contain the functions that make Windows 
        work (the Windows API), are shared by all Windows applications. A code 
        module that can be shared in this way is called a dynamic link library 
        and normally has the extension .DLL. </p>
     

<h2>What Happens?</h2>
       <p>It is not unusual for users to reinstall software - either during a system upgrade 
        or to change configurations. In many cases users would install software 
        that included an older version of a dll ie. commdlg.dll on a system that 
        already contained a newer version. This would cause the more recently 
        installed version to replace the newer version. As soon the user attempted 
        to run the program that required the newer version, problems would occur 
        ranging from operational difficulties to general protection faults. </p>
      <p>The component-solution 
        framework for programming has had one serious side effect concerning the 
        distribution of Visual Basic applications. Now instead of a few DLLs that 
        are shared by several applications, there are hundreds of DLLs, VBXs and 
        OCXs that may be shared by literally thousands of applications. And all 
        it takes is a single DLL, VBX or OCX to be missing, or present in an older 
        version (or even an incompatible newer version), for an application to 
        fail. A poorly designed installation program, user error, registration 
        error or change in the user's PATH environment variable are a few of the 
        ways in which this problem can occur. </p>
      
  <h2>The Solution</h2>
      <p>There are 
        two possible ways of finding your way out of DLL Hell:</p>
      <ul>
        <li>Using 
          a browser-based (Thin-Client) solution. </li>
      </ul>
      <p>This approach 
        means you only have to worry about one machine. Solve it once and you've 
        solved it for everyone.</p>
      <ul>
        <li>.NET (I guess Microsoft heard these problems loud and clear) </li>
      </ul>
      <p> .NET Frameworks 
        XCOPY deployment solves the registration problem associated with COM. 
        Taking full advantage of some of these features will require modifying 
        existing COM components, but we believe that it will save a lot of heart-ache. 
       </p>
      <p>Note: Microsoft are not retiring COM. They're making COM much easier and more productive, 
        at the same time enabling a totally new kind of softwareWeb services.</p>

		</asp:content>