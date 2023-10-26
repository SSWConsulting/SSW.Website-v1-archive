//This is temporary and will be replaced by RSS
window.SSW = window.SSW || {};

function filterItemsClick() {
    // filter items when filter link is clicked
    $("#filters a").click(function () {

        var $this = $(this);
        // don't proceed if already selected
        if ($this.hasClass("selected")) {
            return false;
        }
        var $optionSet = $this.parents(".option-set");
        $optionSet.find(".selected").removeClass("selected");
        $this.addClass("selected");

        var selector = $(this).attr("data-filter");
        var selectordisplay = $(this).html();

        if (selector.indexOf("tech") == 0) {
            $("#filter-values").attr("data-technology", "." + selector);
            $("#filter-values").attr("data-technologydisplay", selectordisplay);
        }
        if (selector.indexOf("type") == 0) {
            $("#filter-values").attr("data-type", "." + selector);
            $("#filter-values").attr("data-typedisplay", selectordisplay);
        }
        filterItems();
        //$container.isotope({ filter: selector });
        return false;
    });

}

function filterItems() {
    //var filterTypeValues = '';
    var filtercombine = "";

    //technology values
    var filterTechnologyValue = $("#filter-values").attr("data-technology");
    var filterTechnologyDisplayValue = $("#filter-values").attr("data-technologydisplay");

    var filterTypeValue = $("#filter-values").attr("data-type");
    var filterTypeDisplayValue = $("#filter-values").attr("data-typedisplay");

    //type filter values
    var filtertypes = $(".option-set-type .selected");

    var filterTypesUrlPara = "";
    if (filtertypes.length > 0) {
        filtertypes.each(function (i, selected) {
            if ($(selected).data("filter").length > 0) {
                filterTypesUrlPara += $(selected).data("filter").replace("type_", ""); 
            }
        });
    }    

    //technologyu filter values
    var filtertech = $(".option-set-tech .selected");

    var filterTechUrlPara = "";
    if (filtertech.length > 0) {
        filtertech.each(function (i, selected) {
            if ($(selected).data("filter").length > 0) {
                filterTechUrlPara += $(selected).data("filter").replace("tech_", ""); 
            }
        });
    }


    updateUrl(filterTechUrlPara, filterTypesUrlPara);

    //Condition is always true
    //filterTechnologyValue != null && 
    if (filterTechnologyDisplayValue != null && filterTechnologyValue !== ".tech_all") {
        filtercombine = filtercombine + filterTechnologyValue;
        $("#tech_filter_disp").html(filterTechnologyDisplayValue);
        $("#tech_filter_disp_ct").css("display", "inline-block");
    } else {
        $("#tech_filter_disp").html("");
        $("#tech_filter_disp_ct").css("display", "none");
    }

    if (filterTypeDisplayValue != null && filterTypeValue !== ".type_all") {
        filtercombine = filtercombine + filterTypeValue;
        $("#type_filter_disp").html(filterTypeDisplayValue);
        $("#type_filter_disp_ct").css("display", "inline-block");
    } else {
        $("#type_filter_disp").html("");
        $("#type_filter_disp_ct").css("display", "none");
    }

    //update header count item number
    $("#isotope").isotope({ filter: filtercombine }), resetGroupHeader();
    //var filteredCount = $('#isotope .event-item:not(.isotope-hidden)').length;    


}

function resetGroupHeader() {
    //cannot find filter callback method
    //var timeout =
    setTimeout(function () {
        var filteredCount = $("#isotope .event-item").filter(function () { return ($(this).css("display") !== "none" && $(this).css("opacity") === "1") }).length;
        $("#ongoingEventsHeader h3 .count").html("(" + filteredCount + " Events)");
    }, 800);

}

function updateUrl(filterTechnologyValue, filterTypeValue) {
    if (history.pushState) {
        var newurl = window.location.href;
        newurl = newurl.replace(/\?.+/, "");

        if (filterTechnologyValue) {
            newurl += parasymbol(newurl);
            newurl += "tech=" + filterTechnologyValue;
        }
        if (filterTypeValue) {
            newurl += parasymbol(newurl);
            newurl += "type=" + filterTypeValue;
        }
        window.history.pushState({ path: newurl }, "", newurl);
    }
}

function parasymbol(newurl) {
    if (newurl.indexOf("?") > 0) {
        return "&";
    }
    return "?";
}


function refreshIsotope() {
    ////Re-apply isotope
    $("#isotope").prepend()
        .isotope("reloadItems").isotope();
}

