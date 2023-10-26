//This is temporary and will be replaced by RSS
function TimeStampToDate(xmlDate) {
    var dt = new Date();
    var dtS = xmlDate.slice(xmlDate.indexOf('T') + 1, xmlDate.indexOf('.'))
    var TimeArray = dtS.split(":");
    dt.setHours(TimeArray[0], TimeArray[1], TimeArray[2]);
    dtS = xmlDate.slice(0, xmlDate.indexOf('T'))
    TimeArray = dtS.split("-");
    dt.setFullYear(TimeArray[0], TimeArray[1] - 1, TimeArray[2]);
    return dt;
}

function calcDaysToGo(startdatetime, today) {
    return Math.floor((Date.parse(startdatetime) - Date.parse(today)) / 86400000)
}

$(document).ready(function () {
    var cacheDuration = 300000;
    var calendarDataSummary = $.jStorage.get('powersessionsummary');
    var calendarData = $.jStorage.get('powersessions');
    var calendarDataCategories = $.jStorage.get('powersessionsCategories');    

    if (calendarData === null || calendarData === "") {

        var today = new Date();
        var dateFilter = today.format('yyyy-MM-dd') + "T00:00:00Z";

        //SharePoint 2013 is using new rest api to replace listdata.svc
        var oDataFilter = "$filter=ShowOnPowerSessions eq 'Yes'&$top=400&$orderby=StartDateTime desc";
                
        $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURIComponent(oDataFilter), function (d) {
            var sortedSet = $(d).find('properties').get().sort(function (a, b) {
                var valA = $(a).find('StartDateTime').text();
                var valB = $(b).find('StartDateTime').text();
                return valA < valB ? -1 : valA === valB ? 0 : 1;
            });

            var arrCategories = new Array();
            var arrCategoryArchors = new Array();
            $(sortedSet).each(function () {
                var option = $(this).find('Category').text();
                var optionAnchor = $(this).find('CategoryAnchor').text();
                if ($.inArray(option, arrCategories) <= -1) { 
                    arrCategories.push(option);
                    arrCategoryArchors.push(optionAnchor);
                }
            });                       

            var htmlCategoryNav = '';
                        
            for (i = 0; i < arrCategories.length; ++i) {
                var categoryItem = arrCategories[i];
                var categoryAnchorItem = arrCategoryArchors[i];
                var htmlSummary = '<div class="powersessionSummary">';                
                htmlSummary += '<h3><a name=' + categoryAnchorItem + ' id=' + categoryAnchorItem + '></a>' + categoryItem + '</h3>';
                htmlSummary += '<ol>';                

                // add to category nav menu                
                htmlCategoryNav += '<li><a href="#' + categoryAnchorItem + '">' + categoryItem + '</a></li>';

                // add session
                var html = '<div class="powersession">';
                html += '<h2>' + categoryItem + '</h2>';

                //each session
                $(sortedSet).each(function () {
                    var $CalendarEntry = $(this);
                    var category = $CalendarEntry.find('Category').text();

                    if (categoryItem === category) {

                        var title = $CalendarEntry.find("Title").text();
                        var url = $CalendarEntry.find('Url').find('Url').text();
                        var image = $CalendarEntry.find('Thumbnail').find('Url').text();
                        var presenter = $CalendarEntry.find('Presenter').text();
                        var description = $CalendarEntry.find('EventDescription').text();
                        var sessionTitle = $CalendarEntry.find('SessionTitle').text();
                        var sessionTitleAnchor = $CalendarEntry.find('SessionTitleAnchor').text();
                      
                        var today = new Date();

                        htmlSummary += '<li><a href=#' + sessionTitleAnchor + '>' + sessionTitle + '</li>';

                        html += '<h3><a name=' + sessionTitleAnchor + ' id=' + sessionTitleAnchor + '></a>' + sessionTitle + '</h3>';
                        html += '<div>' + description + '</div>';
                    }

                });

                html += '</div>';
                $('#powersessionsPane').append(html);

                htmlSummary += '</ol>';
                htmlSummary += '</div>';
                $('#powersessionsSummary').append(htmlSummary);
            }

            $('#powersessionsCategories').append(htmlCategoryNav);

            $.jStorage.set('powersessions', $('#powersessionsPane').html(), { TTL: cacheDuration });
            $.jStorage.set('powersessionscategories', $('#powersessionsCategories').html(), { TTL: cacheDuration });
            $.jStorage.set('powersessionsummary', $('#powersessionsSummary').html(), { TTL: cacheDuration });
        });
    } else {
        $('#powersessionsPane').html(calendarData);
        $('#powersessionsCategories').html(calendarDataCategories);
        $('#powersessionsSummary').html(calendarDataSummary);
    }

});