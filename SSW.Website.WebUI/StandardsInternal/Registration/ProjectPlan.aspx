<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW Registration Web Service"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

				
    To help us built a better product please send your 
    <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','sswregistration',this)"
               onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer"  category="info" process='true' >696e666f407373772e636f6d2e6175</a>
    <br />
    <br />
    <h2>SSW
        Registration Web Service</h2>    <br />
    <table class="clsSSWTable" cellspacing="2" cols="2" cellpadding="2" width="80%" summary="Prepared By">
        <tbody>
            <tr>
                <td width="32%">
                    Prepared By</td>
                
      <td width="68%"> Daniel Hyles</td>
            </tr>
            <tr>
                <td width="32%">
                    Subject</td>
                <td width="68%">
                    SSW Registration Project Plan</td>
            </tr>
            <tr>
                <td width="32%">
                    Date</td>
                <td width="68%">
                    15/11/2002</td>
            </tr>
        </tbody>
    </table>
    <br />
    <h2>Versions</h2>    
<table class="clsSSWTable" cellspacing="2" cols="4" cellpadding="2" width="80%" summary="Prepared By">
  <br />
  <tbody>
    <tr> 
      <td width="11%"> Version</td>
      <td width="8%"> Date</td>
      <td width="15%"> Updated</td>
      <td width="66%"> Changes</td>
    </tr>
    <tr> 
      <td width="11%"> 1.0</td>
      <td width="8%"> 15/11/2002</td>
      <td width="15%"> RM</td>
      <td width="66%"> First Release</td>
    </tr>
    <tr> 
      <td width="11%"> 1.1</td>
      <td width="8%"> 19/11/2002</td>
      <td width="15%"> RM</td>
      <td width="66%"> Project Plan - High Level</td>
    </tr>
    <tr> 
      <td width="11%"> 1.2</td>
      <td width="8%"> 21/11/2002</td>
      <td width="15%"> RM</td>
      <td width="66%"> Project Plan - Added time estimates</td>
    </tr>
    <tr> 
      <td> 1.3</td>
      <td> 4/12/2002</td>
      <td> RM</td>
      <td> Project Plan - Added new features and adjusted some time estimates</td>
    </tr>
    <tr> 
      <td width="11%"> 2.86</td>
      <td width="8%"> 09/01/2003</td>
      <td width="15%"> DH</td>
      <td width="66%"> Project Plan - Fix bugs. Implement webservice for existing 
        users </td>
    </tr>
  </tbody>
</table>
    <br />
    <h2>Project
        Plan</h2>    <br />
    <table class="clsSSWTable" cellspacing="2" cols="2" cellpadding="2" width="43%" summary="Prepared By">
        <br />
        <tbody>
            <tr>
                <td width="80%">
                    <b>Task</b> 
                </td>
                <td align="middle" width="10%">
                    <b>Time Estimate (hrs)</b>&nbsp;</td>
                <td align="middle" width="10%">
                    <b>Status</b> 
                </td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                </td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <b>Release 1</b> - <strong>Collecting Client Data</strong></td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                </td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    Create Screen Mockups 
                </td>
                <td align="middle" width="10%">
                    32</td>
                <td align="middle" width="10%">
                    a 
                </td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    Add Data Collection code for new/all fields 
                </td>
                <td align="middle" width="10%">
                    1</td>
                <td align="middle" width="10%">
                    a 
                </td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Create HTML/XML form that includes all registration input to attach to emails 
                    </p>
                </td>
                <td align="middle" width="10%">
                    16</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Add Validation to form fields 
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Add Pc Id generator code using old VB code from old version. 
                    </p>
                </td>
                <td align="middle" width="10%">
                    8</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Convert old VB Unlocking function to VB.NET to register product 
                        <br />
                        NOTE : - this would involve altering the registration process to accept uses and time
                        trial periods.<br />
                    </p>
                </td>
                <td align="middle" width="10%">
                    20</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Encrypt xml file in the products working folder. 
                    </p>
                </td>
                <td align="middle" width="10%">
                    8</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Add Live Update to Privacy policy 
                    </p>
                </td>
                <td align="middle" width="10%">
                    1</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Testing + Bug Fixes 
                    </p>
                </td>
                <td align="middle" width="10%">
                    6</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <b>Release 2</b> - <strong>Product Unlocking Application</strong> 
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Create winform application to manually create unlock keys for clients 
                    </p>
                </td>
                <td align="middle" width="10%">
                    8</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Convert old VB Unlocking function to VB.NET&nbsp; (code re-use) 
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    a</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p>
                        Everytime they get their product unlocked please add a record into ClientDiary 
                        <br />
                        Include the productID and details in the notes field 
                        <br />
                        - if xml file attached to email, ssw user saves file then the unlocker will parse
                        the file and add record to SSWData2000<br />
                        - if faxed then manual entry needs to be done 
                    </p>
                </td>
                <td align="middle" width="10%">
                    6</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <b>Release 3</b> - <strong>Web Service for auto registering</strong> 
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Create web service to check for existing clients, populate registration form,
                        or if new client, write to client table (SSWData2000) on Hippo
                    </p>
                </td>
                <td align="middle" width="10%">
                    12</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p>
                       Re-activate pay by web method
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>            
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p>
                        Add a ClientDiaryCategory record<br />
                        CategoryID "DOWNREG"<br />
                        CategoryName "Download Registered" 
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>            
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <b>Release 4</b> - <strong>Enhance Security</strong> 
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        In release 1 a encryoted XML file was used to store all registration values. This
                        release should look at implementing other factors such as hidden ini files and registry
                        entries. 
                    </p>
                </td>
                <td align="middle" width="10%">
                    16</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <b>Release 5</b> - <strong>E-Commerce transaction</strong> 
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        E-Commerce Setup with ANZ 
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p>
                        E-Commerce Setup ASPX pages 
                    </p>
                </td>
                <td align="middle" width="10%">
                    16</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <!--<tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Preventative code needs to be added to the authentication to stop anyone from making
                        there username, password and serial key publicly available. 
                    </p>
                </td>
                <td align="middle" width="10%">
                </td>
                <td align="middle" width="10%">
                    </td>
            </tr>-->
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        Create email parser to scan a particular inbox for new registrations and then process
                        it automatically by adding it to clients table and processing credit card details
                        through E-Commerce 
                    </p>
                </td>
                <td align="middle" width="10%">
                    ?</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <p dir="ltr" style="MARGIN-RIGHT: 0px">
                        preventative code to monitor how many times a particular user has registered a product
                        (in case a heacked key generator gets released on the web).&nbsp; it will be capable
                        of&nbsp; rejecting registrations&nbsp;for a particylar&nbsp;user via the web service
                        registrations 
                    </p>
                </td>
                <td align="middle" width="10%">
                    4</td>
                <td align="middle" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="90%" bgcolor="#ffffff">
                    <strong>Total Time Estimate</strong></td>
                <td align="middle" width="10%">
                    164 hours</td>
                <td align="middle" width="10%">
                    20.5 days</td>
            </tr>
        </tbody>
    </table>
    <br />
		</asp:content>