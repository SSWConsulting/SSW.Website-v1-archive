var _tfsAjaxCallTime;
var _tfsAjaxCallTimeOut;

function _tfsAjaxCallTimeOutFunc() {
    //build title bar string
    var activeString = "Active Tasks";
    var completedString = "Completed Tasks";
    //assign counted value to title bar
    $("#tfsResultsOutstanding span").text(activeString);
    $("#tfsResultsCompleted span").text(completedString);

    var _tfsAjaxCompleteTime = new Date();
    _tfsAjaxCompleteTime = _tfsAjaxCompleteTime - _tfsAjaxCallTime;
    $(".tasklist span.timetaken").text("Error: Time out after: " + (_tfsAjaxCompleteTime / 1000) + " sec");
    $(".tasklist span.timetaken").addClass("timetakenTimeout");

}

$(document).ready(
	function() {
	    _tfsAjaxCallTime = new Date();
	    _tfsAjaxCallTimeOut = setTimeout(
			_tfsAjaxCallTimeOutFunc,
			30000);
//	    if ($("#newItemLink")[0] != null) {
//	        $("#newItemLink").attr("href", function() {
//	            return this.href + "&[SSW.Agile.Url]=" + document.location.protocol + "//" + location.host + location.pathname;
//	        }
//	    )
//	    }


	    $.ajax(
	        {
	            type: "GET",
	            /* webservice.ssw.com.au */
	            url: "http://webservice.ssw.com.au/SSWSharePointService/TFSService.svc/GetTasksCompletedOrResolved",
	            data: { URL: document.location.href },
	            contentType: "application/json; charset=utf-8",
	            dataType: "jsonp",
	            success: function(data) {
	              
	                clearTimeout(_tfsAjaxCallTimeOut);

	                //set initial value of counters to 0
	                var countClosed = 0;
	                var countActive = 0;
	                if (data && data.d) {

	                    for (var i = 0; i < data.d.length; i++) {
	                        // build the work-item links
	                        if (data.d[i][2] == "Closed") {

	                            $("<LI><A href=" + data.d[i][3] + " TARGET='_blank' class='TfsTitleDescription' title='" + data.d[i][1] +
									" -- " + data.d[i][5] + "'>" +
		                            "<SPAN class='workItemID'>" + data.d[i][0] + "</SPAN>&nbsp;-&nbsp;" +
		                            "<SPAN class='workItemAssignedTo'>" + data.d[i][4] + "</SPAN>" +
	                            "</A></LI>").appendTo($("#tfsResultsDl .resultClosed"));
	                            //count total items under closed list
	                            countClosed++;
	                        }
	                        else if (data.d[i][2] == "Active") {
	                            $("<LI><A href=" + data.d[i][3] + " TARGET='_blank' class='TfsTitleDescription' title='" + data.d[i][1] +
									" -- " + data.d[i][5] + "'>" +
		                            "<SPAN class='workItemID'>" + data.d[i][0] + "</SPAN>&nbsp;-&nbsp;" +
		                            "<SPAN class='workItemAssignedTo'>" + data.d[i][4] + "</SPAN>" +
	                            "</A></LI>").appendTo($("#tfsResultsDl .resultActive"));
	                            //ccount total items under active list
	                            countActive++;
	                        }
	                    }
	                    //build title bar string
	                    var activeString = "Active Tasks (" + countActive + ")";
	                    var completedString = "Completed Tasks (" + countClosed + ")";
	                    //assign counted value to title bar
	                    $("#tfsResultsOutstanding span").text(activeString);
	                    $("#tfsResultsCompleted span").text(completedString);

	                    var _tfsAjaxCompleteTime = new Date();
	                    _tfsAjaxCompleteTime = _tfsAjaxCompleteTime - _tfsAjaxCallTime;
	                    $(".tasklist span.timetaken").text("time taken: " + (_tfsAjaxCompleteTime / 1000).toFixed(2) + " sec");

	                    if (!countClosed) {
	                        $("#tfsResultsCompleted").addClass("empty");
	                    }
	                    else {
	                        $("#tfsResultsCompleted").removeClass("empty");
	                    }
	                    if (!countActive) {
	                        $("#tfsResultsOutstanding").addClass("empty");
	                    }
	                    else {
	                        $("#tfsResultsOutstanding").removeClass("empty");
	                    }
	                }
	            }
	        }
	    );

	    //hide or show the list
	    $('.tasklist dl dt').click(function() {

	        //hover show title and description
	        $('.TfsTitleDescription').tooltip({
	            track: false,
	            delay: 0,
	            showURL: false,
	            showBody: " -- ",
	            extraClass: "TfsTooltip",
	            fixPNG: true,
	            left: -120
	        });

	        var answer = $(this).next();
	        answer.slideToggle();
	        $(this).toggleClass("expanded");


	    });


	    //hover show title and description
	    if ($('#newItemLink')[0] != null) {
	        $('#newItemLink').tooltip({
	            track: false,
	            delay: 0,
	            showURL: false,
	            showBody: " -- ",
	            extraClass: "TfsTooltip",
	            fixPNG: true,
	            left: -120
	        });
	    }


	}
);
