<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW How to FTP with IExplorer"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<table width="100%" cellpadding="0">
              <tr bgcolor="#ff0033"> 
                <td>.</td>
              </tr>
              <tr bgcolor="#cccccc"> 
                
    <td><b>SSW FTP</b></td>
              </tr>
            </table>
            
<p>We have a Public 
  Folder on our web-server that is created because we needed a place to upload 
  and download large files that are too big to email. Just 
  think of it as a folder on the Internet that has a URL.<br>
</p>
<table width="100%" cellpadding="0">
  <tr bgcolor="#ff0033"> 
    <td>.</td>
  </tr>
  <tr bgcolor="#cccccc"> 
    <td><b>Uploading 
      files</b></td>
  </tr>
</table>
<p>You 
  have to use FTP to upload files to the SSW Web Server. You can do this a number 
  of ways.<br>
  Either using:</p>
<ol>
  <li> An FTP client 
    - This is a stand alone program where you put in the server information and 
    it will connect to it and allow you to upload and download files. An example 
    is FTPSync.</li>
  <li> Using Internet 
    Explorer (IE) - you can also use IE to upload and download files. You still 
    need to enter in server details like user name and password but you do not 
    <!--SSW Code Auditor - Ignore next line(HTML)-->
    require an ftp program. You enter this in the URL: &quot;<a href="ftp://PublicFolders@61.8.3.146/">ftp://PublicFolders@61.8.3.146/</a>&quot;</li>
</ol>
      <p>Your user 
        name and password are:<br>
        <b>User Name:</b> PublicFolders<br>
        <b>Password:</b> ****</p>
<p>If you chose to 
  use IE to upload/manage files on this space, uploading or downloading a file 
  is a simple as dragging and dropping the files to this space. You can do anything 
  that you can as if it was a folder on your computer.<br>
</p>
<table width="100%" cellpadding="0">
  <tr bgcolor="#ff0033"> 
    <td>.</td>
  </tr>
  <tr bgcolor="#cccccc"> 
          <td><b>Instructing 
            Clients to Download files</b></td>
  </tr>
</table>
      <table width="50%" cellpadding="5" align="right" bordercolor="#ff0000" border="2" cellspacing="2" height="136">
        <tr bgcolor="#ff0000"> 
          <td bgcolor="#cccccc" bordercolor="#ffffff" height="222"> 
            <p align="left">Dear 
              xxxx<br>
              <br>
              Your file is here (specific URL)<br>
              <br>
              Please move (not copy) your files from here. We ask you to move 
              them as a matter of keeping our public folders tidy.<br>
              Your user name and password are:<br>
              <b>User Name:</b> PublicFolders<br>
              <b>Password:</b> **** <br>
            <p align="left"><br>
             
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br>
              Database Developer<br>
              </p>
            </td>
        </tr>
      </table>
      <p><br>
        You can use the Public Folders to put files there for clients to get. 
        You then tell the client the specific URL to the file/folders you want 
        them to download.</p>
      <p>An example 
        of this is.</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><br>
      </p>
<table width="100%" cellpadding="0">
  <tr bgcolor="#ff0033"> 
    <td>.</td>
  </tr>
  <tr bgcolor="#cccccc"> 
          <td><b>Instructing 
            Clients to Upload files</b></td>
  </tr>
</table>
      <table width="50%" cellpadding="5" align="right" bordercolor="#ff0000" border="2" cellspacing="2" height="136">
        <tr bgcolor="#ff0000"> 
          <td bgcolor="#cccccc" bordercolor="#ffffff">
            <p align="left">Dear 
              xxx</p>
            <p>You 
              can upload a file to our server using Internet Explorer by entering 
              this into the address box at the top of Internet explorer: ftp://PublicFolders@www.ssw.com.au/</p>
            <p>Once 
              prompted, type in the password: *****</p>
            <p>Simply 
              drag and drop your files into the IE window.</p>
            <p>Once 
              you have uploaded your files, please contact Daniel 
              to let me know that the files have been sent. I will get them and 
              remove your files from this area ASAP.</p>
            <p>Regards</p>
            <p>Mark 
              Evans<br>
              Administration Manager<br>
              www.ssw.com.au</p>
            </td>
        </tr>
      </table>
      <p><br>
        Sending email to clients.</p>
<p>Once you have put 
  the file into this space, you will need to tell the client what the URL is to 
  there files or what username and password is so they can upload files to the 
  SSW Web Server. </p>
      <p>An example of this 
        is.</p>
		</asp:content>