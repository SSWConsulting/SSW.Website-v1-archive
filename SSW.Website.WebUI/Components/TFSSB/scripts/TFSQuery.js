var _tfsAjaxCompleteTime;
var _tfsAjaxCallTime;
var pageRequestManager;
var tfssb_box_flag = true;
var ensureOnlyLoadOnce = true;


$(document).ready(
	function () {
	    HideShowBox();
	}
);

	function HideShowBox() {
	        var tfssb_btnControl = $("#tfssb_btnControl");
	        var tfssb_box = $("#tfssb_box");
	        if (tfssb_box_flag) {
	            //show restore button
	            tfssb_btnControl.removeClass('tfssb_btn_min').addClass('tfssb_btn_restore');

                //hide task list box
	            tfssb_box.css("display", "none");
	            tfssb_box_flag = false;
	        }
	        else {
	            //show minimize button
                tfssb_btnControl.removeClass('tfssb_btn_restore').addClass('tfssb_btn_min');

	            //show task list box
	            tfssb_box.css("display", "");
	            tfssb_box_flag = true;

	            if (ensureOnlyLoadOnce) {
	                //get task list box
	                var UpdatePanelClientId = getClientId().UpdatePanel1ClientId;
	                if (UpdatePanelClientId != null) {
	                    ShowLoader();
	                    __doPostBack(UpdatePanelClientId, '');
	                }
	                ensureOnlyLoadOnce = false;
	            }

	        }
	    }

	    function ShowLoader() {
	        var ActiveClientID = getClientId().ActiveTasksId;
	        var CompletedClientID = getClientId().CompletedTasksId;
	        if ($('#' + ActiveClientID) != null) {

	            $('#' + ActiveClientID).text(" (Loading ...)");

	        }
	        if ($('#' + CompletedClientID) != null) {
	            $('#' + CompletedClientID).text(" (Loading ...)");
	        }

	    }

	    function expandAndCollapse(obj) {
	        if ($(obj).attr("class") != "") {
	            //debugger;
	            var answer = $(obj).next();

	            answer.toggleClass("StyleHidden");
	            $(obj).toggleClass("icon_minus");
	            $(obj).toggleClass("icon_plus");
	        }
	        else {
	            var answer = $(obj).next();

	            answer.toggleClass("StyleHidden");
	            $(obj).toggleClass("icon_minus");
	            $(obj).toggleClass("icon_plus");
	        }

	    }


