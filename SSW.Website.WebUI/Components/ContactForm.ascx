<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="Components.ContactForm" %>
<script type="text/javascript" src="/ssw/scripts/angular-1.5.5/angular.min.js"></script>
<div class="get-started-form" ng-app="SSW" ng-controller="ContactFormController">
    <ng-form name="contactForm" class="form-horizontal" >
        <h2><a name="getstarted"></a>Get your project started!</h2>
        <div class="form-group" id="contactFormAlert" style="display:none">
                <div class="alert alert-success" role="alert">An email has been sent to the SSW Sales team and someone will be in contact with you soon</div>
         </div>
        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="contactFormName" class="control-label">Full Name *</label>
                <input id="contactFormName" type="text" class="form-control" ng-model="name" required placeholder="Full Name *"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="contactFormEmail" class="control-label">Email *</label>
                <input id="contactFormEmail" type="email" class="form-control" ng-model="email" required placeholder="Email *"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="contactFormPhone" class="control-label">Phone</label>
                <input id="contactFormPhone" type="text" class="form-control" ng-model="phone" placeholder="Phone"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper list">
                <label for="contactFormCountry" class="control-label">Location</label>
                <select class="form-control"  ng-model="country" required id="contactFormCountry">
                  <option value="" disabled hidden selected>Location</option>
                  <option value="Australia">Australia</option>
                  <option value="China">China</option>
                  <option value="Europe">Europe</option>
                  <option value="SouthAmerica">South America</option>
                  <option value="USA">USA</option>
                  <option value="Other">Other</option>
                </select>
            </div>
        </div>
        
        <div class="form-group"  id="contactFormState" ng-show="country=== 'Australia'">
            
            <div class="field-wrapper list">
                <label for="contactFormState" class="control-label">State</label>
                <select class="form-control" ng-model="state" id="StateText">
                    <option value="" disabled hidden selected>State</option>
                  <option value="100000000">NSW</option>
                  <option value="100000001">VIC</option>
                  <option value="100000002">QLD</option>
                  <option value="100000003">ACT</option>
                  <option value="100000004">SA</option>
                  <option value="100000005">WA</option>
                  <option value="100000006">NT</option>
                  <option value="100000007">TAS</option>
                  <option value="100000008">Other</option>
                  
                </select>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="contactFormCompanyName" class="control-label">Company</label>
                <input id="contactFormCompanyName" type="text" class="form-control" ng-model="company" placeholder="Company"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="contactFormNote" class="control-label">Message</label>
                 <textarea id="contactFormNote" class="form-control" ng-model="note" placeholder="How can we help you?" rows="4" val maxlength="2000"></textarea>
            </div>
            <small>Maximum 2000 characters.</small>
        </div>

        <div class="form-group">
            <div class="recaptcha-contact">
                <div class="g-recaptcha" data-sitekey="<%=RecaptchaPublicKey%>"></div>
            </div>
        </div>

        <div class="form-group">
            <button id="contactFormSubmit" class="btn red done" ng-click="submit($event)" ng-disabled="disabled">Submit</button>
        </div>
    </ng-form>
</div>

<script type="text/javascript">

    var app = angular.module('SSW', []);
    app.controller("ContactFormController", function ($scope,$http) {

        $scope.name;
        $scope.email;
        $scope.phone;
        $scope.company;
        $scope.note;
        $scope.country;
        $scope.state;

        $scope.disabled = false;

        $scope.submit = function ($event) {
          
            var subject = "Consulting enquiry - " + $scope.company + " - " + $scope.name;
           
            var body = "Consulting enquiry from "  + document.URL + "<br/>";
            body = body + "Company: " + $scope.company + "<br/>";
            body = body + "Country: " + $scope.country + "<br/>";
            if ($scope.state == null) {
                $scope.state = 100000008;
            } else {
                body = body + "State:  " + stateText + "<br/>";
            }
            body = body + "Name:  " + $scope.name + "<br/>";
            body = body + "Phone:   " + $scope.phone + "<br/>";
            body = body + "Email:   " + $scope.email + "<br/>";
            body = body + "Note:    " + $scope.note + "<br/><br/>";
        
            if ($scope.contactForm.$valid && grecaptcha.getResponse()!='') {

                $scope.disabled = true;

                //create a lead in CRM
                $http.post("/ssw/api/crm/createlead", {
                    Name: $scope.name,
                    Topic: subject,
                    Company: $scope.company,
                    Note: $scope.note,
                    Country: $scope.country,
                    State: $scope.state,
                    Email: $scope.email,
                    Phone: $scope.phone,
                    Recaptcha: grecaptcha.getResponse(),
                    SourceWebPageURL: document.URL,
                    EmailSubject: subject,
                    EmailBody: body + "The associated CRM lead is "
                }).then(function (response) {

                    $("#contactFormAlert").fadeIn(500, function () {
                        $("#contactFormAlert").delay(2000).fadeOut(500, function () {
                        });
                    });

                    $scope.clearForm();
                    $scope.disabled = false;

                    //redirect to thank you page
                    window.location = "/ssw/Thankyou.aspx";
            
                }, function (response) {
                        $scope.disabled = false;
                        window.location = "/ssw/Thankyou.aspx";
                                      
                });    
               
            }

            $event.preventDefault();

        }
  
        $scope.clearForm = function()
        {
            $scope.name = null;
            $scope.email = null;
            $scope.phone = null;
            $scope.company = null;
            $scope.note = null;
            $scope.country = null;
            $scope.state = null;
        }
     


    // Adaptive placeholder script

    $(document).ready(function () {
        var onClass = "on";
        var showClass = "show";

        $("input, select, textarea")
          .bind("showhidelabel", function () {
              var label = $(this).prev("label");

              if (this.value !== "")
                  label.addClass(showClass);

              else
                  label.removeClass(showClass);
          })
          .on("keyup", function () {
              $(this).trigger("showhidelabel");
          })
          .on("focus", function () {
              $(this).prev("label").addClass(onClass);
          })
          .on("blur", function () {
              $(this).prev("label").removeClass(onClass);
          })
          .trigger("showhidelabel");

        $("select, input, textarea")
          .on("change", function () {
              var $this = $(this);

              if ($this.val() == "")
                  $this.addClass("watermark");

              else
                  $this.removeClass("watermark");

              $this.trigger("showhidelabel");
          })
          .change();
    });

    // End of adaptive placeholder script



    var stateText = "";
    $('#StateText').on('change', function () {
        stateText = $("#StateText option:selected").text();
       // console.log(stateText);
    });

    });

</script>



