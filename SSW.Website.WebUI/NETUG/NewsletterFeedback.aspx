<%@ Page Title="SSW - Give Feedback" Language="C#" MasterPageFile="~/Masters/RavenSubpage.Master" AutoEventWireup="true" CodeBehind="NewsletterFeedback.aspx.cs" Inherits="NETUG.Unsubscribe" Async="true" %>


<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="NewsletterFeedback.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8"/>
    <meta name="description" content="Unsubscribe from SSW Newsletter"/>
    <meta name="keywords" content="SSW,Newsletter,.NET,Unsubscribe,UnsubscribeNewsletter"/>
</asp:Content>


<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Feedback on Newsletters</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <script type="text/javascript">

        $(document)
            .ready(function() {
                $('#maincontentFull').prop('hidden', true);
                <%--                 $('#<%= this.btnGiveNewsletterFeedback.ClientID%>').prop('disabled', true);--%>
            });

        function showAlert(msg) {
            $('#emailNotice').hide();

            if (msg === 'success') {
                $('#successAlert').fadeTo(2000, 500);
            }
            if (msg === 'alreadyFeedbacked') {
                $('#alreadyFeedbackedAlert').fadeTo(2000, 500);
            }
            if (msg === 'error') {
                $('#errorAlert').fadeTo(2000, 500);
            }
        }

        function validateInput(textBox, maxLength) {
            if (textBox.value.length > maxLength) {
                //alert("Max characters allowed are " + maxLength);
                textBox.value = textBox.value.substr(0, maxLength);
                $('#textBoxAlert').show();
            } else {
                $('#textBoxAlert').hide();
            }
        }

        function btnStartLoading() {
            $('#load').on('click',
                function() {
                    var $this = $(this);
                    $this.button('loading');
                });
        }

        function btnStopLoading() {

            var loadBtn = document.getElementById("load");

            if (!loadBtn.button('loading')) return;

            loadBtn.on('click',
                function() {
                    var $this = $(this);
                    $this.button('reset');
                });

            loadBtn.disabled = true;
        }

        function changeLoadingState() {
            $('.btn').on('click',
                function() {
                    var $this = $(this);
                    $this.button('loading');
                    setTimeout(function() {
                            $this.button('reset');
                        },
                        2000);
                    $this.button.disabled = true;
                });

        }
    </script>

    <asp:Panel ID="panelNewsletterFeedback" runat="server" DefaultButton="btnGiveNewsletterFeedback">
        <div id="emailNotice" class="highlight">
            Unsubscribe successful: <asp:Label ID="lbEmailAddress" runat="server"></asp:Label>
        </div>

        <div id="successAlert" class="alert alert-success fade in" role="alert" hidden>
            <div id="success">
                <strong>Success!</strong>
                You have successfully given feedback.
            </div>
        </div>
        <div id="alreadyFeedbackedAlert" class="alert alert-success fade in" role="alert" hidden>
            <div id="alreadyFeedbacked">
                <strong>FYI:</strong>
                You have already given feedback.
            </div>
        </div>
        <div id="errorAlert" class="alert alert-danger fade in" role="alert" hidden>
            <div id="error">
                <strong>Error!</strong> <asp:Label runat="server" ID="lbError"></asp:Label>
            </div>
        </div>

        <div class="newsletter-feedback-form">
            <h2>
                <asp:Label ID="lbIntroduction" runat="server" Text="We're sorry to see you go! If you have time, please let us know why."></asp:Label>
            </h2>
            <div id="checkboxList" style="margin-left: 20px;">
                <asp:CheckBoxList ID="cblNewsletterFeedbackReasons" runat="server">
                    <asp:ListItem>The newsletter content is not relevant to me anymore.</asp:ListItem>
                    <asp:ListItem>I receive too many mails.</asp:ListItem>
                    <asp:ListItem>I don&#39;t remember signing up.</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <div id="textAndAlert" class="wrapper">
                <div id="textBox">
                    <asp:TextBox ID="tbFreeTextReasons" CssClass="has-error form-control" runat="server" onKeyUp="javascript:validateInput(this, 200);" Rows="5" Height="164px" TextMode="MultiLine" MaxLength="200" placeholder="Enter reasons here..."></asp:TextBox>
                </div>
                <div id="textBoxAlert" class="alert alert-danger" role="alert" hidden>
                    Maximum allowed characters are 200.
                </div>
            </div>

            <br />

            <div id="newsletterFeedbackBtnAndLabel" class="wrapper">
                <asp:Button ID="btnGiveNewsletterFeedback" runat="server" CssClass="btn red done" OnClick="btnNewsletterFeedback_Click" Text="Give feedback!" ToolTip="Give feedback for the SSW newsletter." />
            </div>

            &nbsp;
        </div>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterScripts" runat="server">
</asp:Content>