function initialFilterFromUrlParas() {

    refreshIsotope();

    var types = getUrlParameter("types");
    var tech = getUrlParameter("tech");
    var videoonly = getUrlParameter("videoonly");
    var upcomingeventsonly = getUrlParameter("upcomingeventsonly");


    if (types == null || types === "null" || types.indexOf("all") >= 0) {
        multiselectSelectAll($(".multiselecttype"));
    } else {
        var typearray = types.split(",");
        var typearrayvalues = new Array();
        $.each(typearray, function (key, value) {
            typearrayvalues.push("type_" + value);
        });

        $(".multiselecttype").val(typearrayvalues);
        //$(".multiselecttype option[value='" + type + "']").attr('selected', true);
    }
    $(".multiselecttype").multiselect("refresh");


    if (videoonly != null && (videoonly === "true" || videoonly === "false")) {
        var videoonlyvalue = Boolean.parse(videoonly);
        $("#videoonly").prop("checked", videoonlyvalue);
    }

    if (upcomingeventsonly != null && (upcomingeventsonly === "true" || upcomingeventsonly === "false")) {
        var upcomingeventsonlyvalue = Boolean.parse(upcomingeventsonly);
        $("#ongoingEventsOnly").prop("checked", upcomingeventsonlyvalue);
    }

    if (tech != null && tech !== "null") {
        $("#filters li").find("[data-filter='" + "tech_" + tech + "']").click();
    } else {
        filterItems();
    }

}

function getUrlParameter(name) {
    return decodeURI(
        (RegExp(name + "=" + "(.+?)(&|$)").exec(location.search) || [, null])[1]
    );
}

    function calcDaysToGo(startdatetime, today) {
        return (moment(startdatetime).startOf('day')).diff(moment(today).startOf('day'), 'days');
    }

    function addingLoadingDot() {
        if ($("#loadingcourses").length < 50) {
            $("#loadingcourses").append(" .");
            $("#loadingLeftNav").append(" .");
        } else {
            $("#loadingcourses").html("Time out :-(");
            $("#loadingLeftNav").html("Time out :-(");
        }

    }



    function multiselectSelectAll($el) {
        $("option", $el).each(function () {
            $el.multiselect("select", $(this).val());
        });
    }




