<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.Website.WebUI.Raven" Title="SSW TV Logo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>SSW TV Logo</h1>
</asp:Content>

<asp:content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <p>If you have any queries please <a href="http://www.ssw.com.au/ssw/company/AboutUs.aspx#ContactUs">contact SSW.</a></p>

    <h2>Download</h2>

    <div class="left" style="margin-right:40px;">
        <h3>Color</h3>
        <table class="normal" style="text-align:center;">
            <tbody>
                <tr>
                    <td colspan="2" style="background-color:#fff;"><img src="Images/SSWTV_preview.png" alt="SSW TV Logo"></td>
                </tr>
                <tr>
                    <th colspan="2">Download</th>
                </tr>
                <tr>
                    <td><a class="red done btn" href="Downloads/SSWTV_Logo.png">PNG</a></td>
                    <td><a class="red done btn" href="Downloads/SSWTV_Logo.eps">EPS</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="left" style="margin-right:40px;">
        <h3>Black & White</h3>
        <table class="normal" style="text-align:center;">
            <tbody>
                <tr>
                    <td colspan="2" style="background-color:#fff;"><img src="Images/SSWTVBW_preview.png" alt="SSW TV Logo B&W"></td>
                </tr>
                <tr>
                    <th colspan="2">Download</th>
                </tr>
                <tr>
                    <td><a class="red done btn" href="Downloads/SSWTVBW_Logo.png">PNG</a></td>
                    <td><a class="red done btn" href="Downloads/SSWTVBW_Logo.eps">EPS</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="left" style="margin-right:40px;">
        <h3>Tagline</h3>
        <table class="normal" style="text-align:center;">
            <tbody>
                <tr>
                    <td colspan="2" style="background-color:#fff;"><img src="Images/SSWTV-tagline_preview.png" alt="SSW TV Logo"></td>
                </tr>
                <tr>
                    <th colspan="2">Download</th>
                </tr>
                <tr>
                    <td><a class="red done btn" href="Downloads/SSWTV-tagline_Logo.png">PNG</a></td>
                    <td><a class="red done btn" href="Downloads/SSWTV-tagline_Logo.eps">EPS</a></td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:content>
