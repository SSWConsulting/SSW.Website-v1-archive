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
            var sortedSet = $(d);
            //console.log(sortedSet.length + ' at UTC time ' + rightnowUTC.format());
            $(sortedSet).each(function () {
                var $CalendarEntry = $(this)[0];
                var title = $CalendarEntry["Title"];
                var url = $CalendarEntry['LiveStreamUrl'] ? $CalendarEntry['LiveStreamUrl']['Url'] : "";
                var startdatetime = $CalendarEntry['StartDateTime'];  //date in SharePoint is using UTC timezone +0000;
                var enddatetime = $CalendarEntry['EndDateTime'];
                var startdatetimeSydney = moment(startdatetime).tz('Australia/Sydney'); //.zone('+1100');
                var enddatetimeSydney = moment(enddatetime).tz('Australia/Sydney');
                var eventId = $CalendarEntry['Id'];
                var rightnow = new Date();
                var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
                
                var livestream_startdatetimeUTC = moment(startdatetime).zone('+0000');  //SharePoint store UTC datetime
                var livestream_enddatetimeUTC = moment(enddatetime).zone('+0000');  //SharePoint store UTC datetime

                var timeToAirValue = timeToAir(startdatetime, enddatetime);

                if (livestream_enddatetimeUTC >= rightnowUTC) {
                    var html = '<div class="livestream">';
                    if (livestream_startdatetimeUTC > rightnowUTC) {
                        html += '<div class="event-banner hidden-xs alert alert-dismissible" role="alert">';
                    } else {
                        html += '<div class="event-banner livestreamonair hidden-xs alert alert-dismissible" role="alert">';
                    }

                    html += '<div class="container">';
                    html += '<a href="'+ url +'" title="' + title + '" id="livestreamlink" class="livestream-permanent">';
                    html += '<div class="livestreamtitle"><span class="livestreamtitlespan">';
                    html += title;
                    html += '</span>';
                    html += '<div class="livestreamtime"><span id="timeToAir">' + timeToAir(startdatetime, enddatetime) + '</span> (' + startdatetimeSydney.format('hA') + " Sydney, " + enddatetimeSydney.format('Do MMM YYYY') + ') #NETUG</div>';
                    html += '</div></a>';
                    html += '</div>';
                    html += '</div>';
                    html += '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
                    html += '</div>';
                    $('#livestream').append(html);
                }

                $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration }); 
                $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
                $.jStorage.set('livestream_event_id', eventId, { TTL: cacheDuration });
                //console.log(startdatetime + ' and ' + enddatetime + ' are cached at UTC time ' + rightnowUTC.format());
                updateLiveStreamWidget(timeToAirValue === 'Streaming Live Now.');
            });

            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration }); 
            //console.log($('#livestream').html() + ' - livestream html is cached at UTC time ' + rightnowUTC.format());
            setIntervalFunction();
        }, "json");

    } else {
        if (livestream_enddatetimeUTC == null || livestream_enddatetimeUTC.format() == 'Invalid date') {
            //console.log(livestream_enddatetimeUTC.format() + ' - Invalid date - at UTC time ' + rightnowUTC.format());
            return;
        }
        if (livestream_enddatetimeUTC >= rightnowUTC) {
            var timeToAirValue = timeToAir(livestream_startdatetimeUTC, livestream_enddatetimeUTC);
            //console.log(livestream_enddatetimeUTC.format() + ' - using cached html at UTC time ' + rightnowUTC.format());
            $('#livestream').html(calendarData);
            updateLiveStreamWidget(timeToAirValue === 'Streaming Live Now.');
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
    var livestream_event_id = $.jStorage.get('livestream_event_id');

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

            updateLiveStreamWidget(false);
            clearInterval(interval);
            return;
        }
        else if (timeToAirValue == 'Streaming Live Now.') {
            $('.event-banner').addClass('livestreamonair');
            updateLiveStreamWidget(true);

            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
            $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_event_id', livestream_event_id, { TTL: cacheDuration });
        }

        //update time to air container text
        if ($('#timeToAir').html() != timeToAirValue) {
            $('#timeToAir').html(timeToAirValue);
            $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
            $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
            $.jStorage.set('livestream_event_id', livestream_event_id, { TTL: cacheDuration });
            updateLiveStreamWidget(false);
        }
    }, 30000); //30 secs
}

