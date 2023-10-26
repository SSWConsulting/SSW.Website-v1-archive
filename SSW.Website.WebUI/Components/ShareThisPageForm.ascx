<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShareThisPageForm.ascx.cs" Inherits="Components.ShareThisPageForm" %>
<div class="get-started-form" id="SSWShare"  ng-controller="ShareFormController">
    <ng-form name="shareForm" class="form-horizontal" >
        <h2><a name="getstarted"></a>Share this Page...</h2>
        <div class="form-group" id="shareAlert" style="display:none">
                <div class="alert alert-success" role="alert">An email has been sent to the SSW Sales team and someone will contact you soon about your Superpowers discount code.</div>
         </div>
        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="shareName" class="control-label">Your Full Name *</label>
                <input id="shareName" type="text" class="form-control" ng-model="name" required placeholder="Full Name *"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="shareEmail" class="control-label">Your Email *</label>
                <input id="shareEmail" type="email" class="form-control" ng-model="email" required placeholder="Email *"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="sharePhone" class="control-label">Phone</label>
                <input id="sharePhone" type="text" class="form-control" ng-model="phone" placeholder="Phone"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper list">
                <label for="shareCountry" class="control-label">Location</label>
                <select class="form-control"  ng-model="country" required id="shareCountry">
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
        
        <div class="form-group"  id="shareState" ng-show="country=== 'Australia'">
            
            <div class="field-wrapper list">
                <label for="shareState" class="control-label">State</label>
                <select class="form-control" ng-model="state" id="StateTextShare">
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
                <label for="shareCompanyName" class="control-label">Referred Company</label>
                <input id="shareCompanyName" type="text" class="form-control" ng-model="company" placeholder="Referred Company"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="shareFormName" class="control-label">Referred Full Name *</label>
                <input id="shareFormName" type="text" class="form-control" ng-model="shareName" required placeholder="Referred Full Name *"/>
            </div>
        </div>

        <div class="form-group">
            
            <div class="field-wrapper">
                <label for="shareFormEmail" class="control-label">Referred Email *</label>
                <input id="shareFormEmail" type="email" class="form-control" ng-model="shareEmail" required placeholder="Referred Email *"/>
            </div>
        </div>

        <div class="form-group">
            <div class="recaptcha-share" ></div>
        </div>

        <div class="form-group">
            <button id="shareSubmit" class="btn red done" ng-click="submit($event)" ng-disabled="disabled">Submit</button>
        </div>
    </ng-form>
</div>

<script type="text/javascript">

    var stateTextShare = "";
    $('#StateTextShare').on('change', function () {
        stateTextShare = $("#StateTextShare option:selected").text();
        // console.log(stateText);
    });



    var sswShareApp = angular.module('SSWShare', [])
    sswShareApp.controller("ShareFormController", function ($scope,$http) {

        $scope.name;
        $scope.email;
        $scope.phone;
        $scope.company;
        $scope.country;
        $scope.state;
        $scope.shareName;
        $scope.shareEmail;

        $scope.disabled = false;

        $scope.submit = function ($event) {
          
            var subject = "Share This Page enquiry - " + $scope.company + " - " + $scope.name;
           
            var body = "Share This Page enquiry from "  + document.URL + "<br/>";
            body = body + "Company: " + $scope.company + "<br/>";
            body = body + "Country: " + $scope.country + "<br/>";
            if ($scope.state == null) {
                $scope.state = 100000008;
            } else {
                body = body + "State:  " + stateTextShare + "<br/>";
            }
            body = body + "Name:  " + $scope.shareName + "<br/>";
            body = body + "Phone:   " + $scope.phone + "<br/>";
            body = body + "Email:   " + $scope.shareEmail + "<br/>";
            body = body + "Note:    " + $scope.note + "<br/><br/>";
            body = body + "Referred By:    " + $scope.name + "(" + $scope.email + ")<br/><br/>";

            if ($scope.shareForm.$valid && grecaptcha.getResponse()!='') {

                $scope.disabled = true;

                //create a lead in CRM
                $http.post("/ssw/api/crm/createlead", {
                    Name: $scope.shareName,
                    Topic: subject,
                    Company: $scope.company,
                    Country: $scope.country,
                    State: $scope.state,
                    Email: $scope.shareEmail,
                    Phone: $scope.phone,
                    Recaptcha: grecaptcha.getResponse(),
                    EmailSubject: subject,
                    EmailBody: body + "The associated CRM lead is "
                }).then(function (response) {
                    $("#shareAlert").fadeIn(500, function () {
                        $("#shareAlert").delay(2000).fadeOut(500, function () {
                        });
                    });
                    $http.post("/ssw/api/share", {
                        referredByFullName: $scope.name,
                        fullName: $scope.shareName,
                        email: $scope.shareEmail
                    }).then(function (response) { });


                    $scope.clearForm();
                    $scope.disabled = false;

                    //redirect to thank you page
                    window.location = "/ssw/ThankyouShare.aspx";
            
                }, function (response) {
                   
                        $scope.disabled = false;
                        window.location = "/ssw/ThankyouShare.aspx";                   
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
            $scope.shareName = null;
            $scope.shareEmail = null;
        }
     

    });

    var shareDiv = document.getElementById('SSWShare');

    angular.element(document).ready(function () {
        angular.bootstrap(shareDiv, ['SSWShare']);
    });
</script>



