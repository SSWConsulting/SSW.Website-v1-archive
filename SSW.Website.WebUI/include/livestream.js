
var cacheDuration = 600000; //10 mins

function timeToAir(startdatetime, enddatetime) {
    var retString = 'Streaming Live Now.';

    var rightnow = new Date();
    var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
    livestream_startdatetimeUTC = moment(startdatetime).zone('+0000');
    livestream_enddatetimeUTC = moment(enddatetime).zone('+0000');
    var diff = livestream_startdatetimeUTC - rightnowUTC;

    if (diff > 0) {
        var seconds = Math.floor(diff / 1000); //ignore any left over units smaller than a second
        var minutes = Math.floor(seconds / 60);
        seconds = seconds % 60;
        var hours = Math.floor(minutes / 60);
        minutes = minutes % 60;

        if (hours == 0 && minutes == 0) {
            retString = 'Streaming Live Now.';
        }
        else {
            retString = '<span class="red">Airing in ';
            if (hours == 1) {
                retString += hours + ' Hour';
            }
            else if (hours > 1) {
                retString += hours + ' Hours';
            }
            if (hours > 0 && minutes > 0) {
                retString += ' and ';
            }
            if (minutes == 1) {
                retString += minutes + ' Minute';                
            }
            else if (minutes > 1) {
                retString += minutes + ' Minutes';
            }
            retString += '.</span>';
            //retString += seconds + ' Seconds.';
        }
        
    }

    if (rightnowUTC - livestream_enddatetimeUTC > 0)
    {
        retString = '';
    }
    //console.log(retString + ' - time to air - ' + livestream_startdatetimeUTC.format() + ' - ' + livestream_enddatetimeUTC.format() + ' at UTC time ' + rightnowUTC.format());
    return retString;
}