function updateLiveStreamWidget(showWidget = false) {
    var event_id = $.jStorage.get('livestream_event_id');
    var rightnow = new Date();
    var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
    var loadExternalSpeakers = $.Deferred();
    var loadInternalSpeakers = $.Deferred();
    var stored_speaker = $.jStorage.get('livestream_speakers');

    if (event_id === null || event_id === '' || !showWidget) {
        $('#Livestream_Widget').removeClass("in");
        $('#livestream_Video').html('');
        $('#livestream_Chat').html('');
        $('#yt-button-container').html('');

        return;
    } else {
        var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";  //HH is 24 hours, hh is 12 hours
        //SharePoint 2013 is using new rest api to replace listdata.svc
        var oDataFilter = "$filter=Id eq " + event_id + "&$orderby=StartDateTime asc&$top=1";
        oDataFilter += "&$select=*,InternalPresenters/EMail&$expand=InternalPresenters/Id";

        $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
            var data = $(d);

            $(data).each(function () {
                var $event = $(this)[0];

                var youtube_id = $event['YouTubeId'];
                var speakersCount = 0;

                if (youtube_id === null || youtube_id === '') {
                    return;
                }

                var title = $event['Title'].split(':')[1];
                var survey_url = $event['EvalFormURL'] ? $event['EvalFormURL']['Url'] : null;
                var github_url = $event['GitHubURL'] ? $event['GitHubURL']['Url'] : null;
                var about_talk = $event['EventDescription'];
                var speakers = [];

                var video_url = "https://www.youtube.com/embed/" + youtube_id + "?rel=0&autoplay=1";
                var chat_url = "https://www.youtube.com/live_chat?v=" + youtube_id + "&embed_domain=" + window.location.hostname;
                var livestream_link = "https://www.youtube.com/watch?v=" + youtube_id;

                if ($event['ExternalPresentersId'].results !== undefined && $event['ExternalPresentersId'].results.length > 0) {
                    speakersCount = $event['ExternalPresentersId'].results.length;
                    $event['ExternalPresentersId']['results'].forEach(function (id) {
                        $.when(getExternalSpeaker(id)).done(function (result) {
                            speakers.push(result);

                            if (speakers.length === $event['ExternalPresentersId'].results.length) {
                                loadExternalSpeakers.resolve(true);
                            }
                        });
                    });
                } else {
                    loadExternalSpeakers.resolve(false);
                }

                if ($event['InternalPresenters'].results !== undefined && $event['InternalPresenters'].results.length > 0) {
                    speakersCount += $event['InternalPresenters'].results.length
                    $event['InternalPresenters']['results'].forEach(function (r) {
                        $.when(getPresenterCRMDetails(r.EMail)).done(function (result) {
                            speakers.push(result);
                            if (speakers.length === speakersCount) {
                                loadInternalSpeakers.resolve(true);
                            }
                        });
                    });
                } else {
                    loadInternalSpeakers.resolve(false);
                }


                if (showWidget) {
                    var video_frame = $("#video-embed");
                    var chat_frame = $("#chat-embed");

                    if (video_frame[0] === undefined || (video_frame[0] !== undefined && video_frame[0].src !== video_url)) {
                        let frame = document.createElement("iframe");
                        frame.referrerPolicy = "origin";
                        frame.src = video_url;
                        frame.frameBorder = "0";
                        frame.style = "position:absolute;top:0;left:0;width:100%;height:100%;margin:0"
                        frame.allowFullscreen = "true";
                        frame.allow = "autoplay";
                        frame.id = "video-embed";
                        $('#livestream_Video').html(frame);
                    }

                    if (isMobile()) {
                        $('#livestream_Chat').addClass('hidden');
                        $('#livestream_Chat_mobile').removeClass('hidden');
                        $('#livestream_Chat_mobile').html('<a href="' + livestream_link + '" target="_blank" class="red next btn rounded-btn">Chat with us on YouTube</a>');
                    } else {
                        $('#livestream_Chat').removeClass('hidden');
                        $('#livestream_Chat_mobile').addClass('hidden');

                        if (chat_frame[0] === undefined || (chat_frame[0] !== undefined && chat_frame[0].src !== chat_url)) {
                            frame = document.createElement("iframe");
                            frame.referrerPolicy = "origin";
                            frame.src = chat_url;
                            frame.frameBorder = "0";
                            frame.style = "width: 100%; height: 420px;"
                            frame.id = "chat-embed";
                            $('#livestream_Chat').html(frame);
                        }
                    }

                    if (survey_url === null || survey_url === '') {
                        $('#livestream_Survey_Url').attr('href', '/ssw/NETUG/EvaluationSurvey.aspx');
                    } else {
                        $('#livestream_Survey_Url').attr('href', survey_url);
                    }

                    if (github_url === null || github_url === '') {
                        $('#livestream_GitHub').addClass('hidden');
                    } else {
                        $('#livestream_GitHub').removeClass('hidden');
                        $('#livestream_GitHub_Url').attr('href', github_url);
                    }

                    $('#livestream_Image').attr('alt', title);
                    $('#livestream_Title').text(title);


                    if ( $('#livestream_talk_description').html() !== about_talk) {
                        $('#livestream_talk_description').html(about_talk);
                    }

                    //TODO: include a foreach to run CRMDetails to each presenter from SharePoint
                    $.when(loadInternalSpeakers, loadExternalSpeakers).done(function (r1, r2) {
                        if ((r1 || r2) && ($('#livestream_About_Speaker').html().length <= 0 || speakers.every(r => stored_speaker.find(r1 => r1.id === r.id)) === false)) {
                            about_speaker = "";
                            speakers.forEach(function (s) {
                                about_speaker += buildPresenterHTML(s);
                            });

                            $('#livestream_About_Speaker').html(about_speaker);
                            $.jStorage.set('livestream_speakers', speakers, { TTL: cacheDuration });
                        }
                    });

                    $('#Livestream_Widget').addClass("in");

                    //render youtube subscribe button
                    var container = $('#yt-button-container')[0];
                    var yt_button = '<div class="g-ytsubscribe" data-channelid="UCBFgwtV9lIIhvoNh0xoQ7Pg"></div>';
                    if (container.innerHTML === "") {
                        container.innerHTML = yt_button;
                        gapi.ytsubscribe.go(container);
                    }
                }
            });
        });
    }
}

