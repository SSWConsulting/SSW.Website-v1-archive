<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.Website.WebUI.Raven" Title="AngularHackDay Logo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>AngularHackDay Logo</h1>
</asp:Content>

<asp:content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="container">

        <p>If you have any queries please <a href="http://www.ssw.com.au/ssw/company/AboutUs.aspx#ContactUs">contact SSW.</a></p>

        <h2>Download</h2>



    <div class="left" style="margin-right:40px;">
        <h3>Color</h3>
        <table class="normal" style="text-align:center;">
            <tbody>
                <tr>
                    <td colspan="2" style="background-color:#fff;"><img src="Images/AngularHackDay_preview.png" alt="AIHackday Logo"></td>
                </tr>
                <tr>
                    <th colspan="2">Download</th>
                </tr>
                <tr>
                    <td><a class="red done btn" href="Downloads/AngularHackDay.png">PNG</a></td>
                    <td><a class="red done btn" href="Downloads/AngularHackday.eps">EPS</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="left" style="margin-right:40px;">
        <h3>B&W</h3>
        <table class="normal" style="text-align:center;">
            <tbody>
                <tr>
                    <td colspan="2" style="background-color:#fff;"><img src="Images/AngularHackday_BW_preview.png" alt="AIHackday Logo"></td>
                </tr>
                <tr>
                    <th colspan="2">Download</th>
                </tr>
                <tr>
                    <td><a class="red done btn" href="Downloads/AngularHackDay_BW.png">PNG</a></td>
                    <td><a class="red done btn" href="Downloads/AngularHackday_BW.eps">EPS</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    </div>
</asp:content>