function foldOnGoingEvents(headerobj) {
        var foldeventsclass = "foldevents";
        if (headerobj.hasClass(foldeventsclass)) {
            headerobj.removeClass(foldeventsclass);
        } else {
            headerobj.addClass(foldeventsclass);
        }


        //refreshIsotope();
    };


    function remove_tech_filter() {
        $("#filters li").find("[data-filter='" + "tech_all" + "']").click();
    }


    function remove_type_filter() {
        $("#filters li").find("[data-filter='" + "type_all" + "']").click();
    }

    function initAllEvents() {
        $(document).ready(function () {
            alert('initAllEvents called');
            //var cacheDuration = 300000;
            var eventsAllinone = $.jStorage.get("events_allinone");

            if (!eventsAllinone) {

                var rightnow = new Date();
                var rightnowUtc = window.moment(rightnow).zone("+0000"); //SharePoint store UTC datetime
                var dateFilter = rightnowUtc.format("YYYY-MM-DD") + "T" + rightnowUtc.format("HH:mm:ss") + "Z"; //HH is 24 hours, hh is 12 hours
                //var dateFilter = today.format('yyyy-MM-dd') + "T00:00:00Z";

                //SharePoint 2013 is using new rest api to replace listdata.svc
                var oDataFilterOngoing = "$filter=Enabled ne false and EndDateTime ge datetime'" + dateFilter + "'&select=StartDateTime,Category,CalendarType,Title,Url,Thumbnail,Presenter,EventShortDescription&$orderby=StartDateTime asc&$top=50";
                var oDataFilterPast = "$filter=Enabled ne false and EndDateTime lt datetime'" + dateFilter + "'&select=StartDateTime,Category,CalendarType,Title,Url,Thumbnail,Presenter,EventShortDescription,HasVideo&$orderby=StartDateTime desc&$top=50";

                var ongoingEvents = $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilterOngoing));

                var pastEvents = $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilterPast));

                var intervalLoading = setInterval(addingLoadingDot, 500);

                $.when(ongoingEvents, pastEvents).done(function (d1, d2) {

                    var eventsFiltersTechnology = new Array();
                    var eventsFiltersEventtype = new Array();

                    var sortedSet = $(d1).find("properties").get();
                    //Render ongoing events (ASC)
                    $(sortedSet).each(function () {
                        var $CalendarEntry = $(this)[0];

                        var technologycategory = $CalendarEntry.find("Category").text();
                        var technologycategoryFilter = technologycategory.toLowerCase().replace(/\s/g, "_").replace(".", "_");
                        var eventtype = $CalendarEntry.find("CalendarType").text();
                        var eventtypeFilter = eventtype.toLowerCase().replace(/\s/g, "_").replace(".", "_");

                        var html = "";

                        if (technologycategory.length > 0 && $.inArray(technologycategory, eventsFiltersTechnology) <= -1) {
                            //render technology category header
                            //html += '<div class="item isotope-header tech_' + technologycategory_filter + ' isotope-item">';
                            //html += '<h3  class="special">' + technologycategory + '</h3>';
                            //html += '</div>';
                            // Push into array
                            eventsFiltersTechnology.push(technologycategory);
                        }


                        if (eventtype.length > 0 && $.inArray(eventtype, eventsFiltersEventtype) <= -1) {
                            //render event type header
                            //html += '<div class="item isotope-header type_' + eventtype_filter + ' isotope-item">';
                            //html += '<h3 class="special">' + eventtype + '</h3>';
                            //html += '</div>';
                            // Push into array
                            eventsFiltersEventtype.push(eventtype);

                        }

                        var title = $CalendarEntry["Title"];
                        var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                        var image = $CalendarEntry["Thumbnail"] ? ($CalendarEntry["Thumbnail"]["Url"]).replace("http:", "") : "";
                        var presenter = $CalendarEntry["Presenter"];
                        var presenterprofileurl = $CalendarEntry["PresenterProfileUrl"] ? $CalendarEntry["PresenterProfileUrl"]["Url"] : "";
                        var presenterHtml;
                        if (presenterprofileurl && presenter) {
                            presenterHtml = "<a target='_blank' href=\"" + presenterprofileurl + "\">" + presenter + "</a>";
                        } else {
                            presenterHtml = presenter;
                        }
                        var description = $CalendarEntry["EventShortDescription"];
                        var startdatetime = $CalendarEntry["StartDateTime"];
                        //startdatetime = TimeStampToDate(startdatetime);
                        if (startdatetime.length > 0) {
                            startdatetime = window.moment.utc(startdatetime).zone("+1000");
                        }
                        var today = new Date();
                        var endDateTime = $CalendarEntry["EndDateTime"];
                        endDateTime = window.moment(endDateTime).zone("+1000");
                        var isSameDay = startdatetime.isSame(endDateTime, "Day");

                        var dateFormat = startdatetime.year() == today.getFullYear() ? "ddd MMM D" : "ddd MMM D YYYY";

                        var today = new Date();

                        if (startdatetime >= today) {

                            html += "<div class=\"event-item ";

                            //further events
                            if (startdatetime >= today) {
                                html += " ongoing ";
                            } else {
                                html += " past ";
                            }
                            html += " tech_all " + "tech_" + technologycategoryFilter + " ";
                            html += "type_" + eventtypeFilter + " ";
                            html += "isotope-item clearfix\">";


                            html += "<div class=\"thumbnail\">";

                            if (url.length > 10) {
                                html += "<a class=\"ignore\" href=\"" + url + "\">";
                            }
                            html += "<img src=\"" + image + "\" alt=\"" + title + "\" />";
                            if (url.length > 10) {
                                html += "</a>";
                            }
                            html += "</div>";


                            html += "<div class=\"ourHolder-text\">";
                            if (url.length > 10) {
                                html += "<a class=\"ignore\" href=\"" + url + "\">";
                            }
                            html += "<h3><span class=\"eventtitle\">" + title + "</span></h3>";
                            if (url.length > 10) {
                                html += "</a>";
                            }

                            html += "<span class=\"key_datetime\">" + startdatetime.format(dateFormat);
                            if (!isSameDay) {
                                html += " - " + endDateTime.format(dateFormat);
                            }
                            //Days to go? or Days passed?
                            if (startdatetime >= today) {
                                var daysToGo = calcDaysToGo(startdatetime, today);
                                if (daysToGo === 0) {
                                    html += "<span class=\"daystogo\">Today</span>";
                                } else if (daysToGo === 1) {
                                    html += "&nbsp;&nbsp;<span class=\"daystogo\">" + daysToGo + " Day to go</span>";
                                } else {
                                    html += "&nbsp;&nbsp;<span class=\"daystogo\">" + daysToGo + " Days to go</span>";
                                }
                            }
                            html += " </span>";
                            if (technologycategory.length > 0) {
                                html += "<p class=\"key_technology\"><span class=\"key_technology_title\"> Technology:</span>" + technologycategory + " </p>";
                            }
                            if (eventtype.length > 0) {
                                html += "<p class=\"key_type\"><span class=\"key_type_title\"> Type:</span>" + eventtype + " </p>";
                            }
                            if (presenterHtml.length > 0) {
                                html += "<p class=\"key_presenter\"><span class=\"key_presenter_title\"> Presenter:</span>" + presenterHtml + " </p>";
                            }


                            html += "<div class=\"key-description\">" + description + "</div>";
                            if (url.length > 10) {
                                html += "<a href=\"" + url + "\" class=\"key-more ignore\">Find out more...</a>";
                            }
                            html += "</div>";


                            html += "</div>";

                            $("#isotope").append(html);
                        }

                    });

                    //Render past events (DESC)
                    var sortedSetPastDesc = $(d2).find("properties").get();
                    $(sortedSetPastDesc).each(function () {
                        var $CalendarEntry = $(this)[0];

                        var technologycategory = $CalendarEntry["Category"];
                        var technologycategoryFilter = technologycategory.toLowerCase().replace(/\s/g, "_").replace(".", "_");
                        var eventtype = $CalendarEntry["CalendarType"];
                        var eventtypeFilter = eventtype.toLowerCase().replace(/\s/g, "_").replace(".", "_");

                        var html = "";

                        if (technologycategory.length > 0 && $.inArray(technologycategory, eventsFiltersTechnology) <= -1) {
                            eventsFiltersTechnology.push(technologycategory);
                        }

                        if (eventtype.length > 0 && $.inArray(eventtype, eventsFiltersEventtype) <= -1) {
                            eventsFiltersEventtype.push(eventtype);
                        }

                        var title = $CalendarEntry["Title"];
                        var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                        var image = $CalendarEntry["Thumbnail"] ? ($CalendarEntry["Thumbnail"]["Url"]).replace("http:", "") : "";
                        var presenter = $CalendarEntry["Presenter"];
                        var presenterprofileurl = $CalendarEntry["PresenterProfileUrl"] ? $CalendarEntry["PresenterProfileUrl"]["Url"] : "";
                        var presenterHtml;
                        if (presenterprofileurl && presenter) {
                            presenterHtml = "<a target='_blank' href=\"" + presenterprofileurl + "\">" + presenter + "</a>";
                        } else {
                            presenterHtml = presenter;
                        }
                        var description = $CalendarEntry["EventShortDescription"];
                        var startdatetime = $CalendarEntry["StartDateTime"];
                        var hasvideo = Boolean($CalendarEntry["HasVideo"]);
                        //startdatetime = TimeStampToDate(startdatetime);
                        if (startdatetime.length > 0) {
                            startdatetime = window.moment.utc(startdatetime).zone("+1000");
                        }
                        var today = new Date();

                        if (startdatetime < today) {

                            html += "<div class=\"event-item ";

                            //further events
                            if (startdatetime >= today) {
                                html += " ongoing ";
                            } else {
                                html += " past ";
                            }
                            if (hasvideo) {
                                html += " video ";
                            }
                            html += " tech_all " + "tech_" + technologycategoryFilter + " ";
                            html += "type_" + eventtypeFilter + " ";
                            html += "isotope-item clearfix\">";


                            html += "<div class=\"thumbnail\">";

                            if (url.length > 10) {
                                html += "<a class=\"ignore\" href=\"" + url + "\">";
                            }
                            html += "<img src=\"" + image + "\" alt=\"" + title + "\" />";

                            if (url.length > 10) {
                                html += "</a>";
                            }
                            html += "</div>";
                            html += "<div class=\"ourHolder-text\">";
                            if (url.length > 10) {
                                html += "<a href=\"" + url + "\">";
                            }
                            html += "<h3><span class=\"eventtitle\">" + title + "</span></h3>";
                            if (url.length > 10) {
                                html += "</a>";
                            }

                            //html += '<span style="text-decoration:line-through;" class="key_datetime">' + startdatetime.format('ddd') + ' ' + startdatetime.format('ll') + ' </span>';                    
                            if (technologycategory.length > 0) {
                                html += "<p class=\"key_technology\"><span class=\"key_technology_title\"> Technology:</span>" + technologycategory + " </p>";
                            }
                            if (eventtype.length > 0) {
                                html += "<p class=\"key_type\"><span class=\"key_type_title\"> Type:</span>" + eventtype + " </p>";
                            }
                            if (presenterHtml.length > 0) {
                                html += "<p class=\"key_presenter\"><span class=\"key_presenter_title\"> Presenter:</span>" + presenterHtml + " </p>";
                            }
                            html += "<p class=\"key_video\"><span class=\"key_video_title\"> Video:</span>";
                            if (hasvideo) {
                                html += "Yes";
                            } else {
                                html += "No";
                            }
                            html += " </p>";

                            //Days to go? or Days passed?
                            //if (startdatetime < today) {
                            //    if (hasvideo && url.length > 10) {
                            //        html += "<span class=\"daystogo\">Watch Video</span>";
                            //    } else {
                            //        html += "<span class=\"daystogo\">Call to Enquire</span>";
                            //    }
                            //}
                            html += "<div class=\"key-description\">" + description + "</div>";
                            if (url.length > 10) {
                                if (hasvideo) {
                                    html += "<a href=\"" + url + "\" style=\"font-weight:bold;\">Watch Video</a>";
                                } else {
                                    html += "<a href=\"" + url + "\" style=\"font-weight:bold;\">Call to Enquire</a>";
                                }
                            }
                            html += "</div>";

                            html += "</div>";

                            $("#isotopePast").append(html);
                        }

                    });

                    ////add power sessions            
                    var html = "See <a href=\"/ssw/Events/Training/Power-Sessions.aspx\">past Power Sessions</a> and <a href=\"/ssw/Events/ConferencePast.aspx\">past Conferences</a>.";
                    $("#isotopePastMore").append(html);

                    //clean loading info - dots
                    clearInterval(intervalLoading);
                    $("#loadingcourses").html("");

                    //Generate left navigation - technology category
                    $("#loadingLeftNav").html("");
                    eventsFiltersTechnology = eventsFiltersTechnology.sort();
                    var i;
                    for (i = 0; i < eventsFiltersTechnology.length; ++i) {
                        html = "";
                        if (i === 0) {
                            html += "<li id=\"alltechnology\"><a class=\"active\" href=\"#\" data-filter=\"tech_all\">Technology</a></li>";
                        }

                        var technologycategory = eventsFiltersTechnology[i];
                        var technologycategoryFilter = technologycategory.toLowerCase().replace(/\s/g, "_").replace(".", "_");
                        html += "<li><a href=\"#\" data-filter=\"tech_" + technologycategoryFilter + "\">" + technologycategory + "</a></li>";
                        $("#filters").append(html);
                        //$("#filters").css("height", "auto");

                    };

                    //binding header filter type
                    if (eventsFiltersEventtype.length > 0) {
                        html = "<select class=\"multiselecttype\" multiple=\"multiple\">";
                        for (i = 0; i < eventsFiltersEventtype.length; ++i) {
                            var eventtype = eventsFiltersEventtype[i];
                            var eventtypeFilter = eventtype.toLowerCase().replace(/\s/g, "_").replace(".", "_");
                            html += "<option value=\"type_" + eventtypeFilter + "\">" + eventtype + "</option>";
                            //html += '<li><a href="#" data-filter=".type.type_' + eventtype_filter + '">' + eventtype + '</a></li>';                
                        };
                        html += "</select>";
                        $("#filter-type").append(html);
                        //binding filter header
                        $(".multiselecttype").multiselect({
                            includeSelectAllOption: true,
                            selectAllText: "All Types",
                            selectAllValue: "type_all",
                            onChange: function (element) {
                                var selectmultivalues = $(".multiselecttype").val();
                                var selectmultivaluesRemoveItemall = selectmultivalues;
                                var typeAllValue = "type_all";
                                if (selectmultivalues != null) {
                                    selectmultivaluesRemoveItemall = jQuery.grep(selectmultivalues, function (value) {
                                        return value !== typeAllValue;
                                    });
                                }
                                if ((selectmultivalues == null && selectmultivaluesRemoveItemall) ||
                                selectmultivaluesRemoveItemall.length === 0 && element.val() !== typeAllValue) {
                                    $("#filter-type-required").show();
                                    $(".multiselecttype").multiselect("select", element.val());
                                    return false;
                                }
                                if (selectmultivaluesRemoveItemall.length > 1) {
                                    $("#filter-type-required").hide();
                                }

                                filterItems();
                                return true;
                            },
                            buttonText: function (options, select) {
                                if (options.length === 0) {
                                    return "Event Type <b class=\"caret\"></b>";
                                } else if (options.length >= (select.children().length - 1)) {
                                    return "All Types <b class=\"caret\"></b>";
                                } else if (options.length > 1) {
                                    return options.length + " selected  <b class=\"caret\"></b>";
                                } else {
                                    var selected = "";
                                    options.each(function () {
                                        selected += $(this).text() + ", ";
                                    });
                                    return selected.substr(0, selected.length - 2) + " <b class=\"caret\"></b>";
                                }
                            }
                        });
                    }

                    //binding filter event
                    $("#videoonly").change(function () {
                        filterItems();
                    });

                    //binding filter event
                    $("#ongoingEventsOnly").change(function () {
                        filterItems();
                    });

                    // filter items when filter link is clicked
                    $("#filters a").click(function () {

                        var $this = $(this);
                        // don't proceed if already selected
                        if ($this.hasClass("selected")) {
                            return false;
                        }
                        var $optionSet = $this.parents(".option-set");
                        $optionSet.find(".selected").removeClass("selected");
                        $this.addClass("selected");

                        var selector = $(this).attr("data-filter");
                        var selectordisplay = $(this).html();
                        $("#filter-values").attr("data-technology", "." + selector);
                        $("#filter-values").attr("data-technologydisplay", selectordisplay);

                        filterItems();
                        //$container.isotope({ filter: selector });
                        return false;
                    });
                    // filter items when filter link is clicked - end

                    //filterItems();

                    //Initial filter from URL            
                    initialFilterFromUrlParas();

                    //$.jStorage.set('events_allinone', $('#isotope').html(), { TTL: cacheDuration });
                });

            } else {
                $("#isotope").append(eventsAllinone);
            }

            $("#item-current, #item-past").on("shown.bs.collapse", function () {
                multiselectSelectAll($(".multiselecttype"));
            });
        });
    }

    function initHomePage() {
        $(function () {
            if ($(".nano").length > 0) {
                $(".nano").nanoScroller({ alwaysVisible: true });
            }
        });

        $(document).ready(function () {
            var cacheDuration = 300000;
            var calendarData = $.jStorage.get("homeCalendar");
            //$("#EventsWidget").css("display", "none");

            if (calendarData == null || calendarData.trim() === "") {

                var today = moment();
                var dateFilter = today.format("YYYY-MM-DD") + "T00:00:00Z";

                //SharePoint 2013 is using new rest api to replace listdata.svc
                var oDataFilter = "$filter=Enabled ne false and EndDateTime gt datetime'" + dateFilter + "'&$top=30&$orderby=StartDateTime desc";
                //console.log(encodeURIComponent(eventsUrl + oDataFilter));

                $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilter), function (d) {
                    var sortedSet = $(d).sort(function (a, b) {
                        var valA = $(a)[0]["StartDateTime"];
                        var valB = $(b)[0]["StartDateTime"];
                        return valA < valB ? -1 : valA === valB ? 0 : 1;
                    });
                    $(sortedSet).each(function () {
                        var $CalendarEntry = $(this)[0];
                        var title = $CalendarEntry["Title"];
                        var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                        var image = $CalendarEntry["Thumbnail"] ? $CalendarEntry["Thumbnail"]["Url"].replace("http:", ""): "";
                        var presenter = $CalendarEntry["Presenter"];
                        //var description = $CalendarEntry.find('Description').text();
                        var startdatetime = $CalendarEntry["StartDateTime"];
                        //startdatetime = TimeStampToDate(startdatetime);
                        startdatetime = window.moment(startdatetime).zone("+1000");
                        var today = new Date();

                        var endDateTime = $CalendarEntry["EndDateTime"];
                        endDateTime = window.moment(endDateTime).zone("+1000");
                        var isSameDay = startdatetime.isSame(endDateTime, "day");

                        var dateFormat = startdatetime.year() == today.getFullYear() ? "ddd MMM D" : "ddd MMM D YYYY";
                        
                        //if (startdatetime >= today) {
                            var daysToGo = calcDaysToGo(startdatetime, today);
                            var html = "<div class=\"event\">";
                            html += "<div class=\"thumbnail\">";
                            html += "<a class=\"ignore\" href=\"" + url + "\">";
                            html += "<img src=\"" + image + "\" alt=\"" + title + "\"/>";
                            html += "</a>";
                            html += "</div>";
                            html += "<div class=\"event-details\">";
                            html += "<span class=\"event-date\">" + startdatetime.format(dateFormat);
                            if (!isSameDay) {
                                html += " - " + endDateTime.format(dateFormat);
                            }
                            html += "</span>";
                            if (daysToGo === 0) {
                                html += "<span class=\"daystogo\">Today</span>";
                            }
                            else if (daysToGo === 1) {
                                html += "<span class=\"daystogo\">" + daysToGo + " Day to go</span>";
                            }
                            else if (daysToGo > 1) {
                                html += "<span class=\"daystogo\">" + daysToGo + " Days to go</span>";
                            }
                            else if (daysToGo < 0) {
                                html += "<span class=\"daystogo\">NOW RUNNING</span>";
                            }

                            html += "<h5 class=\"event-title\"><a href=\"" + url + "\">" + title + "</a></h5>";
                            html += "<span class=\"event-presenter\">" + presenter + "</span>";
                            html += "</div>";
                            html += "</div>";
                            $(".nano-content").append(html);
                        //}
                    });

                    $.jStorage.set("homeCalendar", $(".nano-content").html(), { TTL: cacheDuration });

                    //$("#EventsWidget").fadeIn(500);
                    if ($(".nano").length > 0)
                        $(".nano").nanoScroller({ alwaysVisible: true });

                }, "json");
            } else {
                $(".nano-content").html(calendarData);

                $(function () {
                    if ($(".nano").length > 0)
                        $(".nano").nanoScroller({ alwaysVisible: true });
                });
            }
        });
    };

    function initSydneyUserGroup() {
        $(document).ready(function () {
            initUserGroupByCity("Sydney");
        });
    };

    function initMelbourneUserGroup() {
        $(document).ready(function () {
            initUserGroupByCity("Melbourne");
        });
    };

    function initBrisbaneUserGroup() {
        $(document).ready(function () {
            initUserGroupByCity("Brisbane");
        });
    };

    function initCanberraUserGroup() {
        $(document).ready(function () {
            initUserGroupByCity("Canberra");
        });
    };

    function initUserGroupByCity(cityName) {

        var cacheDuration = 300000;
        var cachestoragename = "userGroupEvents" + cityName;
        var calendarData = $.jStorage.get(cachestoragename);

        if (!calendarData) {

            var today = moment();
            //var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
            //var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";

            var dateFilter = today.format("YYYY-MM-DD") + "T00:00:00Z";

            //SharePoint 2013 is using new rest api to replace listdata.svc
            var oDataFilter = "$filter=Enabled ne false and EndDateTime gt datetime'" + dateFilter + "'" + " and CalendarType eq 'User Groups' and (City eq 'Online' or City eq '" + cityName + "')";

            $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilter), function (d) {
                var sortedSet = $(d).find("properties").get().sort(function (a, b) {
                    var valA = $(a).find("StartDateTime").text();
                    var valB = $(b).find("StartDateTime").text();
                    return valA < valB ? -1 : valA === valB ? 0 : 1;
                });
                $(sortedSet).each(function () {
                    var $CalendarEntry = $(this)[0];
                    var title = $CalendarEntry["Title"];
                    var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                    var image = $CalendarEntry["Thumbnail"] ? $CalendarEntry["Thumbnail"]["Url"].replace("http:", "") : "";
                    var presenter = $CalendarEntry["Presenter"];
                    var description = $CalendarEntry["EventDescription"];
                    var startdatetime = $CalendarEntry["StartDateTime"];
                    //startdatetime = TimeStampToDate(startdatetime);
                    startdatetime = window.moment.utc(startdatetime).zone("+1000");
                    var today = new Date();


                    var daysToGo = calcDaysToGo(startdatetime, today);
                    var html = "<div class=\"event_fluid\">";
                    html += "<div class=\"thumbnail\">";
                    html += "<a class=\"ignore\" href=\"" + url + "\">";
                    html += "<img src=\"" + image + "\" alt=\"" + title + "\"/>";
                    html += "</a>";
                    html += "</div>";
                    html += "<div class=\"event-details\">";
                    html += "<h5 class=\"event-title\">" + title + "</h5>";
                    html += "<div class=\"event-keyinfo\">";
                    html += "<span class=\"event-date\">" + startdatetime.format("ddd") + " " + startdatetime.format("ll") + " </span>";
                    if (daysToGo === 0) {
                        html += "<span class=\"daystogo\">Today</span>";
                    }
                    else if (daysToGo === 1) {
                        html += "<span class=\"daystogo\">" + daysToGo + " Day to go</span>";
                    }

                    else {
                        html += "<span class=\"daystogo\">" + daysToGo + " Days to go</span>";
                    }
                    html += "<span class=\"event-presenter\"> " + presenter + "</span>";
                    html += "</div>";
                    html += "<div class=\"event-description\">" + description + "</div>";
                    html += "</div>";
                    html += "</div>";
                    $("#eventsPane").append(html);


                });

                $.jStorage.set(cachestoragename, $("#eventsPane").html(), { TTL: cacheDuration });
            });
        } else {
            $("#eventsPane").html(calendarData);

        }

    };

    function initEvents() {
        $(document).ready(function () {
            var cacheDuration = 300000;
            var calendarData = $.jStorage.get("furtherEvents");

            if (!calendarData) {

                var today = moment();
                var dateFilter = today.format("YYYY-MM-DD") + "T00:00:00Z";

                //SharePoint 2013 is using new rest api to replace listdata.svc
                var oDataFilter = "$filter=Enabled ne false and EndDateTime gt datetime'" + dateFilter + "'&$orderby=StartDateTime desc";

                $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilter), function (d) {
                    var sortedSet = $(d).find("properties").get().sort(function (a, b) {
                        var valA = $(a).find("StartDateTime").text();
                        var valB = $(b).find("StartDateTime").text();
                        return valA < valB ? -1 : valA === valB ? 0 : 1;
                    });
                    $(sortedSet).each(function () {
                        var $CalendarEntry = $(this)[0];
                        var title = $CalendarEntry["Title"];
                        var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                        var image = $CalendarEntry["Thumbnail"] ? $CalendarEntry["Thumbnail"]["Url"].replace("http:", "") : "";
                        var presenter = $CalendarEntry["Presenter"];
                        var presenterprofileurl = $CalendarEntry["PresenterProfileUrl"] ? $CalendarEntry["PresenterProfileUrl"]["Url"].text() : "";
                        var presenterHtml;
                        if (presenterprofileurl) {
                            presenterHtml = "<a href=\"" + presenterprofileurl + "\">" + presenter + "</a>";
                        } else {
                            presenterHtml = presenter;
                        }
                        //var description = $CalendarEntry.find('Description').text();
                        var startdatetime = $CalendarEntry["StartDateTime"];
                        //startdatetime = TimeStampToDate(startdatetime);
                        startdatetime = window.moment.utc(startdatetime).zone("+1000");
                        var today = new Date();

                        //further events
                        if (startdatetime >= today) {
                            var daysToGo = calcDaysToGo(startdatetime, today);
                            var html = "<div class=\"event\">";
                            html += "<div class=\"thumbnail\">";
                            html += "<a class=\"ignore\" href=\"" + url + "\">";
                            html += "<img src=\"" + image + "\" alt=\"" + title + "\"/>";
                            html += "</a>";
                            html += "</div>";
                            html += "<div class=\"event-details\">";
                            html += "<h5 class=\"event-title\"><a href=\"" + url + "\">" + title + "</a></h5>";
                            html += "<span class=\"event-date\">" + startdatetime.format("ddd") + " " + startdatetime.format("ll") + "</span>";                            
                            if (daysToGo === 0) {
                                html += "<span class=\"daystogo\">Today</span>";
                            }
                            else if (daysToGo === 1) {
                                html += "<span class=\"daystogo\">" + daysToGo + " Day to go</span>";
                            }

                            else {
                                html += "<span class=\"daystogo\">" + daysToGo + " Days to go</span>";
                            }

                            html += "<span class=\"event-presenter\">" + presenterHtml + "</span>";
                            html += "</div>";
                            html += "</div>";
                            $("#eventsPane").append(html);
                        }

                    });

                    $.jStorage.set("furtherEvents", $("#eventsPane").html(), { TTL: cacheDuration });
                });
            } else {
                $("#eventsPane").html(calendarData);

            }

        });
    }

    function initPastEvents() {
        $(document).ready(function () {
            var cacheDuration = 300000;
            var calendarData = $.jStorage.get("pastEvents");

            if (!calendarData) {

                var today = moment();
                var dateFilter = today.format("YYYY-MM-DD") + "T00:00:00Z";

                // SharePoint 2013 is using new rest api to replace listdata.svc
                // TODO: $orderby api ($orderby=StartDateTime desc) doesn't work properly, fix it, then remove the sortedSet in js.
                var oDataFilter = "$top=1000&$filter=Enabled ne false and EndDateTime lt datetime'" + dateFilter + "'&$orderby=StartDateTime desc";

                $.get("/ssw/SharePointEventsService.aspx?odataFilter=" + encodeURI(oDataFilter), function (d) {
                    var sortedSet = $(d).find("properties").get().sort(function (a, b) {
                        var valA = $(a).find("StartDateTime").text();
                        var valB = $(b).find("StartDateTime").text();
                        return valA > valB ? -1 : valA === valB ? 0 : 1;
                    });
                    // Limited to 100 events on past events
                    sortedSet = sortedSet.slice(0, 100);
                    $(sortedSet).each(function () {
                        var $CalendarEntry = $(this)[0];
                        var title = $CalendarEntry["Title"];
                        var url = $CalendarEntry["Url"] ? $CalendarEntry["Url"]["Url"] : "";
                        var image = $CalendarEntry["Thumbnail"] ? $CalendarEntry["Thumbnail"]["Url"].replace("http:", "") : "";
                        var presenter = $CalendarEntry["Presenter"];
                        var presenterprofileurl = $CalendarEntry["PresenterProfileUrl"] ? $CalendarEntry["PresenterProfileUrl"]["Url"] : "";
                        var presenterHtml;
                        if (presenterprofileurl) {
                            presenterHtml = "<a href=\"" + presenterprofileurl + "\">" + presenter + "</a>";
                        } else {
                            presenterHtml = presenter;
                        }
                        //var description = $CalendarEntry.find('Description').text();
                        var startdatetime = $CalendarEntry["StartDateTime"];
                        //startdatetime = TimeStampToDate(startdatetime);
                        startdatetime = window.moment.utc(startdatetime).zone("+1000");
                        var today = new Date();

                        //past events
                        if (startdatetime <= today) {
                            var daysToGo = calcDaysToGo(today, startdatetime);
                            var html = "<div class=\"event\">";
                            html += "<div class=\"thumbnail\">";
                            html += "<a class=\"ignore\" href=\"" + url + "\">";
                            html += "<img src=\"" + image + "\" alt=\"" + title + "\"/>";
                            html += "</a>";
                            html += "</div>";
                            html += "<div class=\"event-details\">";
                            html += "<h5 class=\"event-title\"><a href=\"" + url + "\">" + title + "</a></h5>";
                            html += "<span class=\"event-date\">" + startdatetime.format("ddd") + " " + startdatetime.format("ll") + "</span>";
                            if (daysToGo === 0) {
                                html += "<span class=\"daystogo\">Today</span>";
                            }
                            else if (daysToGo === 1) {
                                html += "<span class=\"daystogo\">" + daysToGo + " Day Passed</span>";
                            }

                            else {
                                html += "<span class=\"daystogo\">" + daysToGo + " Days Passed</span>";
                            }
                            html += "<span class=\"event-presenter\">" + presenterHtml + "</span>";
                            html += "</div>";
                            html += "</div>";
                            $("#eventsPane").append(html);
                        }

                    });

                    ////add power sessions            
                    var html = "See <a href=\"/ssw/Events/Training/Power-Sessions.aspx\">past Power Sessions</a> and <a href=\"/ssw/Events/ConferencePast.aspx\">past Conferences</a>.";
                    $("#eventsPane").append(html);

                    $.jStorage.set("pastEvents", $("#eventsPane").html(), { TTL: cacheDuration });
                });
            } else {
                $("#eventsPane").html(calendarData);

            }

        });
    };
