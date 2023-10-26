<%@ Control AutoEventWireup="false" CodeBehind="LivestreamWidget.ascx.cs" Inherits=".LivestreamWidget" %>

<div id="Livestream_Widget" class="collapse">
    <div class="row">
        <div class="col-md-3">
            <img id="livestream_Image" src="/ssw/Images/SSW_NUG_Live.png" style="width: 239px;height: 95px;object-fit: contain;"/>
        </div>
        <div class="col-md-9 text-right">
            <h2 style="color:#333;">
                <span id="livestream_Title" style="font-weight:bold"></span>
            </h2>
            <div style="display:inline-flex;align-items:center">
                <span style="padding-right:.5rem">Subscribe to SSW TV</span>
                <div id="yt-button-container"></div>
            </div>
        </div>
    </div>
    <a data-toggle="collapse" href="#collapsableWidget"><hr class="hr-arrow-style"/></a>
    <div id="collapsableWidget" class="collapse in">
        <div class="row">
            <div class="col-lg-8" id="livestream_Video_Wrap">
                <div id="livestream_Video" style="padding:56.25% 0 0 0;position:relative;">
                </div>
            </div>
            <div class="col-lg-4 hidden" id="livestream_Chat"></div>
            <div class="col-lg-4 hidden text-center" id="livestream_Chat_mobile" style="padding-top:1rem; padding-bottom:2rem;text-align:-webkit-center;text-align: -moz-center;"></div>
        </div>
        <div class="row button-container" style="margin-bottom: 1rem;">
            <div id="app-store" class="col-md-6 col-sm-5" style="padding-bottom:.5rem;">
                <div style="margin-bottom: .5rem;">Download the SSW Rewards app</div>
                <a href='https://apps.apple.com/au/app/ssw-rewards/id1482994853' target="_blank" class="ignore app-store-menu" onMouseOut="hideQRCode('QRCodeApple')" onmouseover="showQRCode('QRCodeApple')">
                    <img alt='Download on the App Store' src='/SSW/Images/App_Store_Badge_US.svg' class="apple-store-badge" style="width:auto; height:40px"/>
                    <span id="QRCodeApple" style="display:none;">
                        <img src="/ssw/Images/QRcode_App_Store.png" alt="SSW Reward App QR Code" width="100" title="SSW Reward App QR Code" height="100" />
                    </span>
                </a>
                <a href='https://play.google.com/store/apps/details?id=com.ssw.consulting&hl=en&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1' target="_blank" class="ignore app-store-menu" onMouseOut="hideQRCode('QRCodeGoogle')" onmouseover="showQRCode('QRCodeGoogle')">
                    <img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' class="google-play-badge" style="width:auto; height:40px"/>
                    <span id="QRCodeGoogle" style="display:none;">
                        <img src="/ssw/Images/QRcode_App_Store.png" alt="SSW Reward App QR Code" width="100" title="SSW Reward App QR Code" height="100" />
                    </span>
                </a>
            </div>
            <div class="col-sm-3" id="livestream_Survey"  style="padding-bottom:1rem;">
                <div style="margin-bottom: .5rem;">How did we do?</div>
                <a id="livestream_Survey_Url" class="red btn rounded-btn" href="/ssw/NETUG/EvaluationSurvey.aspx" name="survey" target="_blank"><i class="fas fa-clipboard-list" style="padding-right:.5rem"></i> Take the Survey</a>
            </div>
            <div class="col-md-3 col-sm-4" id="livestream_GitHub">
                <div style="margin-bottom: .5rem;">Follow along with us</div>
                <a id="livestream_GitHub_Url" class="black btn rounded-btn" name="github" target="_blank"><i class="fab fa-github" style="padding-right:.5rem"></i> See the project on GitHub</a>
            </div>
        </div>
        <div class="row" style="margin-bottom: 1rem;">
            <div class="col-md-6" style="margin-top: .5rem;">
                <div style="padding:.5rem 1rem; background-color: #f0f0f0;min-height:590px;" id ="livestream_About_Talk">
                    <h3 style="font-weight:bold">About the Talk</h3>
                    <div id="livestream_talk_description" class="collapse"></div>
                    <a id="showMore" role="button" class="collapsed" style="margin-top:0.5rem" data-toggle="collapse" href="#livestream_talk_description"></a>
                    <br />
                    <h4 style="font-weight:bold">Follow us on:</h4>
                    <a href='https://www.meetup.com/Sydney-NET-User-Group/' target="_blank" class="ignore large no-top-margin" id="meetup-menu" title="SSW TV on Meetup"><i class="fa fa-meetup"></i></a>
                    <a href='https://www.facebook.com/SSW.page/' target="_blank" class="ignore large no-top-margin" id="facebook-menu" title="SSW on Facebook"><i class="fa fa-facebook"></i></a>
                    <a href='https://au.linkedin.com/company/ssw/' target="_blank" class="ignore large no-top-margin" id="linkedin-menu" title="SSW on LinkedIn"><i class="fa fa-linkedin"></i></a>
                    <a href='https://twitter.com/SSW_TV' target="_blank" class="ignore large no-top-margin" id="twitter-menu" title="SSW TV on Twitter"><i class="fa fa-twitter"></i></a>
                    <a href='https://www.youtube.com/channel/UCBFgwtV9lIIhvoNh0xoQ7Pg' target="_blank" class="ignore large no-top-margin" id="youtube-menu" title="SSW TV on Youtube"><i class="fa fa-youtube"></i></a>
                    <a href='https://www.instagram.com/ssw_tv/?hl=en' target="_blank" class="ignore large no-top-margin" id="instagram-menu" title="SSW TV on Instagram"><i class="fa fa-instagram"></i></a>
                    <a href='https://github.com/SSWConsulting' target="_blank" class="ignore large no-top-margin" id="github-menu" title="SSW on GitHub"><i class="fa fa-github""></i></a>
                    <br />
                    <h3 style="font-weight:bold; margin-top:2.5rem">Get notified about news & future events</h3>
                    <div class="row">
                        <div class="col-md-8">
                            <asp:TextBox ID="newsletterEmailTextBox" runat="Server" value="Your Email" onblur="if (value == '') {value = 'Your Email'}"
                                onfocus="if (value == 'Your Email') {value =''}" width="100%" Height="40px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="newsletterEmailTextBox"
                                ValidationExpression="^[\w-+\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="You did not enter a valid email address"
                                Font-Size="X-Small" ForeColor="Red">
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-4"><a id="newsletterSignUpButton" href="#" class="red btn rounded-btn"><i class="fas fa-envelope" style="padding-right:.5rem"></i>Subscribe</a></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin-top: .5rem;">
                <div style="padding:.5rem 1rem; background-color: #f0f0f0;height:590px;">
                    <h3 style="font-weight:bold">About the Speaker</h3>
                    <div id="livestream_About_Speaker" style="height:510px;overflow-y:auto;overflow-x:hidden"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $("#newsletterSignUpButton").click(function (e) {
            e.preventDefault();

            // ValidatorValidate()
            if (Page_ClientValidate()) {
                var email = $("#<%=newsletterEmailTextBox.ClientID %>").val();
                email = email.replace(/\+/gi, "%2B");
                window.location = "http://ssw.com.au/ssw/Shop/ClientDetail.aspx?Email=" + email + "&Tag=FNEWS";
            }
        });
    });
    function showQRCode(id) {
        document.getElementById(id).style.display = 'block';
    }
    function hideQRCode(id) {
        document.getElementById(id).style.display = 'none';
    }

    var $window = $(window);
    var $videoWrap = $('#livestream_Video_Wrap');
    var $video = $('#livestream_Video');
    var videoHeight = 422;

    $window.on('scroll', function () {
        var windowScrollTop = $window.scrollTop();
        var videoBottom = videoHeight + $videoWrap.offset().top;

        if (windowScrollTop > videoBottom) {
            $videoWrap.height(videoHeight);
            $video.addClass('thumbnail-video');
        } else {
            $videoWrap.height('auto');
            $video.removeClass('thumbnail-video');
        }
    });
</script>
<script src="https://apis.google.com/js/platform.js"></script>
