<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Diagnostics - Instructions" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <h2>How to update versions to database</h2>
    <p>
    </p>
        <ol>
            <li>
                Google the latest version like this “How to determine which versions of the <font color ="red">*Product Name*</font>” (For example Net Framework 2.0)<br />
                There is a KB
                <asp:HyperLink id="lnkMSSupport" 
                                NavigateUrl="http://support.microsoft.com/kb/318785"
                                Text=".Net Framework Versions"
                                runat="server"/>  and the version list as:
            
                <table cellspacing="1" class="table" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none" frame="void">
                <tr>
                    <td style="width: 100px"><b>1.0</b></td>
                    <td style="width: 500px">Original RTM<br>.NET Framework Service Pack 1<br>.NET Framework Service Pack 2<br>.NET Framework Service Pack 3</td>
                    <td style="width: 150px">1.0.3705.0<br>1.0.3705.209<br>1.0.3705.288<br>1.0.3705.6018</td>
                </tr>
                <tr>
                    <td style="width: 100px"><b>1.1</b></td>
                    <td style="width: 500px">Original RTM<br>.NET Framework Service Pack 1<br>.NET Framework included with Windows Server 2003 32-bit Service Pack 1</td>
                    <td style="width: 150px">1.1.4322.573<br>1.1.4322.2032 <br>1.1.4322.2300</td>
                </tr>
                <tr>
                    <td style="width: 100px"><b>2.0</b></td>
                    <td style="width: 500px">Original RTM</td><td style="width: 150px">2.0.50727.42</td>
                </tr>
                </table>
                    Therefore, the version in our database should have 4 fields. 
            </li>
            <li>
                After new version being detected, we will receive an email about this new version. Google this version. If this version is downloadable then go to 3) else go to 4). If the search is not available then leave this email.
            </li>
            <li>
                Update the download URL to database and set the version as the latest.
            </li>
            <li>
                This version might comes from the auto update. Set the update URL to the auto update website and set the latest version.
            </li>
        </ol>
    <p>
    </p>
</asp:Content>