function isMobile() {
    var isMobile = false; //initiate as false
    // device detection
    if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
        || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) {
        isMobile = true;
    }
    return isMobile;
}

function getExternalSpeaker(externalPresentersId) {
    var oDataFilter = "$filter=Id eq " + externalPresentersId;
    var result = $.Deferred();

    $.ajax({
        type: "GET", async: false, url: '/ssw/SharePointExternalSpeakersService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), success: function (d) {
            var data = $(d)[0];

//            var presenterGitHubRepo = data[0]["PresenterGitHubRepo"];

            result.resolve({
                id: 'ext' + externalPresentersId,
                photo_url: data["PresenterProfileImage"]["Url"],
                name: data["Title"],
                description: $.parseHTML(data["PresenterShortDescription"].toString())[0].innerText,
                profile_url: data["PresenterProfileLink"],
                profile_text: data["Title"] + "'s profile"
            });
        }
    });

    return $.when(result).done(function (r) {
        return r;
    }).promise();
}

function getPresenterCRMDetails(userEmail = '') {
    if (userEmail === '') {
        return;
    }

    var result = $.Deferred();

    $.get('/ssw/CRMService.aspx?odata=' + encodeURIComponent(userEmail), function (d) {
        var data = $(d)[0];

        result.resolve({
            id: userEmail,
            photo_url: data['PhotoURL'],
            name: data['Nickname'] ? data['FirstName'] + ' (' + data['Nickname'] + ') ' + data['LastName'] : data['FirstName'] + ' ' + data['LastName'],
            description: data['ShortDescription'],
            profile_url: data['ProfileURL'],
            profile_text: (data['Nickname'] || data['FirstName']) + "'s profile"
        });
    });

    return $.when(result).done(function(r){
        return r;
    }).promise();
}

function buildPresenterHTML(data) {
    var html = null;

    html = '<div class="row" style="margin-bottom:1rem">';
    html += '<div class="col-sm-2">';
    html += '<img src="' + data.photo_url + '"/>';
    html += '</div>';
    html += '<div class="col-sm-9">';
    html += '<p style="font-weight: bold;">' + data.name + '</p>';
    html += '<p style="text-align:justify">' + data.description + '</p>';
    if (data.profile_url !== null || data.profile_url !== "") {
        html += '<a style="float:right;" href="' + data.profile_url + '">​​' + data.profile_text + '<i class="fas fa-chevron-right" style="padding-right:.5rem"></i></a>';
    }
    html += '</div>';
    html += '</div>';

    return html;
}

$(document).ready(function () {
    updateBannerInfo();
});