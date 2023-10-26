
$(document).ready(function () {
    var cacheDuration = 300000;
    var calendarData = $.jStorage.get('titlewebinar');

    if (calendarData == null || calendarData == "") {

        var rightnow = new Date();
        var rightnowUTC = moment(rightnow).zone('+0000').add("hours", -1);  //SharePoint store UTC datetime
        var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";

        //SharePoint 2013 is using new rest api to replace listdata.svc
        var oDataFilter = "$filter=EndDateTime ge datetime'" + dateFilter + "' and CalendarType eq 'Webinar'&$select=Title,EventDescription,LiveStreamUrl,StartDateTime,EndDateTime&$orderby=EndDateTime asc&$top=1";

        $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
            var sortedSet = $(d).find('properties').get().sort(function (a, b) {
                var valA = $(a).find('StartDateTime').text();
                var valB = $(b).find('StartDateTime').text();
                return valA < valB ? -1 : valA == valB ? 0 : 1;
            });

            if (sortedSet.length > 0) {
                $(sortedSet).each(function () {
                    var $CalendarEntry = $(this);
                    var title = $CalendarEntry.find("Title").text();
                    var description = $CalendarEntry.find("EventDescription").text();
                    var url = $CalendarEntry.find('LiveStreamUrl').find('Url').text();
                    var startdatetime = $CalendarEntry.find('StartDateTime').text();
                    var enddatetime = $CalendarEntry.find('EndDateTime').text();
                    var startdatetimeSydney = moment(startdatetime).tz('Australia/Sydney'); //.zone('+1100');
                    var enddatetimeSydney = moment(enddatetime).tz('Australia/Sydney');
                    var rightnow = new Date();

                    var html = '<img alt="Webinar SSWTV" src="/ssw/events/webinars/images/thumbs/SSWTV_thumb.jpg" class="icon" />';
                    html += '<h1>' + title + '</h1>';  //<span class="red">Lessons </span>                
                    html += '<div class="livestreamtime">Starting at ' + startdatetimeSydney.format('hh:mm a') + " - " + enddatetimeSydney.format('hh:mm a') + " Australia/Sydney, " + enddatetimeSydney.format('Do MMMM YYYY') + '</div>';
                    html += '<h2>' + description + '</h2>';

                    $('#titlewebinar').append(html);

                });
            }
            else {
                var html = '<img alt="Webinar SSWTV" src="/ssw/events/webinars/images/thumbs/SSWTV_thumb.jpg" class="icon" />';
                html += '<h1>' + 'New Webinar is coming soon...' + '</h1>';  //<span class="red">Lessons </span>                
                //html += '<h2>' + 'Starting at ' + startdatetimeSydney.format('hh:mm a') + " - " + enddatetimeSydney.format('hh:mm a') + " Australia/Sydney, " + enddatetimeSydney.format('Do MMMM YYYY') + '</h2>';
                //html += '<h2>' + '' + '</h2>';

                $('#titlewebinar').append(html);
            }

            $.jStorage.set('titlewebinar', $('#titlewebinar').html(), { TTL: cacheDuration });
        });
    } else {
        $('#titlewebinar').html(calendarData);

    }

});