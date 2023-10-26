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
    var storageKey = 'liveNextEvent';
    var calendarData = $.jStorage.get(storageKey);

    if (calendarData == null || calendarData == "") {

        var rightnow = new Date();
        var rightnowUTC = moment(rightnow).zone('+0000').add("hours", -1);  //SharePoint store UTC datetime
        var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";
        //var dateFilter = today.format('yyyy-MM-dd') + "T00:00:00Z";

        //SharePoint 2013 is using new rest api to replace listdata.svc
        var oDataFilter = "$filter=Enabled ne false and CalendarType eq 'User Group' and EndShowBannerDateTime ge datetime'" + dateFilter + "'&$orderby=StartDateTime asc&$top=1";
        //var oDataFilter = "$filter=Enabled ne false and EndDateTime gt datetime'" + dateFilter + "'" + " and CalendarType eq 'User Group' and City eq 'Sydney'";

        $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURI(oDataFilter), function (d) {
            var sortedSet = $(d).find('properties').get().sort(function (a, b) {
                var valA = $(a).find('StartDateTime').text();
                var valB = $(b).find('StartDateTime').text();
                return valA < valB ? -1 : valA == valB ? 0 : 1;
            });
            $(sortedSet).each(function () {
                var $CalendarEntry = $(this);
                var title = $CalendarEntry.find("Title").text();
                var url = $CalendarEntry.find('Url').find('Url').text();
                var image = $CalendarEntry.find('Thumbnail').find('Url').text();
                var presenter = $CalendarEntry.find('Presenter').text();
                var description = $CalendarEntry.find('EventDescription').text();
                var startdatetime = $CalendarEntry.find('StartDateTime').text();
                startdatetime = TimeStampToDate(startdatetime);
                var today = new Date();

                
                var daysToGo = calcDaysToGo(startdatetime, today);
                var html = '<div class="event">';
                html += '<div class="thumbnail">';
                // No need to display the "days to go" twice. As it is listed at the top.
                //if (daysToGo == 0) {
                //    html += '<span class="daystogo">Today</span>';
                //}
                //else if (daysToGo == 1) {
                //    html += '<span class="daystogo">' + daysToGo + ' Day to go</span>';
                //}

                //else {
                //    html += '<span class="daystogo">' + daysToGo + ' Days to go</span>';
                //}
                html += '<img src="' + image + '" alt="' + title + '"/>';
                html += '</div>';
                html += '<div class="event-details">';
                html += '<h5 class="event-title">' + title + '</h5>';
                html += '<div class="event-keyinfo">';
                html += '<span class="event-date">' + startdatetime.toDateString() + ' </span>';
                html += '<span class="event-presenter"> ' + presenter + '</span>';
                html += '</div>';
                html += '<div class="event-description">' + description + '</div>';
                html += '</div>';
                html += '</div>';
                $('#eventsPane').append(html);
               

            });

            $.jStorage.set(storageKey, $('#eventsPane').html(), { TTL: cacheDuration });
        });
    } else {
        $('#eventsPane').html(calendarData);

    }

});