function updateBannerInfo() {

    var calendarData = $.jStorage.get('livestream');
    var livestream_startdatetimeUTC = $.jStorage.get('livestream_startdatetimeUTC');
    var livestream_enddatetimeUTC = $.jStorage.get('livestream_enddatetimeUTC');
    livestream_enddatetimeUTC = moment(livestream_enddatetimeUTC).zone('+0000');  //SharePoint store UTC datetime

    var rightnow = new Date();
    var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime

    if (livestream_enddatetimeUTC < rightnowUTC) {
        //console.log(livestream_enddatetimeUTC.format() + ' - event finished - UTC time ' + rightnowUTC.format());
        return;
    }

    if (calendarData == null || calendarData == "") {

        var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";  //HH is 24 hours, hh is 12 hours

        //SharePoint 2013 is using new rest api to replace listdata.svc
        var oDataFilter = "$filter=Enabled ne false and StartShowBannerDateTime le datetime'" + dateFilter + "' and EndShowBannerDateTime ge datetime'" + dateFilter + "'&$orderby=StartDateTime asc&$top=1";
        //console.log(eventsURL + oDataFilter + ' at UTC time ' + rightnowUTC.format());
        $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
            var sortedSet = $(d).find('properties').get().sort(function (a, b) {
                var valA = $(a).find('StartDateTime').text();
                var valB = $(b).find('StartDateTime').text();
                return valA < valB ? -1 : valA == valB ? 0 : 1;
            });
            //console.log(sortedSet.length + ' at UTC time ' + rightnowUTC.format());
            $(sortedSet).each(function () {
                var $CalendarEntry = $(this);
                var title = $CalendarEntry.find("Title").text();
                var url = $CalendarEntry.find('LiveStreamUrl').find('Url').text();
                var startdatetime = $CalendarEntry.find('StartDateTime').text();  //date in SharePoint is using UTC timezone +0000;
                var enddatetime = $CalendarEntry.find('EndDateTime').text();
                var startdatetimeSydney = moment(startdatetime).tz('Australia/Sydney'); //.zone('+1100');
                var enddatetimeSydney = moment(enddatetime).tz('Australia/Sydney');
                var rightnow = new Date();
                var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
                
                var livestream_startdatetimeUTC = moment(startdatetime).zone('+0000');  //SharePoint store UTC datetime
                var livestream_enddatetimeUTC = moment(enddatetime).zone('+0000');  //SharePoint store UTC datetime

                if (livestream_enddatetimeUTC >= rightnowUTC) {

                    var html = '<div class="livestream">';
                    if (livestream_startdatetimeUTC > rightnowUTC) {
                        html += '<div class="event-banner hidden-xs alert alert-dismissible" role="alert">';
                    } else {
                        html += '<div class="event-banner livestreamonair hidden-xs alert alert-dismissible" role="alert">';
                    }

                    html += '<div class="container">';
                    html += '<a href="' + url + '" title="' + title + '" id="livestreamlink" class="livestream-permanent">';
                    html += '<div class="livestreamtitle"><span class="livestreamtitlespan">';
                    html += title;
                    html += '</span>';
                    html += '<div class="livestreamtime"><span id="timeToAir">' + timeToAir(startdatetime, enddatetime) + '</span> (' + startdatetimeSydney.format('hA') + " Sydney, " + enddatetimeSydney.format('Do MMM YYYY') + ') #NETUG</div>';
                    html += '</div></a>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    $('#livestream').append(html);
                }

                $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration }); 
                $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });  
                //console.log(startdatetime + ' and ' + enddatetime + ' are cached at UTC time ' + rightnowUTC.format());
            });

            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration }); 
            //console.log($('#livestream').html() + ' - livestream html is cached at UTC time ' + rightnowUTC.format());
            setIntervalFunction();

        });

    } else {
        if (livestream_enddatetimeUTC == null || livestream_enddatetimeUTC.format() == 'Invalid date') {
            //console.log(livestream_enddatetimeUTC.format() + ' - Invalid date - at UTC time ' + rightnowUTC.format());
            return;
        }
        if (livestream_enddatetimeUTC >= rightnowUTC) {
            //console.log(livestream_enddatetimeUTC.format() + ' - using cached html at UTC time ' + rightnowUTC.format());
            $('#livestream').html(calendarData);
            setIntervalFunction();
        }
        else {
            //console.log(livestream_enddatetimeUTC.format() + ' - cleaning banner html at UTC time ' + rightnowUTC.format());
            $('#livestream').html('');
            return;
        }
    }

    
}

function setIntervalFunction() {

    //set interval - time to air
    var rightnow = new Date();
    var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime

    //console.log('try to start to set interval - at UTC time ' + rightnowUTC.format());
    var livestream_startdatetimeUTC = $.jStorage.get('livestream_startdatetimeUTC');
    var livestream_enddatetimeUTC = $.jStorage.get('livestream_enddatetimeUTC');
    if (livestream_startdatetimeUTC == null || livestream_enddatetimeUTC == null) {
        return;
    }
    //console.log(livestream_startdatetimeUTC + ' - ' + livestream_enddatetimeUTC + ' - start to set interval at UTC time ' + rightnowUTC.format());
    var interval = setInterval(function () {

        var rightnow = new Date();
        var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
        //console.log(livestream_startdatetimeUTC + ' - ' + livestream_enddatetimeUTC + ' - running interval function at UTC time ' + rightnowUTC.format());

        var timeToAirValue = timeToAir(livestream_startdatetimeUTC, livestream_enddatetimeUTC)
        if (timeToAirValue == '') {
            $('#timeToAir').html('Finished!');            
            $('#livestream').html('');
            $.jStorage.set('livestream', '', { TTL: cacheDuration });
            $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });

            clearInterval(interval);
            return;
        }
        else if (timeToAirValue == 'Streaming Live Now.') {
            $('.event-banner').addClass('livestreamonair');

            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
            $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
        }

        //update time to air container text
        if ($('#timeToAir').html() != timeToAirValue) {
            $('#timeToAir').html(timeToAirValue);
            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
            $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
        }

    }, 30000); //30 secs
}

$(document).ready(function () {
    updateBannerInfo();
});