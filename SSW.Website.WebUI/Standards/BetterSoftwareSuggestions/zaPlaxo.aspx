<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    title="Plaxo Suggestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

<p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
     <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b');return true;"  
onmouseout="javascript:clearStatus(); return true;" > Let us know
 </a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#ContactDetails">Country and phone number international format validation</a></li>
            
        </ol>
    <br />
    </div>
    <div id="mainContent">
       <ol> 
            <li> 
                <h2><a name="ContactDetails"></a>
                     Country and phone number international format validation</h2>               
                    
                        <p>
                          There should be a validation to data entry to include the Country you are from and the international 
                            format for your phone number, Eg. +1 647..., in the card contact's information when requesting an update.
                          </p>                                 
                                
                                   <%-- <img alt="" src="images/VirtualPC.jpg" style="height: 525px; width: 749px" />                                    
                                    
                          <p>  <b>Figure: Microsoft VPC Download Page </b> </p>--%>
             </li> 
          </ol>                     
    </div>
                    <h2>
                        Acknowledgments </h2>                        
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> <br />
        
    </p>




</asp:Content>
