'---------------------------------------------- 
' Copyright 2003 Superior Software for Windows 
'---------------------------------------------- 
' www.ssw.com.au All Rights Reserved.
' VERSION AUTHOR  DATE 		    COMMENT  
' 1.0     DDK     09/07/2003    This document is for comments about the setup and configuration of this project.
' 1.1     DDK     22/09/2003    Added Information on Shim
' 
'---------------------------------------------- 

'---------------------------------------------- 
Developers working on this project
'---------------------------------------------- 

'---------------------------------------------- 
1.  Use of the COM Shim & Initial Debugging Setup
'---------------------------------------------- 
To debug this product using the COM shim, you need to do some things for initial setup
	a) Register the Shim dll in your Project bin directory 
	b) In Outlook, go to Tools->Options->COM Addins and point to the Shim DLL in your bin directory
	c) Make the Settings.Config file writeable, otherwise the application will not start and fail silently
	d) In Project Properties, set the debugger to run Outlook.exe as an external program on startup. 

1) PIA from Microsoft – 
	Extract \\funnelweb\q\SetupMS\SetupProgram\MSOfficeXPPIA 
	Open Visual studio command prompt 
	Run register.bat 
	PIA files are now in the GAC – installation folder can be removed 
-------------------------------

'---------------------------------------------- 
1.  DLLs in SourceSafe
'---------------------------------------------- 
The following DLLS are not in SourceSafe because it is created each build. 
Otherwise, we get write errors. To get old versions of DLLs. 
zz- SSWRegistration2000.dll 
	SSWRegistration2003.dll

'---------------------------------------------- 
2. Tagged UserProperty on MailItems
'---------------------------------------------- 
If an item has a tagged property of true, then it has been processed by Incident PRO!

'---------------------------------------------- 
3. Strong Names
'---------------------------------------------- 
Incident PRO now has a strong name file in the \bin directory
To use a strong name, associated DLLs have to be strong named as well.

I created a strong name for
- MAPI (aka cdo.dll) 
- Redemption dll 

tlbimp.exe "C:\Program Files\Common Files\System\Mapi\1033\CDO.DLL" /keyfile:SSWIncidentPRO.snk /out:Interop.MAPI.dll /verbose
tlbimp.exe "C:\Program Files\Redemption\Redemption.dll" /keyfile:SSWIncidentPRO.snk /out:Interop.Redemption.dll /verbose

'---------------------------------------------- 
4. If Incident PRO! stops working
'---------------------------------------------- 
 If Incident PRO! stops working, you should check the following
	a) It is not disabled in outlook (Help->About->Disabled Items.
	b) zzCheck that your project is using the correct version of Redemption - otherwise it may be failing without error (this is why we need late binding in the future.)
	c) Rebuild the project.
	d) Check that there are no instances of Word or Outlook sitting in Memory with the Task Manager - kill them if neccessary.
	e) Check HKEY_CLASSES_ROOT\CLSID\{16AA537D-5CC7-4398-B6F7-52AC66AAFF59}\InprocServer32 for the correct file locations - there may be duplicate entries not cleared out by the debugger.

'---------------------------------------------- 
4. Wise Update
'---------------------------------------------- 
Make sure that you update the Wise Update tab (under step 6 in the installation wizard) with the latest version number - otherwise you can never have the most recent version.
	
'---------------------------------------------- 
5. Oddities
'---------------------------------------------- 
	a) To get a datetime value of "None" to show up in Outlook, the date value should be set to #1/1/4501#. Blank string and nothing don't work.

'----------------------------------------------
6. WISE Product Code
'----------------------------------------------

In case you need to create a new setup from scratch, 
use these product codes in WISE so that older versions can be uninstalled
works from version 10 onwards

WISE Product Code - Setup Editor - tables - property
{0D4AD6CB-2DB2-44D6-8239-36C64BADBE67}

WISE Upgrade Code - Setup Editor - tables - property
{9C1A287A-3E6F-47F5-805F-9A0F34E73AA9}

Package Code - Setup Editor - Summary
{25D5F518-538C-4FBD-AB9B-4E85CB0D5E71}