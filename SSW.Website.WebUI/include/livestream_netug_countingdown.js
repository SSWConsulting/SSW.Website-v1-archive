var countingdownclock = {

    properties: {
        cacheDuration: 600000, //10 mins
        livestream_netug: null,
        livestream_netug_startdatetimeUTC: null,
        livestream_netug_enddatetimeUTC: null,
        rightnowUTC: moment(new Date()).zone('+0000'),
    },

    functions: {

        build_apply_cache_html: function () {

            var dateFilter = countingdownclock.properties.rightnowUTC.format('YYYY-MM-DD') + "T" + countingdownclock.properties.rightnowUTC.format('HH:mm:ss') + "Z";  //HH is 24 hours, hh is 12 hours

            //SharePoint 2013 is using new rest api to replace listdata.svc
            var oDataFilter = "$filter=Enabled ne false and CalendarType eq 'User Group' and EndShowBannerDateTime ge datetime'" + dateFilter + "'&$orderby=StartDateTime asc&$top=1";
            //console.log(eventsURL + oDataFilter + ' at UTC time ' + rightnowUTC.format());
            $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
                var sortedSet = $(d).find('properties').get().sort(function (a, b) {
                    var valA = $(a).find('StartDateTime').text();
                    var valB = $(b).find('StartDateTime').text();
                    return valA < valB ? -1 : valA == valB ? 0 : 1;
                });

                console.log(sortedSet.length + ' at UTC time ' + countingdownclock.properties.rightnowUTC.format());


                if (sortedSet != null && sortedSet.length > 0) {
                    //only get one event for now.
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

                        countingdownclock.properties.livestream_netug_startdatetimeUTC = moment(startdatetime).zone('+0000');  //SharePoint store UTC datetime
                        countingdownclock.properties.livestream_netug_enddatetimeUTC = moment(enddatetime).zone('+0000');  //SharePoint store UTC datetime

                        if (countingdownclock.properties.livestream_netug_enddatetimeUTC >= rightnowUTC) {

                            if (countingdownclock.properties.livestream_netug_startdatetimeUTC > rightnowUTC) {
                                var html = '<div class="livestream-permanent">';
                            } else {
                                var html = '<div class="livestream-permanent livestreamonair">';
                            }


                            html += '<a href="' + url + '" title="' + title + '" id="livestreamlink">';
                            html += '<div class="livestreamtitle"><span class="livestreamtitlespan">';
                            html += title;
                            html += '</span>';
                            html += '<div class="livestreamtime"><span id="timeToAir">' + timeToAir(startdatetime, enddatetime) + '</span> (' + startdatetimeSydney.format('hA') + " Sydney, " + enddatetimeSydney.format('Do MMM YYYY') + ') #NETUG</div>';
                            html += '</div></a>';

                            html += '</div>';
                            $('#livestream_netug').append(html);
                        }


                    });

                    $.jStorage.set('countingdownclock.properties.livestream_netug_startdatetimeUTC', countingdownclock.properties.livestream_netug_startdatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_enddatetimeUTC', countingdownclock.properties.livestream_netug_enddatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    console.log(countingdownclock.properties.livestream_netug_startdatetimeUTC + ' and ' + countingdownclock.properties.livestream_netug_enddatetimeUTC + ' are cached at UTC time ' + countingdownclock.properties.rightnowUTC.format());

                    $.jStorage.set('livestream_netug', $('#livestream_netug').html(), { TTL: countingdownclock.properties.cacheDuration });
                    //console.log($('#livestream').html() + ' - livestream html is cached at UTC time ' + rightnowUTC.format());     
                }
                else {
                    $('#livestream_netug').append('');
                }

            });
        },

        timeToAirNetug: function (startdatetime, enddatetime) {
            var retString = 'Streaming Live Now.';

            var rightnow = new Date();
            var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
            countingdownclock.properties.livestream_netug_startdatetimeUTC = moment(startdatetime).zone('+0000');
            countingdownclock.properties.livestream_netug_enddatetimeUTC = moment(enddatetime).zone('+0000');
            var diff = countingdownclock.properties.livestream_netug_startdatetimeUTC - rightnowUTC;

            if (diff > 0) {
                var seconds = Math.floor(diff / 1000); //ignore any left over units smaller than a second
                var minutes = Math.floor(seconds / 60);
                seconds = seconds % 60;
                var hours = Math.floor(minutes / 60);
                minutes = minutes % 60;
                var days = Math.floor(hours / 24);
                hours = hours % 24;

                if (days == 0 & hours == 0 && minutes == 0) {
                    retString = 'Streaming Live Now.';
                }
                else {
                    retString = '<span class="red">Airing in ';
                    //days
                    if (days == 1) {
                        retString += days + ' Day';
                    }
                    else if (days > 1) {
                        retString += days + ' Days';
                    }
                    if (days > 0 && (hours > 0 || minutes > 0 || seconds > 0)) {
                        retString += ' | ';
                    }
                    //hours
                    if (hours == 1) {
                        retString += hours + ' Hour';
                    }
                    else if (hours > 1) {
                        retString += hours + ' Hours';
                    }
                    if (hours > 0 && (minutes > 0 || seconds >0)) {
                        retString += ' | ';
                    }
                    //mins
                    if (minutes == 1) {
                        retString += minutes + ' Minute';
                    }
                    else if (minutes > 1) {
                        retString += minutes + ' Minutes';
                    }
                    if (minutes > 0 && seconds > 0) {
                        retString += ' | ';
                    }
                    //seconds
                    if (seconds == 1) {
                        retString += seconds + ' Second';
                    }
                    else if (seconds > 1) {
                        retString += seconds + ' Seconds';
                    }
                    retString += '.</span>';
                    //retString += seconds + ' Seconds.';
                }

            }

            if (rightnowUTC - countingdownclock.properties.livestream_netug_enddatetimeUTC > 0) {
                retString = '';
            }
            console.log(retString + ' - time to air - ' + countingdownclock.properties.livestream_netug_startdatetimeUTC.format() + ' - ' + countingdownclock.properties.livestream_netug_enddatetimeUTC.format() + ' at UTC time ' + rightnowUTC.format());
            return retString;
        },

        initialproperties: function () {
            if (countingdownclock.properties.livestream_netug == null || countingdownclock.properties.livestream_netug.length <= 0)
                countingdownclock.properties.livestream_netug = $.jStorage.get('countingdownclock.properties.livestream_netug');
            if (countingdownclock.properties.livestream_netug_startdatetimeUTC == null || countingdownclock.properties.livestream_netug_startdatetimeUTC.length <= 0)
            {
                countingdownclock.properties.livestream_netug_startdatetimeUTC = $.jStorage.get('countingdownclock.properties.livestream_netug_startdatetimeUTC');
                countingdownclock.properties.livestream_netug_startdatetimeUTC = moment(countingdownclock.properties.livestream_netug_startdatetimeUTC).zone('+0000');  //SharePoint store UTC datetime
            }
            if (countingdownclock.properties.livestream_netug_enddatetimeUTC == null || countingdownclock.properties.livestream_netug_enddatetimeUTC.length <= 0)
            {
                countingdownclock.properties.livestream_netug_enddatetimeUTC = $.jStorage.get('countingdownclock.properties.livestream_netug_enddatetimeUTC');
                countingdownclock.properties.livestream_netug_enddatetimeUTC = moment(countingdownclock.properties.livestream_netug_enddatetimeUTC).zone('+0000');  //SharePoint store UTC datetime
            }

            countingdownclock.properties.rightnowUTC = moment(new Date()).zone('+0000');  //SharePoint store UTC datetime

            if (countingdownclock.properties.rightnowUTC != null && countingdownclock.properties.rightnowUTC.length > 0)
                console.log(countingdownclock.properties.rightnowUTC.format() + ' - rightnow UTC initial ' + countingdownclock.properties.rightnowUTC.format());
        },

        updateclock: function () {
            
            countingdownclock.functions.initialproperties();

            if (countingdownclock.properties.livestream_netug_enddatetimeUTC == null) {
                console.log('countingdownclock.properties.livestream_netug_enddatetimeUTC' + ' - is null - at UTC time ' + countingdownclock.properties.rightnowUTC.format());
            }
            else if (countingdownclock.properties.livestream_netug_enddatetimeUTC.format() == 'Invalid date') {
                console.log(countingdownclock.properties.livestream_netug_enddatetimeUTC.format() + ' - Invalid date - at UTC time ' + countingdownclock.properties.rightnowUTC.format());
            }
            else if (countingdownclock.properties.livestream_netug_enddatetimeUTC >= countingdownclock.properties.rightnowUTC) {
                console.log(countingdownclock.properties.livestream_netug + ' - using cached html at UTC time ' + countingdownclock.properties.rightnowUTC.format());
                $('#livestream_netug').html(countingdownclock.properties.livestream_netug);
                countingdownclock.functions.setIntervalFunction();
                return;
            }
            else if (countingdownclock.properties.livestream_netug_enddatetimeUTC < countingdownclock.properties.rightnowUTC) {
                console.log(countingdownclock.properties.livestream_netug_enddatetimeUTC.format() + ' - User Group event finished - UTC time ' + countingdownclock.properties.rightnowUTC.format());
                $.jStorage.set('countingdownclock.properties.livestream_netug', '', { TTL: countingdownclock.properties.cacheDuration }); //clean cached value
                return;
            }

            if (countingdownclock.properties.livestream_netug == null) {
                
                countingdownclock.functions.build_apply_cache_html();
                countingdownclock.functions.setIntervalFunction();
            }


        },

        setIntervalFunction: function () {

            countingdownclock.functions.initialproperties();

            if (countingdownclock.properties.livestream_netug_startdatetimeUTC == null || countingdownclock.properties.livestream_netug_enddatetimeUTC == null) {
                return;
            }


            var interval = setInterval(function () {

                var timeToAirNetugValue = countingdownclock.functions.timeToAirNetug(countingdownclock.properties.livestream_netug_startdatetimeUTC, countingdownclock.properties.livestream_netug_enddatetimeUTC)
                if (timeToAirNetugValue == '') {                    
                    $('#livestream_netug #timeToAirNetug').html('');
                    $.jStorage.set('countingdownclock.properties.livestream_netug', '', { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_startdatetimeUTC', countingdownclock.properties.livestream_netug_startdatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_enddatetimeUTC', countingdownclock.properties.livestream_netug_enddatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    clearInterval(interval);
                    return;
                }
                else if (timeToAirNetugValue == 'Streaming Live Now.') {
                    $('#livestream_netug .livestream-permanent').addClass('livestreamonair');
                    $.jStorage.set('countingdownclock.properties.livestream_netug', $('#livestream_netug').html(), { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_startdatetimeUTC', countingdownclock.properties.livestream_netug_startdatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_enddatetimeUTC', countingdownclock.properties.livestream_netug_enddatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                }

                //update time to air container text
                if ($('#livestream_netug #timeToAirNetug').html() != timeToAirNetugValue) {
                    $('#livestream_netug #timeToAirNetug').html(timeToAirNetugValue);
                    $.jStorage.set('countingdownclock.properties.livestream_netug', $('#livestream_netug').html(), { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_startdatetimeUTC', countingdownclock.properties.livestream_netug_startdatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                    $.jStorage.set('countingdownclock.properties.livestream_netug_enddatetimeUTC', countingdownclock.properties.livestream_netug_enddatetimeUTC, { TTL: countingdownclock.properties.cacheDuration });
                }

            }, 1000); //10 secs
        },

    }
};


$(document).ready(function () {
    countingdownclock.functions.updateclock();
});