<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.Website.WebUI.Raven" Title="FireBootCamp Logo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>FireBootCamp Logo</h1>
</asp:Content>

<asp:content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <p>If you have any queries please <a href="http://www.ssw.com.au/ssw/company/AboutUs.aspx#ContactUs">contact SSW.</a></p>

    <h2>Download</h2>

    <div class="row">
        <div class="col-sm-3">
            <h3>Dev SuperPowers Tour</h3>
            <table class="normal" style="text-align:center;">
                <tbody>
                    <tr>
                        <td colspan="2" style="background-color:#666;"><img class="img-responsive" src="Images/FireBootCamp_DSP_preview.png" alt="FireBootCamp Dev SuperPower Tour Logo"></td>
                    </tr>
                    <tr>
                        <th colspan="2">Download</th>
                    </tr>
                    <tr>
                        <td><a class="red done btn" href="Downloads/FireBootCamp_DSP_BW.png">PNG</a></td>
                        <td><a class="red done btn" href="Downloads/FireBootCamp_DSP_BW.eps">EPS</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-sm-3">
            <h3>Hands On Workshop</h3>
            <table class="normal" style="text-align:center;">
                <tbody>
                    <tr>
                        <td colspan="2" style="background-color:#3a4b49;"><img class="img-responsive" src="Images/FireBootCamp_HW_preview.png" alt="FireBootCamp Hands-On Workshop Logo"></td>
                    </tr>
                    <tr>
                        <th colspan="2">Download</th>
                    </tr>
                    <tr>
                        <td><a class="red done btn" href="Downloads/FireBootCamp_HW_BW.png">PNG</a></td>
                        <td><a class="red done btn" href="Downloads/FireBootCamp_HW_BW.eps">EPS</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h3>FireBootCamp Banners</h3>
        </div>
        <div class="col-sm-6">
            <img class="img-responsive" src="/ssw/Images/SuperPower-Banner-Master-Angular.jpg" alt="Dev SuperPowers Angular"><br />
        </div>
        <div class="col-sm-6">
            <img class="img-responsive" src="/ssw/Images/SuperPower-Banner-Master-NetCore.jpg" alt="Dev SuperPowers Angular"><br />
        </div>

        <div class="col-sm-6">
            <img class="img-responsive" src="/ssw/Images/SuperPower-Banner-Master-Azure.jpg" alt="Dev SuperPowers Angular"><br />
        </div>
        <div class="col-sm-6">
            <img class="img-responsive" src="/ssw/Images/SuperPower-Banner-Master-Ionic.jpg" alt="Dev SuperPowers Angular"><br />
        </div>
        </div>
</asp:content>

