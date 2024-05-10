/* Minification failed. Returning unminified contents.
(2079,44-45): run-time error JS1100: Expected ',': =
(2211,115-116): run-time error JS1195: Expected expression: >
(2211,141-142): run-time error JS1195: Expected expression: >
(2211,160-163): run-time error JS1195: Expected expression: ===
(2211,170-171): run-time error JS1004: Expected ';': )
(2211,172-173): run-time error JS1004: Expected ';': {
(2232,14-15): run-time error JS1195: Expected expression: )
(2237,21-22): run-time error JS1004: Expected ';': {
(2273,43-44): run-time error JS1100: Expected ',': =
(2244,5-20): run-time error JS1018: 'return' statement outside of function: return isMobile
 */
window.SSW = window.SSW || {};

(function (uti, $, undefined) {
    uti.GetParameterByName = function (name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\?&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(window.location.search);
        if (results == null)
            return "";
        else
            return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
})(window.SSW.Utility = window.SSW.Utility || {}, jQuery);;
/*!
 * Bootstrap v3.2.0 (http://getbootstrap.com)
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */

/*!
 * Generated using the Bootstrap Customizer (http://getbootstrap.com/customize/?id=a377f13849e4254ff0f3)
 * Config saved to config.json and https://gist.github.com/a377f13849e4254ff0f3
 */
if("undefined"==typeof jQuery)throw new Error("Bootstrap's JavaScript requires jQuery");+function(t){"use strict";function e(e){return this.each(function(){var i=t(this),s=i.data("bs.alert");s||i.data("bs.alert",s=new o(this)),"string"==typeof e&&s[e].call(i)})}var i='[data-dismiss="alert"]',o=function(e){t(e).on("click",i,this.close)};o.VERSION="3.2.0",o.prototype.close=function(e){function i(){n.detach().trigger("closed.bs.alert").remove()}var o=t(this),s=o.attr("data-target");s||(s=o.attr("href"),s=s&&s.replace(/.*(?=#[^\s]*$)/,""));var n=t(s);e&&e.preventDefault(),n.length||(n=o.hasClass("alert")?o:o.parent()),n.trigger(e=t.Event("close.bs.alert")),e.isDefaultPrevented()||(n.removeClass("in"),t.support.transition&&n.hasClass("fade")?n.one("bsTransitionEnd",i).emulateTransitionEnd(150):i())};var s=t.fn.alert;t.fn.alert=e,t.fn.alert.Constructor=o,t.fn.alert.noConflict=function(){return t.fn.alert=s,this},t(document).on("click.bs.alert.data-api",i,o.prototype.close)}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.button"),n="object"==typeof e&&e;s||o.data("bs.button",s=new i(this,n)),"toggle"==e?s.toggle():e&&s.setState(e)})}var i=function(e,o){this.$element=t(e),this.options=t.extend({},i.DEFAULTS,o),this.isLoading=!1};i.VERSION="3.2.0",i.DEFAULTS={loadingText:"loading..."},i.prototype.setState=function(e){var i="disabled",o=this.$element,s=o.is("input")?"val":"html",n=o.data();e+="Text",null==n.resetText&&o.data("resetText",o[s]()),o[s](null==n[e]?this.options[e]:n[e]),setTimeout(t.proxy(function(){"loadingText"==e?(this.isLoading=!0,o.addClass(i).attr(i,i)):this.isLoading&&(this.isLoading=!1,o.removeClass(i).removeAttr(i))},this),0)},i.prototype.toggle=function(){var t=!0,e=this.$element.closest('[data-toggle="buttons"]');if(e.length){var i=this.$element.find("input");"radio"==i.prop("type")&&(i.prop("checked")&&this.$element.hasClass("active")?t=!1:e.find(".active").removeClass("active")),t&&i.prop("checked",!this.$element.hasClass("active")).trigger("change")}t&&this.$element.toggleClass("active")};var o=t.fn.button;t.fn.button=e,t.fn.button.Constructor=i,t.fn.button.noConflict=function(){return t.fn.button=o,this},t(document).on("click.bs.button.data-api",'[data-toggle^="button"]',function(i){var o=t(i.target);o.hasClass("btn")||(o=o.closest(".btn")),e.call(o,"toggle"),i.preventDefault()})}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.carousel"),n=t.extend({},i.DEFAULTS,o.data(),"object"==typeof e&&e),r="string"==typeof e?e:n.slide;s||o.data("bs.carousel",s=new i(this,n)),"number"==typeof e?s.to(e):r?s[r]():n.interval&&s.pause().cycle()})}var i=function(e,i){this.$element=t(e).on("keydown.bs.carousel",t.proxy(this.keydown,this)),this.$indicators=this.$element.find(".carousel-indicators"),this.options=i,this.paused=this.sliding=this.interval=this.$active=this.$items=null,"hover"==this.options.pause&&this.$element.on("mouseenter.bs.carousel",t.proxy(this.pause,this)).on("mouseleave.bs.carousel",t.proxy(this.cycle,this))};i.VERSION="3.2.0",i.DEFAULTS={interval:5e3,pause:"hover",wrap:!0},i.prototype.keydown=function(t){switch(t.which){case 37:this.prev();break;case 39:this.next();break;default:return}t.preventDefault()},i.prototype.cycle=function(e){return e||(this.paused=!1),this.interval&&clearInterval(this.interval),this.options.interval&&!this.paused&&(this.interval=setInterval(t.proxy(this.next,this),this.options.interval)),this},i.prototype.getItemIndex=function(t){return this.$items=t.parent().children(".item"),this.$items.index(t||this.$active)},i.prototype.to=function(e){var i=this,o=this.getItemIndex(this.$active=this.$element.find(".item.active"));return e>this.$items.length-1||0>e?void 0:this.sliding?this.$element.one("slid.bs.carousel",function(){i.to(e)}):o==e?this.pause().cycle():this.slide(e>o?"next":"prev",t(this.$items[e]))},i.prototype.pause=function(e){return e||(this.paused=!0),this.$element.find(".next, .prev").length&&t.support.transition&&(this.$element.trigger(t.support.transition.end),this.cycle(!0)),this.interval=clearInterval(this.interval),this},i.prototype.next=function(){return this.sliding?void 0:this.slide("next")},i.prototype.prev=function(){return this.sliding?void 0:this.slide("prev")},i.prototype.slide=function(e,i){var o=this.$element.find(".item.active"),s=i||o[e](),n=this.interval,r="next"==e?"left":"right",a="next"==e?"first":"last",l=this;if(!s.length){if(!this.options.wrap)return;s=this.$element.find(".item")[a]()}if(s.hasClass("active"))return this.sliding=!1;var h=s[0],p=t.Event("slide.bs.carousel",{relatedTarget:h,direction:r});if(this.$element.trigger(p),!p.isDefaultPrevented()){if(this.sliding=!0,n&&this.pause(),this.$indicators.length){this.$indicators.find(".active").removeClass("active");var c=t(this.$indicators.children()[this.getItemIndex(s)]);c&&c.addClass("active")}var d=t.Event("slid.bs.carousel",{relatedTarget:h,direction:r});return t.support.transition&&this.$element.hasClass("slide")?(s.addClass(e),s[0].offsetWidth,o.addClass(r),s.addClass(r),o.one("bsTransitionEnd",function(){s.removeClass([e,r].join(" ")).addClass("active"),o.removeClass(["active",r].join(" ")),l.sliding=!1,setTimeout(function(){l.$element.trigger(d)},0)}).emulateTransitionEnd(1e3*o.css("transition-duration").slice(0,-1))):(o.removeClass("active"),s.addClass("active"),this.sliding=!1,this.$element.trigger(d)),n&&this.cycle(),this}};var o=t.fn.carousel;t.fn.carousel=e,t.fn.carousel.Constructor=i,t.fn.carousel.noConflict=function(){return t.fn.carousel=o,this},t(document).on("click.bs.carousel.data-api","[data-slide], [data-slide-to]",function(i){var o,s=t(this),n=t(s.attr("data-target")||(o=s.attr("href"))&&o.replace(/.*(?=#[^\s]+$)/,""));if(n.hasClass("carousel")){var r=t.extend({},n.data(),s.data()),a=s.attr("data-slide-to");a&&(r.interval=!1),e.call(n,r),a&&n.data("bs.carousel").to(a),i.preventDefault()}}),t(window).on("load",function(){t('[data-ride="carousel"]').each(function(){var i=t(this);e.call(i,i.data())})})}(jQuery),+function(t){"use strict";function e(e){e&&3===e.which||(t(s).remove(),t(n).each(function(){var o=i(t(this)),s={relatedTarget:this};o.hasClass("open")&&(o.trigger(e=t.Event("hide.bs.dropdown",s)),e.isDefaultPrevented()||o.removeClass("open").trigger("hidden.bs.dropdown",s))}))}function i(e){var i=e.attr("data-target");i||(i=e.attr("href"),i=i&&/#[A-Za-z]/.test(i)&&i.replace(/.*(?=#[^\s]*$)/,""));var o=i&&t(i);return o&&o.length?o:e.parent()}function o(e){return this.each(function(){var i=t(this),o=i.data("bs.dropdown");o||i.data("bs.dropdown",o=new r(this)),"string"==typeof e&&o[e].call(i)})}var s=".dropdown-backdrop",n='[data-toggle="dropdown"]',r=function(e){t(e).on("click.bs.dropdown",this.toggle)};r.VERSION="3.2.0",r.prototype.toggle=function(o){var s=t(this);if(!s.is(".disabled, :disabled")){var n=i(s),r=n.hasClass("open");if(e(),!r){"ontouchstart"in document.documentElement&&!n.closest(".navbar-nav").length&&t('<div class="dropdown-backdrop"/>').insertAfter(t(this)).on("click",e);var a={relatedTarget:this};if(n.trigger(o=t.Event("show.bs.dropdown",a)),o.isDefaultPrevented())return;s.trigger("focus"),n.toggleClass("open").trigger("shown.bs.dropdown",a)}return!1}},r.prototype.keydown=function(e){if(/(38|40|27)/.test(e.keyCode)){var o=t(this);if(e.preventDefault(),e.stopPropagation(),!o.is(".disabled, :disabled")){var s=i(o),r=s.hasClass("open");if(!r||r&&27==e.keyCode)return 27==e.which&&s.find(n).trigger("focus"),o.trigger("click");var a=" li:not(.divider):visible a",l=s.find('[role="menu"]'+a+', [role="listbox"]'+a);if(l.length){var h=l.index(l.filter(":focus"));38==e.keyCode&&h>0&&h--,40==e.keyCode&&h<l.length-1&&h++,~h||(h=0),l.eq(h).trigger("focus")}}}};var a=t.fn.dropdown;t.fn.dropdown=o,t.fn.dropdown.Constructor=r,t.fn.dropdown.noConflict=function(){return t.fn.dropdown=a,this},t(document).on("click.bs.dropdown.data-api",e).on("click.bs.dropdown.data-api",".dropdown form",function(t){t.stopPropagation()}).on("click.bs.dropdown.data-api",n,r.prototype.toggle).on("keydown.bs.dropdown.data-api",n+', [role="menu"], [role="listbox"]',r.prototype.keydown)}(jQuery),+function(t){"use strict";function e(e,o){return this.each(function(){var s=t(this),n=s.data("bs.modal"),r=t.extend({},i.DEFAULTS,s.data(),"object"==typeof e&&e);n||s.data("bs.modal",n=new i(this,r)),"string"==typeof e?n[e](o):r.show&&n.show(o)})}var i=function(e,i){this.options=i,this.$body=t(document.body),this.$element=t(e),this.$backdrop=this.isShown=null,this.scrollbarWidth=0,this.options.remote&&this.$element.find(".modal-content").load(this.options.remote,t.proxy(function(){this.$element.trigger("loaded.bs.modal")},this))};i.VERSION="3.2.0",i.DEFAULTS={backdrop:!0,keyboard:!0,show:!0},i.prototype.toggle=function(t){return this.isShown?this.hide():this.show(t)},i.prototype.show=function(e){var i=this,o=t.Event("show.bs.modal",{relatedTarget:e});this.$element.trigger(o),this.isShown||o.isDefaultPrevented()||(this.isShown=!0,this.checkScrollbar(),this.$body.addClass("modal-open"),this.setScrollbar(),this.escape(),this.$element.on("click.dismiss.bs.modal",'[data-dismiss="modal"]',t.proxy(this.hide,this)),this.backdrop(function(){var o=t.support.transition&&i.$element.hasClass("fade");i.$element.parent().length||i.$element.appendTo(i.$body),i.$element.show().scrollTop(0),o&&i.$element[0].offsetWidth,i.$element.addClass("in").attr("aria-hidden",!1),i.enforceFocus();var s=t.Event("shown.bs.modal",{relatedTarget:e});o?i.$element.find(".modal-dialog").one("bsTransitionEnd",function(){i.$element.trigger("focus").trigger(s)}).emulateTransitionEnd(300):i.$element.trigger("focus").trigger(s)}))},i.prototype.hide=function(e){e&&e.preventDefault(),e=t.Event("hide.bs.modal"),this.$element.trigger(e),this.isShown&&!e.isDefaultPrevented()&&(this.isShown=!1,this.$body.removeClass("modal-open"),this.resetScrollbar(),this.escape(),t(document).off("focusin.bs.modal"),this.$element.removeClass("in").attr("aria-hidden",!0).off("click.dismiss.bs.modal"),t.support.transition&&this.$element.hasClass("fade")?this.$element.one("bsTransitionEnd",t.proxy(this.hideModal,this)).emulateTransitionEnd(300):this.hideModal())},i.prototype.enforceFocus=function(){t(document).off("focusin.bs.modal").on("focusin.bs.modal",t.proxy(function(t){this.$element[0]===t.target||this.$element.has(t.target).length||this.$element.trigger("focus")},this))},i.prototype.escape=function(){this.isShown&&this.options.keyboard?this.$element.on("keyup.dismiss.bs.modal",t.proxy(function(t){27==t.which&&this.hide()},this)):this.isShown||this.$element.off("keyup.dismiss.bs.modal")},i.prototype.hideModal=function(){var t=this;this.$element.hide(),this.backdrop(function(){t.$element.trigger("hidden.bs.modal")})},i.prototype.removeBackdrop=function(){this.$backdrop&&this.$backdrop.remove(),this.$backdrop=null},i.prototype.backdrop=function(e){var i=this,o=this.$element.hasClass("fade")?"fade":"";if(this.isShown&&this.options.backdrop){var s=t.support.transition&&o;if(this.$backdrop=t('<div class="modal-backdrop '+o+'" />').appendTo(this.$body),this.$element.on("click.dismiss.bs.modal",t.proxy(function(t){t.target===t.currentTarget&&("static"==this.options.backdrop?this.$element[0].focus.call(this.$element[0]):this.hide.call(this))},this)),s&&this.$backdrop[0].offsetWidth,this.$backdrop.addClass("in"),!e)return;s?this.$backdrop.one("bsTransitionEnd",e).emulateTransitionEnd(150):e()}else if(!this.isShown&&this.$backdrop){this.$backdrop.removeClass("in");var n=function(){i.removeBackdrop(),e&&e()};t.support.transition&&this.$element.hasClass("fade")?this.$backdrop.one("bsTransitionEnd",n).emulateTransitionEnd(150):n()}else e&&e()},i.prototype.checkScrollbar=function(){document.body.clientWidth>=window.innerWidth||(this.scrollbarWidth=this.scrollbarWidth||this.measureScrollbar())},i.prototype.setScrollbar=function(){var t=parseInt(this.$body.css("padding-right")||0,10);this.scrollbarWidth&&this.$body.css("padding-right",t+this.scrollbarWidth)},i.prototype.resetScrollbar=function(){this.$body.css("padding-right","")},i.prototype.measureScrollbar=function(){var t=document.createElement("div");t.className="modal-scrollbar-measure",this.$body.append(t);var e=t.offsetWidth-t.clientWidth;return this.$body[0].removeChild(t),e};var o=t.fn.modal;t.fn.modal=e,t.fn.modal.Constructor=i,t.fn.modal.noConflict=function(){return t.fn.modal=o,this},t(document).on("click.bs.modal.data-api",'[data-toggle="modal"]',function(i){var o=t(this),s=o.attr("href"),n=t(o.attr("data-target")||s&&s.replace(/.*(?=#[^\s]+$)/,"")),r=n.data("bs.modal")?"toggle":t.extend({remote:!/#/.test(s)&&s},n.data(),o.data());o.is("a")&&i.preventDefault(),n.one("show.bs.modal",function(t){t.isDefaultPrevented()||n.one("hidden.bs.modal",function(){o.is(":visible")&&o.trigger("focus")})}),e.call(n,r,this)})}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.tooltip"),n="object"==typeof e&&e;(s||"destroy"!=e)&&(s||o.data("bs.tooltip",s=new i(this,n)),"string"==typeof e&&s[e]())})}var i=function(t,e){this.type=this.options=this.enabled=this.timeout=this.hoverState=this.$element=null,this.init("tooltip",t,e)};i.VERSION="3.2.0",i.DEFAULTS={animation:!0,placement:"top",selector:!1,template:'<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:!1,container:!1,viewport:{selector:"body",padding:0}},i.prototype.init=function(e,i,o){this.enabled=!0,this.type=e,this.$element=t(i),this.options=this.getOptions(o),this.$viewport=this.options.viewport&&t(this.options.viewport.selector||this.options.viewport);for(var s=this.options.trigger.split(" "),n=s.length;n--;){var r=s[n];if("click"==r)this.$element.on("click."+this.type,this.options.selector,t.proxy(this.toggle,this));else if("manual"!=r){var a="hover"==r?"mouseenter":"focusin",l="hover"==r?"mouseleave":"focusout";this.$element.on(a+"."+this.type,this.options.selector,t.proxy(this.enter,this)),this.$element.on(l+"."+this.type,this.options.selector,t.proxy(this.leave,this))}}this.options.selector?this._options=t.extend({},this.options,{trigger:"manual",selector:""}):this.fixTitle()},i.prototype.getDefaults=function(){return i.DEFAULTS},i.prototype.getOptions=function(e){return e=t.extend({},this.getDefaults(),this.$element.data(),e),e.delay&&"number"==typeof e.delay&&(e.delay={show:e.delay,hide:e.delay}),e},i.prototype.getDelegateOptions=function(){var e={},i=this.getDefaults();return this._options&&t.each(this._options,function(t,o){i[t]!=o&&(e[t]=o)}),e},i.prototype.enter=function(e){var i=e instanceof this.constructor?e:t(e.currentTarget).data("bs."+this.type);return i||(i=new this.constructor(e.currentTarget,this.getDelegateOptions()),t(e.currentTarget).data("bs."+this.type,i)),clearTimeout(i.timeout),i.hoverState="in",i.options.delay&&i.options.delay.show?void(i.timeout=setTimeout(function(){"in"==i.hoverState&&i.show()},i.options.delay.show)):i.show()},i.prototype.leave=function(e){var i=e instanceof this.constructor?e:t(e.currentTarget).data("bs."+this.type);return i||(i=new this.constructor(e.currentTarget,this.getDelegateOptions()),t(e.currentTarget).data("bs."+this.type,i)),clearTimeout(i.timeout),i.hoverState="out",i.options.delay&&i.options.delay.hide?void(i.timeout=setTimeout(function(){"out"==i.hoverState&&i.hide()},i.options.delay.hide)):i.hide()},i.prototype.show=function(){var e=t.Event("show.bs."+this.type);if(this.hasContent()&&this.enabled){this.$element.trigger(e);var i=t.contains(document.documentElement,this.$element[0]);if(e.isDefaultPrevented()||!i)return;var o=this,s=this.tip(),n=this.getUID(this.type);this.setContent(),s.attr("id",n),this.$element.attr("aria-describedby",n),this.options.animation&&s.addClass("fade");var r="function"==typeof this.options.placement?this.options.placement.call(this,s[0],this.$element[0]):this.options.placement,a=/\s?auto?\s?/i,l=a.test(r);l&&(r=r.replace(a,"")||"top"),s.detach().css({top:0,left:0,display:"block"}).addClass(r).data("bs."+this.type,this),this.options.container?s.appendTo(this.options.container):s.insertAfter(this.$element);var h=this.getPosition(),p=s[0].offsetWidth,c=s[0].offsetHeight;if(l){var d=r,f=this.$element.parent(),u=this.getPosition(f);r="bottom"==r&&h.top+h.height+c-u.scroll>u.height?"top":"top"==r&&h.top-u.scroll-c<0?"bottom":"right"==r&&h.right+p>u.width?"left":"left"==r&&h.left-p<u.left?"right":r,s.removeClass(d).addClass(r)}var g=this.getCalculatedOffset(r,h,p,c);this.applyPlacement(g,r);var v=function(){o.$element.trigger("shown.bs."+o.type),o.hoverState=null};t.support.transition&&this.$tip.hasClass("fade")?s.one("bsTransitionEnd",v).emulateTransitionEnd(150):v()}},i.prototype.applyPlacement=function(e,i){var o=this.tip(),s=o[0].offsetWidth,n=o[0].offsetHeight,r=parseInt(o.css("margin-top"),10),a=parseInt(o.css("margin-left"),10);isNaN(r)&&(r=0),isNaN(a)&&(a=0),e.top=e.top+r,e.left=e.left+a,t.offset.setOffset(o[0],t.extend({using:function(t){o.css({top:Math.round(t.top),left:Math.round(t.left)})}},e),0),o.addClass("in");var l=o[0].offsetWidth,h=o[0].offsetHeight;"top"==i&&h!=n&&(e.top=e.top+n-h);var p=this.getViewportAdjustedDelta(i,e,l,h);p.left?e.left+=p.left:e.top+=p.top;var c=p.left?2*p.left-s+l:2*p.top-n+h,d=p.left?"left":"top",f=p.left?"offsetWidth":"offsetHeight";o.offset(e),this.replaceArrow(c,o[0][f],d)},i.prototype.replaceArrow=function(t,e,i){this.arrow().css(i,t?50*(1-t/e)+"%":"")},i.prototype.setContent=function(){var t=this.tip(),e=this.getTitle();t.find(".tooltip-inner")[this.options.html?"html":"text"](e),t.removeClass("fade in top bottom left right")},i.prototype.hide=function(){function e(){"in"!=i.hoverState&&o.detach(),i.$element.trigger("hidden.bs."+i.type)}var i=this,o=this.tip(),s=t.Event("hide.bs."+this.type);return this.$element.removeAttr("aria-describedby"),this.$element.trigger(s),s.isDefaultPrevented()?void 0:(o.removeClass("in"),t.support.transition&&this.$tip.hasClass("fade")?o.one("bsTransitionEnd",e).emulateTransitionEnd(150):e(),this.hoverState=null,this)},i.prototype.fixTitle=function(){var t=this.$element;(t.attr("title")||"string"!=typeof t.attr("data-original-title"))&&t.attr("data-original-title",t.attr("title")||"").attr("title","")},i.prototype.hasContent=function(){return this.getTitle()},i.prototype.getPosition=function(e){e=e||this.$element;var i=e[0],o="BODY"==i.tagName;return t.extend({},"function"==typeof i.getBoundingClientRect?i.getBoundingClientRect():null,{scroll:o?document.documentElement.scrollTop||document.body.scrollTop:e.scrollTop(),width:o?t(window).width():e.outerWidth(),height:o?t(window).height():e.outerHeight()},o?{top:0,left:0}:e.offset())},i.prototype.getCalculatedOffset=function(t,e,i,o){return"bottom"==t?{top:e.top+e.height,left:e.left+e.width/2-i/2}:"top"==t?{top:e.top-o,left:e.left+e.width/2-i/2}:"left"==t?{top:e.top+e.height/2-o/2,left:e.left-i}:{top:e.top+e.height/2-o/2,left:e.left+e.width}},i.prototype.getViewportAdjustedDelta=function(t,e,i,o){var s={top:0,left:0};if(!this.$viewport)return s;var n=this.options.viewport&&this.options.viewport.padding||0,r=this.getPosition(this.$viewport);if(/right|left/.test(t)){var a=e.top-n-r.scroll,l=e.top+n-r.scroll+o;a<r.top?s.top=r.top-a:l>r.top+r.height&&(s.top=r.top+r.height-l)}else{var h=e.left-n,p=e.left+n+i;h<r.left?s.left=r.left-h:p>r.width&&(s.left=r.left+r.width-p)}return s},i.prototype.getTitle=function(){var t,e=this.$element,i=this.options;return t=e.attr("data-original-title")||("function"==typeof i.title?i.title.call(e[0]):i.title)},i.prototype.getUID=function(t){do t+=~~(1e6*Math.random());while(document.getElementById(t));return t},i.prototype.tip=function(){return this.$tip=this.$tip||t(this.options.template)},i.prototype.arrow=function(){return this.$arrow=this.$arrow||this.tip().find(".tooltip-arrow")},i.prototype.validate=function(){this.$element[0].parentNode||(this.hide(),this.$element=null,this.options=null)},i.prototype.enable=function(){this.enabled=!0},i.prototype.disable=function(){this.enabled=!1},i.prototype.toggleEnabled=function(){this.enabled=!this.enabled},i.prototype.toggle=function(e){var i=this;e&&(i=t(e.currentTarget).data("bs."+this.type),i||(i=new this.constructor(e.currentTarget,this.getDelegateOptions()),t(e.currentTarget).data("bs."+this.type,i))),i.tip().hasClass("in")?i.leave(i):i.enter(i)},i.prototype.destroy=function(){clearTimeout(this.timeout),this.hide().$element.off("."+this.type).removeData("bs."+this.type)};var o=t.fn.tooltip;t.fn.tooltip=e,t.fn.tooltip.Constructor=i,t.fn.tooltip.noConflict=function(){return t.fn.tooltip=o,this}}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.popover"),n="object"==typeof e&&e;(s||"destroy"!=e)&&(s||o.data("bs.popover",s=new i(this,n)),"string"==typeof e&&s[e]())})}var i=function(t,e){this.init("popover",t,e)};if(!t.fn.tooltip)throw new Error("Popover requires tooltip.js");i.VERSION="3.2.0",i.DEFAULTS=t.extend({},t.fn.tooltip.Constructor.DEFAULTS,{placement:"right",trigger:"click",content:"",template:'<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'}),i.prototype=t.extend({},t.fn.tooltip.Constructor.prototype),i.prototype.constructor=i,i.prototype.getDefaults=function(){return i.DEFAULTS},i.prototype.setContent=function(){var t=this.tip(),e=this.getTitle(),i=this.getContent();t.find(".popover-title")[this.options.html?"html":"text"](e),t.find(".popover-content").empty()[this.options.html?"string"==typeof i?"html":"append":"text"](i),t.removeClass("fade top bottom left right in"),t.find(".popover-title").html()||t.find(".popover-title").hide()},i.prototype.hasContent=function(){return this.getTitle()||this.getContent()},i.prototype.getContent=function(){var t=this.$element,e=this.options;return t.attr("data-content")||("function"==typeof e.content?e.content.call(t[0]):e.content)},i.prototype.arrow=function(){return this.$arrow=this.$arrow||this.tip().find(".arrow")},i.prototype.tip=function(){return this.$tip||(this.$tip=t(this.options.template)),this.$tip};var o=t.fn.popover;t.fn.popover=e,t.fn.popover.Constructor=i,t.fn.popover.noConflict=function(){return t.fn.popover=o,this}}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.tab");s||o.data("bs.tab",s=new i(this)),"string"==typeof e&&s[e]()})}var i=function(e){this.element=t(e)};i.VERSION="3.2.0",i.prototype.show=function(){var e=this.element,i=e.closest("ul:not(.dropdown-menu)"),o=e.data("target");if(o||(o=e.attr("href"),o=o&&o.replace(/.*(?=#[^\s]*$)/,"")),!e.parent("li").hasClass("active")){var s=i.find(".active:last a")[0],n=t.Event("show.bs.tab",{relatedTarget:s});if(e.trigger(n),!n.isDefaultPrevented()){var r=t(o);this.activate(e.closest("li"),i),this.activate(r,r.parent(),function(){e.trigger({type:"shown.bs.tab",relatedTarget:s})})}}},i.prototype.activate=function(e,i,o){function s(){n.removeClass("active").find("> .dropdown-menu > .active").removeClass("active"),e.addClass("active"),r?(e[0].offsetWidth,e.addClass("in")):e.removeClass("fade"),e.parent(".dropdown-menu")&&e.closest("li.dropdown").addClass("active"),o&&o()}var n=i.find("> .active"),r=o&&t.support.transition&&n.hasClass("fade");r?n.one("bsTransitionEnd",s).emulateTransitionEnd(150):s(),n.removeClass("in")};var o=t.fn.tab;t.fn.tab=e,t.fn.tab.Constructor=i,t.fn.tab.noConflict=function(){return t.fn.tab=o,this},t(document).on("click.bs.tab.data-api",'[data-toggle="tab"], [data-toggle="pill"]',function(i){i.preventDefault(),e.call(t(this),"show")})}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.affix"),n="object"==typeof e&&e;s||o.data("bs.affix",s=new i(this,n)),"string"==typeof e&&s[e]()})}var i=function(e,o){this.options=t.extend({},i.DEFAULTS,o),this.$target=t(this.options.target).on("scroll.bs.affix.data-api",t.proxy(this.checkPosition,this)).on("click.bs.affix.data-api",t.proxy(this.checkPositionWithEventLoop,this)),this.$element=t(e),this.affixed=this.unpin=this.pinnedOffset=null,this.checkPosition()};i.VERSION="3.2.0",i.RESET="affix affix-top affix-bottom",i.DEFAULTS={offset:0,target:window},i.prototype.getPinnedOffset=function(){if(this.pinnedOffset)return this.pinnedOffset;this.$element.removeClass(i.RESET).addClass("affix");var t=this.$target.scrollTop(),e=this.$element.offset();return this.pinnedOffset=e.top-t},i.prototype.checkPositionWithEventLoop=function(){setTimeout(t.proxy(this.checkPosition,this),1)},i.prototype.checkPosition=function(){if(this.$element.is(":visible")){var e=t(document).height(),o=this.$target.scrollTop(),s=this.$element.offset(),n=this.options.offset,r=n.top,a=n.bottom;"object"!=typeof n&&(a=r=n),"function"==typeof r&&(r=n.top(this.$element)),"function"==typeof a&&(a=n.bottom(this.$element));var l=null!=this.unpin&&o+this.unpin<=s.top?!1:null!=a&&s.top+this.$element.height()>=e-a?"bottom":null!=r&&r>=o?"top":!1;if(this.affixed!==l){null!=this.unpin&&this.$element.css("top","");var h="affix"+(l?"-"+l:""),p=t.Event(h+".bs.affix");this.$element.trigger(p),p.isDefaultPrevented()||(this.affixed=l,this.unpin="bottom"==l?this.getPinnedOffset():null,this.$element.removeClass(i.RESET).addClass(h).trigger(t.Event(h.replace("affix","affixed"))),"bottom"==l&&this.$element.offset({top:e-this.$element.height()-a}))}}};var o=t.fn.affix;t.fn.affix=e,t.fn.affix.Constructor=i,t.fn.affix.noConflict=function(){return t.fn.affix=o,this},t(window).on("load",function(){t('[data-spy="affix"]').each(function(){var i=t(this),o=i.data();o.offset=o.offset||{},o.offsetBottom&&(o.offset.bottom=o.offsetBottom),o.offsetTop&&(o.offset.top=o.offsetTop),e.call(i,o)})})}(jQuery),+function(t){"use strict";function e(e){return this.each(function(){var o=t(this),s=o.data("bs.collapse"),n=t.extend({},i.DEFAULTS,o.data(),"object"==typeof e&&e);!s&&n.toggle&&"show"==e&&(e=!e),s||o.data("bs.collapse",s=new i(this,n)),"string"==typeof e&&s[e]()})}var i=function(e,o){this.$element=t(e),this.options=t.extend({},i.DEFAULTS,o),this.transitioning=null,this.options.parent&&(this.$parent=t(this.options.parent)),this.options.toggle&&this.toggle()};i.VERSION="3.2.0",i.DEFAULTS={toggle:!0},i.prototype.dimension=function(){var t=this.$element.hasClass("width");return t?"width":"height"},i.prototype.show=function(){if(!this.transitioning&&!this.$element.hasClass("in")){var i=t.Event("show.bs.collapse");if(this.$element.trigger(i),!i.isDefaultPrevented()){var o=this.$parent&&this.$parent.find("> .panel > .in");if(o&&o.length){var s=o.data("bs.collapse");if(s&&s.transitioning)return;e.call(o,"hide"),s||o.data("bs.collapse",null)}var n=this.dimension();this.$element.removeClass("collapse").addClass("collapsing")[n](0),this.transitioning=1;var r=function(){this.$element.removeClass("collapsing").addClass("collapse in")[n](""),this.transitioning=0,this.$element.trigger("shown.bs.collapse")};if(!t.support.transition)return r.call(this);var a=t.camelCase(["scroll",n].join("-"));this.$element.one("bsTransitionEnd",t.proxy(r,this)).emulateTransitionEnd(350)[n](this.$element[0][a])}}},i.prototype.hide=function(){if(!this.transitioning&&this.$element.hasClass("in")){var e=t.Event("hide.bs.collapse");if(this.$element.trigger(e),!e.isDefaultPrevented()){var i=this.dimension();this.$element[i](this.$element[i]())[0].offsetHeight,this.$element.addClass("collapsing").removeClass("collapse").removeClass("in"),this.transitioning=1;var o=function(){this.transitioning=0,this.$element.trigger("hidden.bs.collapse").removeClass("collapsing").addClass("collapse")};return t.support.transition?void this.$element[i](0).one("bsTransitionEnd",t.proxy(o,this)).emulateTransitionEnd(350):o.call(this)}}},i.prototype.toggle=function(){this[this.$element.hasClass("in")?"hide":"show"]()};var o=t.fn.collapse;t.fn.collapse=e,t.fn.collapse.Constructor=i,t.fn.collapse.noConflict=function(){return t.fn.collapse=o,this},t(document).on("click.bs.collapse.data-api",'[data-toggle="collapse"]',function(i){var o,s=t(this),n=s.attr("data-target")||i.preventDefault()||(o=s.attr("href"))&&o.replace(/.*(?=#[^\s]+$)/,""),r=t(n),a=r.data("bs.collapse"),l=a?"toggle":s.data(),h=s.attr("data-parent"),p=h&&t(h);a&&a.transitioning||(p&&p.find('[data-toggle="collapse"][data-parent="'+h+'"]').not(s).addClass("collapsed"),s[r.hasClass("in")?"addClass":"removeClass"]("collapsed")),e.call(r,l)})}(jQuery),+function(t){"use strict";function e(i,o){var s=t.proxy(this.process,this);this.$body=t("body"),this.$scrollElement=t(t(i).is("body")?window:i),this.options=t.extend({},e.DEFAULTS,o),this.selector=(this.options.target||"")+" .nav li > a",this.offsets=[],this.targets=[],this.activeTarget=null,this.scrollHeight=0,this.$scrollElement.on("scroll.bs.scrollspy",s),this.refresh(),this.process()}function i(i){return this.each(function(){var o=t(this),s=o.data("bs.scrollspy"),n="object"==typeof i&&i;s||o.data("bs.scrollspy",s=new e(this,n)),"string"==typeof i&&s[i]()})}e.VERSION="3.2.0",e.DEFAULTS={offset:10},e.prototype.getScrollHeight=function(){return this.$scrollElement[0].scrollHeight||Math.max(this.$body[0].scrollHeight,document.documentElement.scrollHeight)},e.prototype.refresh=function(){var e="offset",i=0;t.isWindow(this.$scrollElement[0])||(e="position",i=this.$scrollElement.scrollTop()),this.offsets=[],this.targets=[],this.scrollHeight=this.getScrollHeight();var o=this;this.$body.find(this.selector).map(function(){var o=t(this),s=o.data("target")||o.attr("href"),n=/^#./.test(s)&&t(s);return n&&n.length&&n.is(":visible")&&[[n[e]().top+i,s]]||null}).sort(function(t,e){return t[0]-e[0]}).each(function(){o.offsets.push(this[0]),o.targets.push(this[1])})},e.prototype.process=function(){var t,e=this.$scrollElement.scrollTop()+this.options.offset,i=this.getScrollHeight(),o=this.options.offset+i-this.$scrollElement.height(),s=this.offsets,n=this.targets,r=this.activeTarget;if(this.scrollHeight!=i&&this.refresh(),e>=o)return r!=(t=n[n.length-1])&&this.activate(t);if(r&&e<=s[0])return r!=(t=n[0])&&this.activate(t);for(t=s.length;t--;)r!=n[t]&&e>=s[t]&&(!s[t+1]||e<=s[t+1])&&this.activate(n[t])},e.prototype.activate=function(e){this.activeTarget=e,t(this.selector).parentsUntil(this.options.target,".active").removeClass("active");var i=this.selector+'[data-target="'+e+'"],'+this.selector+'[href="'+e+'"]',o=t(i).parents("li").addClass("active");o.parent(".dropdown-menu").length&&(o=o.closest("li.dropdown").addClass("active")),o.trigger("activate.bs.scrollspy")};var o=t.fn.scrollspy;t.fn.scrollspy=i,t.fn.scrollspy.Constructor=e,t.fn.scrollspy.noConflict=function(){return t.fn.scrollspy=o,this},t(window).on("load.bs.scrollspy.data-api",function(){t('[data-spy="scroll"]').each(function(){var e=t(this);i.call(e,e.data())})})}(jQuery),+function(t){"use strict";function e(){var t=document.createElement("bootstrap"),e={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd otransitionend",transition:"transitionend"};for(var i in e)if(void 0!==t.style[i])return{end:e[i]};return!1}t.fn.emulateTransitionEnd=function(e){var i=!1,o=this;t(this).one("bsTransitionEnd",function(){i=!0});var s=function(){i||t(o).trigger(t.support.transition.end)};return setTimeout(s,e),this},t(function(){t.support.transition=e(),t.support.transition&&(t.event.special.bsTransitionEnd={bindType:t.support.transition.end,delegateType:t.support.transition.end,handle:function(e){return t(e.target).is(this)?e.handleObj.handler.apply(this,arguments):void 0}})})}(jQuery);;
/**
 * bootstrap-multiselect.js
 * https://github.com/davidstutz/bootstrap-multiselect
 *
 * Copyright 2012, 2013 David Stutz
 * 
 * Dual licensed under the BSD-3-Clause and the Apache License, Version 2.0.
 */
!function ($) {

    "use strict";// jshint ;_;

    if (typeof ko != 'undefined' && ko.bindingHandlers && !ko.bindingHandlers.multiselect) {
        ko.bindingHandlers.multiselect = {
            init: function (element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) { },
            update: function (element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) {
                var ms = $(element).data('multiselect');
                if (!ms) {
                    $(element).multiselect(ko.utils.unwrapObservable(valueAccessor()));
                }
                else if (allBindingsAccessor().options && allBindingsAccessor().options().length !== ms.originalOptions.length) {
                    ms.updateOriginalOptions();
                    $(element).multiselect('rebuild');
                }
            }
        };
    }

    function Multiselect(select, options) {

        this.options = this.mergeOptions(options);
        this.$select = $(select);

        // Initialization.
        // We have to clone to create a new reference.
        this.originalOptions = this.$select.clone()[0].options;
        this.query = '';
        this.searchTimeout = null;

        this.options.multiple = this.$select.attr('multiple') == "multiple";
        this.options.onChange = $.proxy(this.options.onChange, this);

        // Build select all if enabled.
        this.buildContainer();
        this.buildButton();
        this.buildSelectAll();
        this.buildDropdown();
        this.buildDropdownOptions();
        this.buildFilter();
        this.updateButtonText();

        this.$select.hide().after(this.$container);
    };

    Multiselect.prototype = {

        // Default options.
        defaults: {
            // Default text function will either print 'None selected' in case no
            // option is selected, or a list of the selected options up to a length of 3 selected options.
            // If more than 3 options are selected, the number of selected options is printed.
            buttonText: function (options, select) {
                if (options.length == 0) {
                    return this.nonSelectedText + ' <b class="caret"></b>';
                }
                else {
                    if (options.length > 3) {
                        return options.length + ' ' + this.nSelectedText + ' <b class="caret"></b>';
                    }
                    else {
                        var selected = '';
                        options.each(function () {
                            var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).html();

                            selected += label + ', ';
                        });
                        return selected.substr(0, selected.length - 2) + ' <b class="caret"></b>';
                    }
                }
            },
            // Like the buttonText option to update the title of the button.
            buttonTitle: function (options, select) {
                if (options.length == 0) {
                    return this.nonSelectedText;
                }
                else {
                    var selected = '';
                    options.each(function () {
                        selected += $(this).text() + ', ';
                    });
                    return selected.substr(0, selected.length - 2);
                }
            },
            // Is triggered on change of the selected options.
            onChange: function (option, checked) {

            },
            buttonClass: 'btn',
            dropRight: false,
            selectedClass: 'active',
            buttonWidth: 'auto',
            buttonContainer: '<div class="btn-group" />',
            // Maximum height of the dropdown menu.
            // If maximum height is exceeded a scrollbar will be displayed.
            maxHeight: false,
            includeSelectAllOption: false,
            selectAllText: ' Select all',
            selectAllValue: 'multiselect-all',
            enableFiltering: false,
            enableCaseInsensitiveFiltering: false,
            filterPlaceholder: 'Search',
            // possible options: 'text', 'value', 'both'
            filterBehavior: 'text',
            preventInputChangeEvent: false,
            nonSelectedText: 'None selected',
            nSelectedText: 'selected'
        },

        // Templates.
        templates: {
            button: '<button type="button" class="multiselect dropdown-toggle" data-toggle="dropdown"></button>',
            ul: '<ul class="multiselect-container dropdown-menu"></ul>',
            filter: '<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span><input class="form-control multiselect-search" type="text"></div>',
            li: '<li><a href="javascript:void(0);"><label></label></a></li>',
            liGroup: '<li><label class="multiselect-group"></label></li>'
        },

        constructor: Multiselect,

        buildContainer: function () {
            this.$container = $(this.options.buttonContainer);
        },

        buildButton: function () {
            // Build button.
            this.$button = $(this.templates.button).addClass(this.options.buttonClass);

            // Adopt active state.
            if (this.$select.attr('disabled') == undefined) {
                this.$button.removeClass('disabled');
            }
            else {
                this.$button.addClass('disabled');
            }

            // Manually add button width if set.
            if (this.options.buttonWidth) {
                this.$button.css({
                    'width': this.options.buttonWidth
                });
            }

            // Keep the tab index from the select.
            var tabindex = this.$select.attr('tabindex');
            if (tabindex) {
                this.$button.attr('tabindex', tabindex);
            }

            this.$container.prepend(this.$button)
        },

        // Build dropdown container ul.
        buildDropdown: function () {

            // Build ul.
            this.$ul = $(this.templates.ul);

            if (this.options.dropRight) {
                this.$ul.addClass('pull-right');
            }

            // Set max height of dropdown menu to activate auto scrollbar.
            if (this.options.maxHeight) {
                // TODO: Add a class for this option to move the css declarations.
                this.$ul.css({
                    'max-height': this.options.maxHeight + 'px',
                    'overflow-y': 'auto',
                    'overflow-x': 'hidden'
                });
            }

            this.$container.append(this.$ul)
        },

        // Build the dropdown and bind event handling.
        buildDropdownOptions: function () {

            this.$select.children().each($.proxy(function (index, element) {
                // Support optgroups and options without a group simultaneously.
                var tag = $(element).prop('tagName').toLowerCase();
                if (tag == 'optgroup') {
                    this.createOptgroup(element);
                }
                else if (tag == 'option') {
                    this.createOptionValue(element);
                }
                // Other illegal tags will be ignored.
            }, this));

            // Bind the change event on the dropdown elements.
            $('li input', this.$ul).on('change', $.proxy(function (event) {
                var checked = $(event.target).prop('checked') || false;
                var isSelectAllOption = $(event.target).val() == this.options.selectAllValue;

                // Apply or unapply the configured selected class.
                if (this.options.selectedClass) {
                    if (checked) {
                        $(event.target).parents('li').addClass(this.options.selectedClass);
                    }
                    else {
                        $(event.target).parents('li').removeClass(this.options.selectedClass);
                    }
                }

                // Get the corresponding option.
                var value = $(event.target).val();
                var $option = this.getOptionByValue(value);

                var $optionsNotThis = $('option', this.$select).not($option);
                var $checkboxesNotThis = $('input', this.$container).not($(event.target));

                // Toggle all options if the select all option was changed.
                if (isSelectAllOption) {
                    $checkboxesNotThis.filter(function () {
                        return $(this).is(':checked') != checked;
                    }).trigger('click');
                }

                if (checked) {
                    $option.prop('selected', true);

                    if (this.options.multiple) {
                        // Simply select additional option.
                        $option.prop('selected', true);
                    }
                    else {
                        // Unselect all other options and corresponding checkboxes.
                        if (this.options.selectedClass) {
                            $($checkboxesNotThis).parents('li').removeClass(this.options.selectedClass);
                        }

                        $($checkboxesNotThis).prop('checked', false);
                        $optionsNotThis.prop('selected', false);

                        // It's a single selection, so close.
                        this.$button.click();
                    }

                    if (this.options.selectedClass == "active") {
                        $optionsNotThis.parents("a").css("outline", "");
                    }
                }
                else {
                    // Unselect option.
                    $option.prop('selected', false);
                }

                this.updateButtonText();
                this.$select.change();
                this.options.onChange($option, checked);

                if (this.options.preventInputChangeEvent) {
                    return false;
                }
            }, this));

            $('li a', this.$ul).on('touchstart click', function (event) {
                event.stopPropagation();
                $(event.target).blur();
            });

            // Keyboard support.
            this.$container.on('keydown', $.proxy(function (event) {
                if ($('input[type="text"]', this.$container).is(':focus')) {
                    return;
                }
                if ((event.keyCode == 9 || event.keyCode == 27) && this.$container.hasClass('open')) {
                    // Close on tab or escape.
                    this.$button.click();
                }
                else {
                    var $items = $(this.$container).find("li:not(.divider):visible a");

                    if (!$items.length) {
                        return;
                    }

                    var index = $items.index($items.filter(':focus'));

                    // Navigation up.
                    if (event.keyCode == 38 && index > 0) {
                        index--;
                    }
                        // Navigate down.
                    else if (event.keyCode == 40 && index < $items.length - 1) {
                        index++;
                    }
                    else if (!~index) {
                        index = 0;
                    }

                    var $current = $items.eq(index);
                    $current.focus();

                    if (event.keyCode == 32 || event.keyCode == 13) {
                        var $checkbox = $current.find('input');

                        $checkbox.prop("checked", !$checkbox.prop("checked"));
                        $checkbox.change();
                    }

                    event.stopPropagation();
                    event.preventDefault();
                }
            }, this));
        },

        // Will build an dropdown element for the given option.
        createOptionValue: function (element) {
            if ($(element).is(':selected')) {
                $(element).prop('selected', true);
            }

            // Support the label attribute on options.
            var label = $(element).attr('label') || $(element).html();
            var value = $(element).val();
            var inputType = this.options.multiple ? "checkbox" : "radio";

            var $li = $(this.templates.li);
            $('label', $li).addClass(inputType);
            $('label', $li).append('<input type="' + inputType + '" />');

            var selected = $(element).prop('selected') || false;
            var $checkbox = $('input', $li);
            $checkbox.val(value);

            if (value == this.options.selectAllValue) {
                $checkbox.parent().parent().addClass('multiselect-all');
            }

            $('label', $li).append(" " + label);

            this.$ul.append($li);

            if ($(element).is(':disabled')) {
                $checkbox.attr('disabled', 'disabled').prop('disabled', true).parents('li').addClass('disabled');
            }

            $checkbox.prop('checked', selected);

            if (selected && this.options.selectedClass) {
                $checkbox.parents('li').addClass(this.options.selectedClass);
            }
        },

        // Create optgroup.
        createOptgroup: function (group) {
            var groupName = $(group).prop('label');

            // Add a header for the group.
            var $li = $(this.templates.liGroup);
            $('label', $li).text(groupName);

            this.$ul.append($li);

            // Add the options of the group.
            $('option', group).each($.proxy(function (index, element) {
                this.createOptionValue(element);
            }, this));
        },

        // Add the select all option to the select.
        buildSelectAll: function () {
            var alreadyHasSelectAll = this.$select[0][0] ? this.$select[0][0].value == this.options.selectAllValue : false;
            // If options.includeSelectAllOption === true, add the include all checkbox.
            if (this.options.includeSelectAllOption && this.options.multiple && !alreadyHasSelectAll) {
                this.$select.prepend('<option value="' + this.options.selectAllValue + '">' + this.options.selectAllText + '</option>');
            }
        },

        // Build and bind filter.
        buildFilter: function () {

            // Build filter if filtering OR case insensitive filtering is enabled and the number of options exceeds (or equals) enableFilterLength.
            if (this.options.enableFiltering || this.options.enableCaseInsensitiveFiltering) {
                var enableFilterLength = Math.max(this.options.enableFiltering, this.options.enableCaseInsensitiveFiltering);
                if (this.$select.find('option').length >= enableFilterLength) {

                    this.$filter = $(this.templates.filter);
                    $('input', this.$filter).attr('placeholder', this.options.filterPlaceholder);
                    this.$ul.prepend(this.$filter);

                    this.$filter.val(this.query).on('click', function (event) {
                        event.stopPropagation();
                    }).on('keydown', $.proxy(function (event) {
                        // This is useful to catch "keydown" events after the browser has updated the control.
                        clearTimeout(this.searchTimeout);

                        this.searchTimeout = this.asyncFunction($.proxy(function () {

                            if (this.query != event.target.value) {
                                this.query = event.target.value;

                                $.each($('li', this.$ul), $.proxy(function (index, element) {
                                    var value = $('input', element).val();
                                    if (value != this.options.selectAllValue) {
                                        var text = $('label', element).text();
                                        var value = $('input', element).val();
                                        if (value && text && value != this.options.selectAllValue) {
                                            // by default lets assume that element is not
                                            // interesting for this search
                                            var showElement = false;

                                            var filterCandidate = '';
                                            if ((this.options.filterBehavior == 'text' || this.options.filterBehavior == 'both')) {
                                                filterCandidate = text;
                                            }
                                            if ((this.options.filterBehavior == 'value' || this.options.filterBehavior == 'both')) {
                                                filterCandidate = value;
                                            }

                                            if (this.options.enableCaseInsensitiveFiltering && filterCandidate.toLowerCase().indexOf(this.query.toLowerCase()) > -1) {
                                                showElement = true;
                                            }
                                            else if (filterCandidate.indexOf(this.query) > -1) {
                                                showElement = true;
                                            }

                                            if (showElement) {
                                                $(element).show();
                                            }
                                            else {
                                                $(element).hide();
                                            }
                                        }
                                    }
                                }, this));
                            }
                        }, this), 300, this);
                    }, this));
                }
            }
        },

        // Destroy - unbind - the plugin.
        destroy: function () {
            this.$container.remove();
            this.$select.show();
        },

        // Refreshs the checked options based on the current state of the select.
        refresh: function () {
            $('option', this.$select).each($.proxy(function (index, element) {
                var $input = $('li input', this.$ul).filter(function () {
                    return $(this).val() == $(element).val();
                });

                if ($(element).is(':selected')) {
                    $input.prop('checked', true);

                    if (this.options.selectedClass) {
                        $input.parents('li').addClass(this.options.selectedClass);
                    }
                }
                else {
                    $input.prop('checked', false);

                    if (this.options.selectedClass) {
                        $input.parents('li').removeClass(this.options.selectedClass);
                    }
                }

                if ($(element).is(":disabled")) {
                    $input.attr('disabled', 'disabled').prop('disabled', true).parents('li').addClass('disabled');
                }
                else {
                    $input.prop('disabled', false).parents('li').removeClass('disabled');
                }
            }, this));

            this.updateButtonText();
        },

        // Select an option by its value or multiple options using an array of values.
        select: function (selectValues) {
            if (selectValues && !$.isArray(selectValues)) {
                selectValues = [selectValues];
            }

            for (var i = 0; i < selectValues.length; i++) {

                var value = selectValues[i];

                var $option = this.getOptionByValue(value);
                var $checkbox = this.getInputByValue(value);

                if (this.options.selectedClass) {
                    $checkbox.parents('li').addClass(this.options.selectedClass);
                }

                $checkbox.prop('checked', true);
                $option.prop('selected', true);
                this.options.onChange($option, true);
            }

            this.updateButtonText();
        },

        // Deselect an option by its value or using an array of values.
        deselect: function (deselectValues) {
            if (deselectValues && !$.isArray(deselectValues)) {
                deselectValues = [deselectValues];
            }

            for (var i = 0; i < deselectValues.length; i++) {

                var value = deselectValues[i];

                var $option = this.getOptionByValue(value);
                var $checkbox = this.getInputByValue(value);

                if (this.options.selectedClass) {
                    $checkbox.parents('li').removeClass(this.options.selectedClass);
                }

                $checkbox.prop('checked', false);
                $option.prop('selected', false);
                this.options.onChange($option, false);
            }

            this.updateButtonText();
        },

        // Rebuild the whole dropdown menu.
        rebuild: function () {
            this.$ul.html('');

            // Remove select all option in select.
            $('option[value="' + this.options.selectAllValue + '"]', this.$select).remove();

            // Important to distinguish between radios and checkboxes.
            this.options.multiple = this.$select.attr('multiple') == "multiple";

            this.buildSelectAll();
            this.buildDropdownOptions();
            this.updateButtonText();
            this.buildFilter();
        },

        // Build select using the given data as options.
        dataprovider: function (dataprovider) {
            var optionDOM = "";
            dataprovider.forEach(function (option) {
                optionDOM += '<option value="' + option.value + '">' + option.label + '</option>';
            });

            this.$select.html(optionDOM);
            this.rebuild();
        },

        // Set options.
        setOptions: function (options) {
            this.options = this.mergeOptions(options);
        },

        // Get options by merging defaults and given options.
        mergeOptions: function (options) {
            return $.extend({}, this.defaults, options);
        },

        // Update button text and button title.
        updateButtonText: function () {
            var options = this.getSelected();
            console.log(options);
            // First update the displayed button text.
            $('button', this.$container).html(this.options.buttonText(options, this.$select));

            // Now update the title attribute of the button.
            $('button', this.$container).attr('title', this.options.buttonTitle(options, this.$select));

        },

        // Get all selected options.
        getSelected: function () {
            return $('option[value!="' + this.options.selectAllValue + '"]:selected', this.$select).filter(function () {
                return $(this).prop('selected');
            });
        },

        // Get the corresponding option by ts value.
        getOptionByValue: function (value) {
            return $('option', this.$select).filter(function () {
                return $(this).val() == value;
            });
        },

        // Get an input in the dropdown by its value.
        getInputByValue: function (value) {
            return $('li input', this.$ul).filter(function () {
                return $(this).val() == value;
            });
        },

        updateOriginalOptions: function () {
            this.originalOptions = this.$select.clone()[0].options;
        },

        asyncFunction: function (callback, timeout, self) {
            var args = Array.prototype.slice.call(arguments, 3);
            return setTimeout(function () {
                callback.apply(self || window, args);
            }, timeout);
        }
    };

    $.fn.multiselect = function (option, parameter) {
        return this.each(function () {
            var data = $(this).data('multiselect'), options = typeof option == 'object' && option;

            // Initialize the multiselect.
            if (!data) {
                $(this).data('multiselect', (data = new Multiselect(this, options)));
            }

            // Call multiselect method.
            if (typeof option == 'string') {
                data[option](parameter);
            }
        });
    };

    $.fn.multiselect.Constructor = Multiselect;

    // Automatically init selects by their data-role.
    $(function () {
        $("select[data-role=multiselect]").multiselect();
    });

}(window.jQuery);;
// JScript File 
//Script for Event Calendar on New.Master
function toggleBlock(blockID, textID) {
    var blockID = document.getElementById(blockID);
    var textID = document.getElementById(textID);

    if(blockID.style.display == '') {
	    blockID.style.display = 'none';
	    textID.innerHTML = "More <b>&#8744</b>";
    } else {
	    blockID.style.display = '';
	    textID.innerHTML = "Less <b>&#8743</b>";
    }
}
function switch1(div) {
var option=['WebsiteDevelopment','WindowsApplication','CMS','DatabaseDevelopment','SystemArchitecture','CustomSolutions'];
for(var i=0; i<option.length; i++) {
if (document.getElementById(option[i])) {
obj=document.getElementById(option[i]);
obj.style.display=(option[i]==div)? "block" : "none";
}
}
}
window.onload=function () {switch1('WebsiteDevelopment');};
var flags = {};
$(document).ready(function () {
    if (flags.hasModifiedLinkPic === true) {
        return;
    }
    flags.hasModifiedLinkPic = true;

    // var $a_not_has_img = $('body a:not(:has(img))');

    // $a_not_has_img.filter('a[href*=".pdf"]').before('<img src="/ssw/Images/IconPdf.png" title="pdf file"/> '); // pdf links look like: href="XXX.pdf#view=100%"

    // $a_not_has_img.filter('a[href$=".ppt"], a[href$=".pptx"]').before('<img src="/ssw/Images/IconPP.png" title="PowerPoint Presentation"/> ');

    // $a_not_has_img.filter('a[href$=".doc"], a[href$=".docx"]').before('<img src="/ssw/Images/IconDoc.png" title="Word Document"/> ');

    // $a_not_has_img.filter('a[href$=".wmv"]').before('<img src="/ssw/Images/iconwmv.png" title="Windows Media Video"/> ');

    // $a_not_has_img.filter('a[href$=".mp3"], a[href$=".wav"]').before('<img src="/ssw/Images/iconAudio.png" title="Audio File"/> ');

    // $a_not_has_img.filter('a[href$=".xls"], a[href$=".xlsx"], a[href$=".xlt"]').before('<img src="/ssw/Images/IconXls.png" title="Excel File"/> ');

    // $a_not_has_img.filter('a[target^="_blank"]').filter(function () {
    //     if (this.href.indexOf('/ssw/Redirect/') != -1) return false; // contains /ssw/redirect
    //     if (this.hostname.indexOf('ssw.com.au') == -1) return false; // not contain ssw.com.au
    //     return true;
    // }).after(' <img src="/ssw/images/external.gif" title="You are now leaving SSW"/>');

    // var $external = $a_not_has_img.filter('a:not(".ignore, .rsmLink")'); //Use class ignore on link to disable external links

    /*$external.filter(function () {
        if (!this.hostname) return false; // contains current server name
        if (this.href.indexOf('/ssw/Redirect/SSWSharePointEmployee.htm') != -1) return false; // stupid menu
        if (this.href.indexOf('/ssw/Redirect/UserGroupBlog.aspx') != -1) return false; // stupid menu
        if (this.href.indexOf('/ssw/Redirect/') != -1) return true; // contains /ssw/redirect
        if (this.hostname == location.hostname) return false; // contains current server
        if (this.hostname.indexOf('ssw.com.au') == -1) return true; // not contain ssw.com.au
        return false;
    }).after(' <img src="/ssw/images/external.gif" title="This opens in a new tab"/>'); */

});
;

function decodeit(test) {
    // gets the email address to be decoded
    var Decodedstring = test;

    var email = "";

    for (i = 0; i < Decodedstring.length; i += 2) {
        // holds each letter (2 digits)
        var letter = "";
        letter = Decodedstring.charAt(i) + Decodedstring.charAt(i + 1);

        // parse it to normal
        email += String.fromCharCode(parseInt(letter, 16));

    }

    return email;
}

function decodeEmail(encodedEmail) {
    // holds the decoded email address
    var email = "";

    // go through and decode the email address
    for (i = 0; i < encodedEmail.length;) {
        // holds each letter (2 digits)
        var letter = "";
        letter = encodedEmail.charAt(i) + encodedEmail.charAt(i + 1);

        // build the real email address
        email += String.fromCharCode(parseInt(letter, 16));
        i += 2;
    }

    return email;
}
function encodeit(decodedEmail) {
    // gets the email address to be decoded
    var stringtoencode = decodedEmail;
    var stringencoded = "";

    for (i = 0; i < stringtoencode.length; i++) {

        stringencoded += stringtoencode.charCodeAt(i).toString(16);
    }

    return stringencoded;

}


function sendEmailWithSubject(para, emailSubject, object) {
    // do the mailto: link

    if (para != null) {

        var email = "mailto:" + decodeit(para);

        if (object != null) {

            object.href = email + "?subject=" + emailSubject;



            if (object.getAttribute("keepText") != "true" || object.keepText != "true")
                if (object.innerText != null) {

                    object.innerText = decodeit(para);

                }
        }
    }
}

function sendEmailWithoutSubject(para, object) {

    if (para != null) {

        var email = "mailto:" + decodeit(para);

        if (object != null) {

            object.href = email;
        }
    }
}

function sendEmailWithSubjectAndBody(para, emailSubject, emailBody, object) {
    if (para != null) {
        var email = "mailto:" + decodeit(para);
        if (object != null) {
            object.href = email + "?subject=" + emailSubject + "&body=" + emailBody;

            if (object.getAttribute("keepText") != "true" || object.keepText != "true")
                if (object.innerText != null) {

                    object.innerText = decodeit(para);

                }
        }
    }
}


function displayStatus(encodedEmail) {
    self.status = "mailto:" + decodeit(encodedEmail);
}

// clear the statusbar message
function clearStatus() {
    self.status = "";
}
function onLoading() {

    var i = 0;

    //var email = "mailto:" + decodeit("696e666f72407373772e636f6d2e6175");

    var array = document.getElementsByTagName('a');

    if (array != null) {
        for (i = 0; i < array.length; i++) {

            //only apply value when attribute is not null, otherwise, it will apply string 'null' value in IE, which will cause buttons disappear problem on sign in page
            if (array[i].getAttribute("process") != null && array[i].process == null) {
                array[i].process = array[i].getAttribute("process");
            }
            if (array[i].getAttribute("category") != null && array[i].category == null) {
                array[i].category = array[i].getAttribute("category");
            }
            if (array[i].getAttribute("encode") != null && array[i].encode == null) {
                array[i].encode = array[i].getAttribute("encode");
            }
            if (array[i].getAttribute("keepText") != null && array[i].keepText == null) {
                array[i].keepText = array[i].getAttribute("keepText");
            }

            if (array[i].process == 'true' && array[i].category == 'info') {

                if (array[i].innerText != null) {
                    array[i].innerText = decodeit('696e666f407373772e636f6d2e6175');

                }
                else {

                    array[i].textContent = decodeit('696e666f407373772e636f6d2e6175');
                }

            }
            else if (array[i].process == 'true' && array[i].category == 'HelenMoore') {
                if (array[i].innerText != null) {
                    array[i].innerText = decodeit('48656c656e4d6f6f7265407373772e636f6d2e6175');

                }
                else {

                    array[i].textContent = decodeit('48656c656e4d6f6f7265407373772e636f6d2e6175');
                }

            }
            else if (array[i].process == 'true' && array[i].category == 'Ulysses') {
                if (array[i].innerText != null) {
                    array[i].innerText = decodeit('756C7973736573407373772E636F6D2E6175');

                }
                else {

                    array[i].textContent = decodeit('756C7973736573407373772E636F6D2E6175');
                }

            }
            else if (array[i].innerText != null) {
                if (array[i].encode != null && (array[i].keepText != "true" || array[i].keepText == null))
                    array[i].innerText = decodeit(array[i].encode);

            }
            else {
                if (array[i].getAttribute("encode") != null && array[i].getAttribute("keepText") != "true") {
                    array[i].textContent = decodeit(array[i].getAttribute("encode"));
                }
            }


        }
    }
}
function sendEmail(encodedEmail, emailSubject) {
    let loc = 'mailto:' + decodeEmail(encodedEmail);
    if (emailSubject && emailSubject.length) {
        loc += '?subject=' + emailSubject;
    }
    location.href = loc;
}
function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            if (oldonload) {
                oldonload();
            }
            func();
        }
    }
}
addLoadEvent(onLoading);
;
(function(n){"use strict";function f(n){return new RegExp("(^|\\s+)"+n+"(\\s+|$)")}function e(n,u){var f=t(n,u)?r:i;f(n,u)}var t,i,r,u;"classList"in document.documentElement?(t=function(n,t){return n.classList.contains(t)},i=function(n,t){n.classList.add(t)},r=function(n,t){n.classList.remove(t)}):(t=function(n,t){return f(t).test(n.className)},i=function(n,i){t(n,i)||(n.className=n.className+" "+i)},r=function(n,t){n.className=n.className.replace(f(t)," ")});u={hasClass:t,addClass:i,removeClass:r,toggleClass:e,has:t,add:i,remove:r,toggle:e};typeof define=="function"&&define.amd?define(u):n.classie=u})(window),function(n){"use strict";function f(t){var i=n.event;return i.target=i.target||i.srcElement||t,i}var t=document.documentElement,u=function(){},i,r;t.addEventListener?u=function(n,t,i){n.addEventListener(t,i,!1)}:t.attachEvent&&(u=function(n,t,i){n[t+i]=i.handleEvent?function(){var t=f(n);i.handleEvent.call(i,t)}:function(){var t=f(n);i.call(n,t)};n.attachEvent("on"+t,n[t+i])});i=function(){};t.removeEventListener?i=function(n,t,i){n.removeEventListener(t,i,!1)}:t.detachEvent&&(i=function(n,t,i){n.detachEvent("on"+t,n[t+i]);try{delete n[t+i]}catch(r){n[t+i]=undefined}});r={bind:u,unbind:i};typeof define=="function"&&define.amd?define(r):typeof exports=="object"?module.exports=r:n.eventie=r}(this),function(n){"use strict";function t(n){typeof n=="function"&&(t.isReady?n():r.push(n))}function u(n){var o=n.type==="readystatechange"&&i.readyState!=="complete",u,f,e;if(!t.isReady&&!o)for(t.isReady=!0,u=0,f=r.length;u<f;u++)e=r[u],e()}function f(r){return r.bind(i,"DOMContentLoaded",u),r.bind(i,"readystatechange",u),r.bind(n,"load",u),t}var i=n.document,r=[];t.isReady=!1;typeof define=="function"&&define.amd?(t.isReady=typeof requirejs=="function",define(["eventie/eventie"],f)):n.docReady=f(n.eventie)}(this),function(n){"use strict";function t(n){var u,t,f;if(n){if(typeof r[n]=="string")return n;for(n=n.charAt(0).toUpperCase()+n.slice(1),t=0,f=i.length;t<f;t++)if(u=i[t]+n,typeof r[u]=="string")return u}}var i="Webkit Moz ms Ms O".split(" "),r=document.documentElement.style;typeof define=="function"&&define.amd?define(function(){return t}):typeof exports=="object"?module.exports=t:n.getStyleProperty=t}(window),function(n){"use strict";function r(n){var t=parseFloat(n),i=n.indexOf("%")===-1&&!isNaN(t);return i&&t}function e(){for(var r,i={width:0,height:0,innerWidth:0,innerHeight:0,outerWidth:0,outerHeight:0},n=0,u=t.length;n<u;n++)r=t[n],i[r]=0;return i}function u(n){function s(n){var s,i,p,c,w,a,l,v,y;if(typeof n=="string"&&(n=document.querySelector(n)),n&&typeof n=="object"&&n.nodeType){if(s=f(n),s.display==="none")return e();for(i={},i.width=n.offsetWidth,i.height=n.offsetHeight,p=i.isBorderBox=!!(u&&s[u]&&s[u]==="border-box"),c=0,w=t.length;c<w;c++)a=t[c],l=s[a],l=h(n,l),v=parseFloat(l),i[a]=isNaN(v)?0:v;var b=i.paddingLeft+i.paddingRight,k=i.paddingTop+i.paddingBottom,it=i.marginLeft+i.marginRight,rt=i.marginTop+i.marginBottom,d=i.borderLeftWidth+i.borderRightWidth,g=i.borderTopWidth+i.borderBottomWidth,nt=p&&o,tt=r(s.width);return tt!==!1&&(i.width=tt+(nt?0:b+d)),y=r(s.height),y!==!1&&(i.height=y+(nt?0:k+g)),i.innerWidth=i.width-(b+d),i.innerHeight=i.height-(k+g),i.outerWidth=i.width+it,i.outerHeight=i.height+rt,i}}function h(n,t){if(i||t.indexOf("%")===-1)return t;var r=n.style,e=r.left,u=n.runtimeStyle,f=u&&u.left;return f&&(u.left=n.currentStyle.left),r.left=t,t=r.pixelLeft,r.left=e,f&&(u.left=f),t}var u=n("boxSizing"),o;return function(){var n,t,i;u&&(n=document.createElement("div"),n.style.width="200px",n.style.padding="1px 2px 3px 4px",n.style.borderStyle="solid",n.style.borderWidth="1px 2px 3px 4px",n.style[u]="border-box",t=document.body||document.documentElement,t.appendChild(n),i=f(n),o=r(i.width)===200,t.removeChild(n))}(),s}var i=n.getComputedStyle,f=i?function(n){return i(n,null)}:function(n){return n.currentStyle},t=["paddingLeft","paddingRight","paddingTop","paddingBottom","marginLeft","marginRight","marginTop","marginBottom","borderLeftWidth","borderRightWidth","borderTopWidth","borderBottomWidth"];typeof define=="function"&&define.amd?define(["get-style-property/get-style-property"],u):typeof exports=="object"?module.exports=u(require("get-style-property")):n.getSize=u(n.getStyleProperty)}(window),function(){"use strict";function t(){}function u(n,t){for(var i=n.length;i--;)if(n[i].listener===t)return i;return-1}function i(n){return function(){return this[n].apply(this,arguments)}}var n=t.prototype,r=this,f=r.EventEmitter;n.getListeners=function(n){var t=this._getEvents(),r,i;if(n instanceof RegExp){r={};for(i in t)t.hasOwnProperty(i)&&n.test(i)&&(r[i]=t[i])}else r=t[n]||(t[n]=[]);return r};n.flattenListeners=function(n){for(var i=[],t=0;t<n.length;t+=1)i.push(n[t].listener);return i};n.getListenersAsObject=function(n){var t=this.getListeners(n),i;return t instanceof Array&&(i={},i[n]=t),i||t};n.addListener=function(n,t){var i=this.getListenersAsObject(n),f=typeof t=="object";for(var r in i)i.hasOwnProperty(r)&&u(i[r],t)===-1&&i[r].push(f?t:{listener:t,once:!1});return this};n.on=i("addListener");n.addOnceListener=function(n,t){return this.addListener(n,{listener:t,once:!0})};n.once=i("addOnceListener");n.defineEvent=function(n){return this.getListeners(n),this};n.defineEvents=function(n){for(var t=0;t<n.length;t+=1)this.defineEvent(n[t]);return this};n.removeListener=function(n,t){var i=this.getListenersAsObject(n),r;for(var f in i)i.hasOwnProperty(f)&&(r=u(i[f],t),r!==-1&&i[f].splice(r,1));return this};n.off=i("removeListener");n.addListeners=function(n,t){return this.manipulateListeners(!1,n,t)};n.removeListeners=function(n,t){return this.manipulateListeners(!0,n,t)};n.manipulateListeners=function(n,t,i){var r,u,f=n?this.removeListener:this.addListener,e=n?this.removeListeners:this.addListeners;if(typeof t!="object"||t instanceof RegExp)for(r=i.length;r--;)f.call(this,t,i[r]);else for(r in t)t.hasOwnProperty(r)&&(u=t[r])&&(typeof u=="function"?f.call(this,r,u):e.call(this,r,u));return this};n.removeEvent=function(n){var r=typeof n,t=this._getEvents(),i;if(r==="string")delete t[n];else if(n instanceof RegExp)for(i in t)t.hasOwnProperty(i)&&n.test(i)&&delete t[i];else delete this._events;return this};n.removeAllListeners=i("removeEvent");n.emitEvent=function(n,t){var r=this.getListenersAsObject(n),i,f,u,e;for(u in r)if(r.hasOwnProperty(u))for(f=r[u].length;f--;)i=r[u][f],i.once===!0&&this.removeListener(n,i.listener),e=i.listener.apply(this,t||[]),e===this._getOnceReturnValue()&&this.removeListener(n,i.listener);return this};n.trigger=i("emitEvent");n.emit=function(n){var t=Array.prototype.slice.call(arguments,1);return this.emitEvent(n,t)};n.setOnceReturnValue=function(n){return this._onceReturnValue=n,this};n._getOnceReturnValue=function(){return this.hasOwnProperty("_onceReturnValue")?this._onceReturnValue:!0};n._getEvents=function(){return this._events||(this._events={})};t.noConflict=function(){return r.EventEmitter=f,t};typeof define=="function"&&define.amd?define(function(){return t}):typeof module=="object"&&module.exports?module.exports=t:this.EventEmitter=t}.call(this),function(n,t){"use strict";typeof define=="function"&&define.amd?define(["eventEmitter/EventEmitter","eventie/eventie"],function(i,r){return t(n,i,r)}):typeof exports=="object"?module.exports=t(n,require("eventEmitter"),require("eventie")):n.imagesLoaded=t(n,n.EventEmitter,n.eventie)}(this,function(n,t,i){"use strict";function h(n,t){for(var i in t)n[i]=t[i];return n}function a(n){return l.call(n)==="[object Array]"}function v(n){var t=[],i,r;if(a(n))t=n;else if(typeof n.length=="number")for(i=0,r=n.length;i<r;i++)t.push(n[i]);else t.push(n);return t}function r(n,t,i){if(!(this instanceof r))return new r(n,t);if(typeof n=="string"&&(n=document.querySelectorAll(n)),this.elements=v(n),this.options=h({},this.options),typeof t=="function"?i=t:h(this.options,t),i)this.on("always",i);this.getImages();f&&(this.jqDeferred=new f.Deferred);var u=this;setTimeout(function(){u.check()})}function e(n){this.img=n}function u(n){this.src=n;o[n]=this}var f=n.jQuery,s=n.console,c=typeof s!="undefined",l=Object.prototype.toString,o;return r.prototype=new t,r.prototype.options={},r.prototype.getImages=function(){var n,u,t,r,i,f,e;for(this.images=[],n=0,u=this.elements.length;n<u;n++)for(t=this.elements[n],t.nodeName==="IMG"&&this.addImage(t),r=t.querySelectorAll("img"),i=0,f=r.length;i<f;i++)e=r[i],this.addImage(e)},r.prototype.addImage=function(n){var t=new e(n);this.images.push(t)},r.prototype.check=function(){function f(n,r){return t.options.debug&&c&&s.log("confirm",n,r),t.progress(n),u++,u===i&&t.complete(),!0}var t=this,u=0,i=this.images.length,n,r;if(this.hasAnyBroken=!1,!i){this.complete();return}for(n=0;n<i;n++){r=this.images[n];r.on("confirm",f);r.check()}},r.prototype.progress=function(n){this.hasAnyBroken=this.hasAnyBroken||!n.isLoaded;var t=this;setTimeout(function(){t.emit("progress",t,n);t.jqDeferred&&t.jqDeferred.notify&&t.jqDeferred.notify(t,n)})},r.prototype.complete=function(){var t=this.hasAnyBroken?"fail":"done",n;this.isComplete=!0;n=this;setTimeout(function(){if(n.emit(t,n),n.emit("always",n),n.jqDeferred){var i=n.hasAnyBroken?"reject":"resolve";n.jqDeferred[i](n)}})},f&&(f.fn.imagesLoaded=function(n,t){var i=new r(this,n,t);return i.jqDeferred.promise(f(this))}),e.prototype=new t,e.prototype.check=function(){var n=o[this.img.src]||new u(this.img.src),t;if(n.isConfirmed){this.confirm(n.isLoaded,"cached was confirmed");return}if(this.img.complete&&this.img.naturalWidth!==undefined){this.confirm(this.img.naturalWidth!==0,"naturalWidth");return}t=this;n.on("confirm",function(n,i){return t.confirm(n.isLoaded,i),!0});n.check()},e.prototype.confirm=function(n,t){this.isLoaded=n;this.emit("confirm",this,t)},o={},u.prototype=new t,u.prototype.check=function(){if(!this.isChecked){var n=new Image;i.bind(n,"load",this);i.bind(n,"error",this);n.src=this.src;this.isChecked=!0}},u.prototype.handleEvent=function(n){var t="on"+n.type;this[t]&&this[t](n)},u.prototype.onload=function(n){this.confirm(!0,"onload");this.unbindProxyEvents(n)},u.prototype.onerror=function(n){this.confirm(!1,"onerror");this.unbindProxyEvents(n)},u.prototype.confirm=function(n,t){this.isConfirmed=!0;this.isLoaded=n;this.emit("confirm",this,t)},u.prototype.unbindProxyEvents=function(n){i.unbind(n.target,"load",this);i.unbind(n.target,"error",this)},r}),function(n){"use strict";function r(){}function t(n){function u(t){t.prototype.option||(t.prototype.option=function(t){n.isPlainObject(t)&&(this.options=n.extend(!0,this.options,t))})}function f(r,u){n.fn[r]=function(f){var h,o,c,l,e,s;if(typeof f=="string"){for(h=i.call(arguments,1),o=0,c=this.length;o<c;o++){if(l=this[o],e=n.data(l,r),!e){t("cannot call methods on "+r+" prior to initialization; attempted to call '"+f+"'");continue}if(!n.isFunction(e[f])||f.charAt(0)==="_"){t("no such method '"+f+"' for "+r+" instance");continue}if(s=e[f].apply(e,h),s!==undefined)return s}return this}return this.each(function(){var t=n.data(this,r);t?(t.option(f),t._init()):(t=new u(this,f),n.data(this,r,t))})}}if(n){var t=typeof console=="undefined"?r:function(n){console.error(n)};return n.bridget=function(n,t){u(t);f(n,t)},n.bridget}}var i=Array.prototype.slice;typeof define=="function"&&define.amd?define(["jquery"],t):t(n.jQuery)}(window),function(n,t){"use strict";function r(n,t){return n[u](t)}function f(n){if(!n.parentNode){var t=document.createDocumentFragment();t.appendChild(n)}}function s(n,t){var r,i,u;for(f(n),r=n.parentNode.querySelectorAll(t),i=0,u=r.length;i<u;i++)if(r[i]===n)return!0;return!1}function h(n,t){return f(n),r(n,t)}var u=function(){var i,n,u,f,r;if(t.matchesSelector)return"matchesSelector";for(i=["webkit","moz","ms","o"],n=0,u=i.length;n<u;n++)if(f=i[n],r=f+"MatchesSelector",t[r])return r}(),i,e,o;u?(e=document.createElement("div"),o=r(e,"div"),i=o?r:h):i=s;typeof define=="function"&&define.amd?define(function(){return i}):window.matchesSelector=i}(this,Element.prototype),function(n){"use strict";function u(n,t){for(var i in t)n[i]=t[i];return n}function f(n){for(var t in n)return!1;return t=null,!0}function e(n){return n.replace(/([A-Z])/g,function(n){return"-"+n.toLowerCase()})}function i(n,t,i){function o(n,t){n&&(this.element=n,this.layout=t,this.position={x:0,y:0},this._create())}var s=i("transition"),h=i("transform"),w=s&&h,b=!!i("perspective"),c={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"otransitionend",transition:"transitionend"}[s],l=["transform","transition","transitionDuration","transitionProperty"],k=function(){for(var n,t,u={},r=0,f=l.length;r<f;r++)n=l[r],t=i(n),t&&t!==n&&(u[n]=t);return u}(),a,v,y,p;return u(o.prototype,n.prototype),o.prototype._create=function(){this._transn={ingProperties:{},clean:{},onEnd:{}};this.css({position:"absolute"})},o.prototype.handleEvent=function(n){var t="on"+n.type;this[t]&&this[t](n)},o.prototype.getSize=function(){this.size=t(this.element)},o.prototype.css=function(n){var r=this.element.style,t,i;for(t in n)i=k[t]||t,r[i]=n[t]},o.prototype.getPosition=function(){var u=r(this.element),f=this.layout.options,e=f.isOriginLeft,o=f.isOriginTop,n=parseInt(u[e?"left":"right"],10),t=parseInt(u[o?"top":"bottom"],10),i;n=isNaN(n)?0:n;t=isNaN(t)?0:t;i=this.layout.size;n-=e?i.paddingLeft:i.paddingRight;t-=o?i.paddingTop:i.paddingBottom;this.position.x=n;this.position.y=t},o.prototype.layoutPosition=function(){var t=this.layout.size,i=this.layout.options,n={};i.isOriginLeft?(n.left=this.position.x+t.paddingLeft+"px",n.right=""):(n.right=this.position.x+t.paddingRight+"px",n.left="");i.isOriginTop?(n.top=this.position.y+t.paddingTop+"px",n.bottom=""):(n.bottom=this.position.y+t.paddingBottom+"px",n.top="");this.css(n);this.emitEvent("layout",[this])},a=b?function(n,t){return"translate3d("+n+"px, "+t+"px, 0)"}:function(n,t){return"translate("+n+"px, "+t+"px)"},o.prototype._transitionTo=function(n,t){this.getPosition();var e=this.position.x,o=this.position.y,s=parseInt(n,10),h=parseInt(t,10),c=s===this.position.x&&h===this.position.y;if(this.setPosition(n,t),c&&!this.isTransitioning){this.layoutPosition();return}var i=n-e,r=t-o,u={},f=this.layout.options;i=f.isOriginLeft?i:-i;r=f.isOriginTop?r:-r;u.transform=a(i,r);this.transition({to:u,onTransitionEnd:{transform:this.layoutPosition},isCleaning:!0})},o.prototype.goTo=function(n,t){this.setPosition(n,t);this.layoutPosition()},o.prototype.moveTo=w?o.prototype._transitionTo:o.prototype.goTo,o.prototype.setPosition=function(n,t){this.position.x=parseInt(n,10);this.position.y=parseInt(t,10)},o.prototype._nonTransition=function(n){this.css(n.to);n.isCleaning&&this._removeStyles(n.to);for(var t in n.onTransitionEnd)n.onTransitionEnd[t].call(this)},o.prototype._transition=function(n){var i,t,r;if(!parseFloat(this.layout.options.transitionDuration)){this._nonTransition(n);return}i=this._transn;for(t in n.onTransitionEnd)i.onEnd[t]=n.onTransitionEnd[t];for(t in n.to)i.ingProperties[t]=!0,n.isCleaning&&(i.clean[t]=!0);n.from&&(this.css(n.from),r=this.element.offsetHeight,r=null);this.enableTransition(n.to);this.css(n.to);this.isTransitioning=!0},v=h&&e(h)+",opacity",o.prototype.enableTransition=function(){this.isTransitioning||(this.css({transitionProperty:v,transitionDuration:this.layout.options.transitionDuration}),this.element.addEventListener(c,this,!1))},o.prototype.transition=o.prototype[s?"_transition":"_nonTransition"],o.prototype.onwebkitTransitionEnd=function(n){this.ontransitionend(n)},o.prototype.onotransitionend=function(n){this.ontransitionend(n)},y={"-webkit-transform":"transform","-moz-transform":"transform","-o-transform":"transform"},o.prototype.ontransitionend=function(n){var t,i,r;n.target===this.element&&(t=this._transn,i=y[n.propertyName]||n.propertyName,delete t.ingProperties[i],f(t.ingProperties)&&this.disableTransition(),i in t.clean&&(this.element.style[n.propertyName]="",delete t.clean[i]),i in t.onEnd&&(r=t.onEnd[i],r.call(this),delete t.onEnd[i]),this.emitEvent("transitionEnd",[this]))},o.prototype.disableTransition=function(){this.removeTransitionStyles();this.element.removeEventListener(c,this,!1);this.isTransitioning=!1},o.prototype._removeStyles=function(n){var t={};for(var i in n)t[i]="";this.css(t)},p={transitionProperty:"",transitionDuration:""},o.prototype.removeTransitionStyles=function(){this.css(p)},o.prototype.removeElem=function(){this.element.parentNode.removeChild(this.element);this.emitEvent("remove",[this])},o.prototype.remove=function(){if(!s||!parseFloat(this.layout.options.transitionDuration)){this.removeElem();return}var n=this;this.on("transitionEnd",function(){return n.removeElem(),!0});this.hide()},o.prototype.reveal=function(){delete this.isHidden;this.css({display:""});var n=this.layout.options;this.transition({from:n.hiddenStyle,to:n.visibleStyle,isCleaning:!0})},o.prototype.hide=function(){this.isHidden=!0;this.css({display:""});var n=this.layout.options;this.transition({from:n.visibleStyle,to:n.hiddenStyle,isCleaning:!0,onTransitionEnd:{opacity:function(){this.isHidden&&this.css({display:"none"})}}})},o.prototype.destroy=function(){this.css({position:"",left:"",right:"",top:"",bottom:"",transition:"",transform:""})},o}var t=n.getComputedStyle,r=t?function(n){return t(n,null)}:function(n){return n.currentStyle};typeof define=="function"&&define.amd?define(["eventEmitter/EventEmitter","get-size/get-size","get-style-property/get-style-property"],i):(n.Outlayer={},n.Outlayer.Item=i(n.EventEmitter,n.getSize,n.getStyleProperty))}(window),function(n){"use strict";function i(n,t){for(var i in t)n[i]=t[i];return n}function l(n){return c.call(n)==="[object Array]"}function u(n){var t=[],i,r;if(l(n))t=n;else if(n&&typeof n.length=="number")for(i=0,r=n.length;i<r;i++)t.push(n[i]);else t.push(n);return t}function s(n,t){var i=a(t,n);i!==-1&&t.splice(i,1)}function v(n){return n.replace(/(.)([A-Z])/g,function(n,t,i){return t+"-"+i}).toLowerCase()}function h(h,c,l,a,y,p){function w(n,t){if(typeof n=="string"&&(n=e.querySelector(n)),!n||!f(n)){r&&r.error("Bad "+this.constructor.namespace+" element: "+n);return}this.element=n;this.options=i({},this.constructor.defaults);this.option(t);var u=++k;this.element.outlayerGUID=u;b[u]=this;this._create();this.options.isInitLayout&&this.layout()}var k=0,b={};return w.namespace="outlayer",w.Item=p,w.defaults={containerStyle:{position:"relative"},isInitLayout:!0,isOriginLeft:!0,isOriginTop:!0,isResizeBound:!0,isResizingContainer:!0,transitionDuration:"0.4s",hiddenStyle:{opacity:0,transform:"scale(0.001)"},visibleStyle:{opacity:1,transform:"scale(1)"}},i(w.prototype,l.prototype),w.prototype.option=function(n){i(this.options,n)},w.prototype._create=function(){this.reloadItems();this.stamps=[];this.stamp(this.options.stamp);i(this.element.style,this.options.containerStyle);this.options.isResizeBound&&this.bindResize()},w.prototype.reloadItems=function(){this.items=this._itemize(this.element.children)},w.prototype._itemize=function(n){for(var u,f,i=this._filterFindItemElements(n),e=this.constructor.Item,r=[],t=0,o=i.length;t<o;t++)u=i[t],f=new e(u,this),r.push(f);return r},w.prototype._filterFindItemElements=function(n){var r,i,e,h,t,s,o,c;for(n=u(n),r=this.options.itemSelector,i=[],e=0,h=n.length;e<h;e++)if(t=n[e],f(t))if(r)for(y(t,r)&&i.push(t),s=t.querySelectorAll(r),o=0,c=s.length;o<c;o++)i.push(s[o]);else i.push(t);return i},w.prototype.getItemElements=function(){for(var t=[],n=0,i=this.items.length;n<i;n++)t.push(this.items[n].element);return t},w.prototype.layout=function(){this._resetLayout();this._manageStamps();var n=this.options.isLayoutInstant!==undefined?this.options.isLayoutInstant:!this._isLayoutInited;this.layoutItems(this.items,n);this._isLayoutInited=!0},w.prototype._init=w.prototype.layout,w.prototype._resetLayout=function(){this.getSize()},w.prototype.getSize=function(){this.size=a(this.element)},w.prototype._getMeasurement=function(n,t){var i=this.options[n],r;i?(typeof i=="string"?r=this.element.querySelector(i):f(i)&&(r=i),this[n]=r?a(r)[t]:i):this[n]=0},w.prototype.layoutItems=function(n,t){n=this._getItemsForLayout(n);this._layoutItems(n,t);this._postLayout()},w.prototype._getItemsForLayout=function(n){for(var i,r=[],t=0,u=n.length;t<u;t++)i=n[t],i.isIgnored||r.push(i);return r},w.prototype._layoutItems=function(n,t){function o(){e.emitEvent("layoutComplete",[e,n])}var e=this,f,i,s,r,u;if(!n||!n.length){o();return}for(this._itemsOn(n,"layout",o),f=[],i=0,s=n.length;i<s;i++)r=n[i],u=this._getItemLayoutPosition(r),u.item=r,u.isInstant=t||r.isLayoutInstant,f.push(u);this._processLayoutQueue(f)},w.prototype._getItemLayoutPosition=function(){return{x:0,y:0}},w.prototype._processLayoutQueue=function(n){for(var t,i=0,r=n.length;i<r;i++)t=n[i],this._positionItem(t.item,t.x,t.y,t.isInstant)},w.prototype._positionItem=function(n,t,i,r){r?n.goTo(t,i):n.moveTo(t,i)},w.prototype._postLayout=function(){this.resizeContainer()},w.prototype.resizeContainer=function(){if(this.options.isResizingContainer){var n=this._getContainerSize();n&&(this._setContainerMeasure(n.width,!0),this._setContainerMeasure(n.height,!1))}},w.prototype._getContainerSize=o,w.prototype._setContainerMeasure=function(n,t){if(n!==undefined){var i=this.size;i.isBorderBox&&(n+=t?i.paddingLeft+i.paddingRight+i.borderLeftWidth+i.borderRightWidth:i.paddingBottom+i.paddingTop+i.borderTopWidth+i.borderBottomWidth);n=Math.max(n,0);this.element.style[t?"width":"height"]=n+"px"}},w.prototype._itemsOn=function(n,t,i){function s(){return u++,u===e&&i.call(o),!0}for(var f,u=0,e=n.length,o=this,r=0,h=n.length;r<h;r++){f=n[r];f.on(t,s)}},w.prototype.ignore=function(n){var t=this.getItem(n);t&&(t.isIgnored=!0)},w.prototype.unignore=function(n){var t=this.getItem(n);t&&delete t.isIgnored},w.prototype.stamp=function(n){var t,i,r;if(n=this._find(n),n)for(this.stamps=this.stamps.concat(n),t=0,i=n.length;t<i;t++)r=n[t],this.ignore(r)},w.prototype.unstamp=function(n){var t,r,i;if(n=this._find(n),n)for(t=0,r=n.length;t<r;t++)i=n[t],s(i,this.stamps),this.unignore(i)},w.prototype._find=function(n){if(n)return typeof n=="string"&&(n=this.element.querySelectorAll(n)),u(n)},w.prototype._manageStamps=function(){var n,t,i;if(this.stamps&&this.stamps.length)for(this._getBoundingRect(),n=0,t=this.stamps.length;n<t;n++)i=this.stamps[n],this._manageStamp(i)},w.prototype._getBoundingRect=function(){var t=this.element.getBoundingClientRect(),n=this.size;this._boundingRect={left:t.left+n.paddingLeft+n.borderLeftWidth,top:t.top+n.paddingTop+n.borderTopWidth,right:t.right-(n.paddingRight+n.borderRightWidth),bottom:t.bottom-(n.paddingBottom+n.borderBottomWidth)}},w.prototype._manageStamp=o,w.prototype._getElementOffset=function(n){var t=n.getBoundingClientRect(),i=this._boundingRect,r=a(n);return{left:t.left-i.left-r.marginLeft,top:t.top-i.top-r.marginTop,right:i.right-t.right-r.marginRight,bottom:i.bottom-t.bottom-r.marginBottom}},w.prototype.handleEvent=function(n){var t="on"+n.type;this[t]&&this[t](n)},w.prototype.bindResize=function(){this.isResizeBound||(h.bind(n,"resize",this),this.isResizeBound=!0)},w.prototype.unbindResize=function(){this.isResizeBound&&h.unbind(n,"resize",this);this.isResizeBound=!1},w.prototype.onresize=function(){function t(){n.resize();delete n.resizeTimeout}this.resizeTimeout&&clearTimeout(this.resizeTimeout);var n=this;this.resizeTimeout=setTimeout(t,100)},w.prototype.resize=function(){this.isResizeBound&&this.needsResizeLayout()&&this.layout()},w.prototype.needsResizeLayout=function(){var n=a(this.element),t=this.size&&n;return t&&n.innerWidth!==this.size.innerWidth},w.prototype.addItems=function(n){var t=this._itemize(n);return t.length&&(this.items=this.items.concat(t)),t},w.prototype.appended=function(n){var t=this.addItems(n);t.length&&(this.layoutItems(t,!0),this.reveal(t))},w.prototype.prepended=function(n){var t=this._itemize(n),i;t.length&&(i=this.items.slice(0),this.items=t.concat(i),this._resetLayout(),this._manageStamps(),this.layoutItems(t,!0),this.reveal(t),this.layoutItems(i))},w.prototype.reveal=function(n){var i=n&&n.length,t,r;if(i)for(t=0;t<i;t++)r=n[t],r.reveal()},w.prototype.hide=function(n){var i=n&&n.length,t,r;if(i)for(t=0;t<i;t++)r=n[t],r.hide()},w.prototype.getItem=function(n){for(var i,t=0,r=this.items.length;t<r;t++)if(i=this.items[t],i.element===n)return i},w.prototype.getItems=function(n){var i,t,u,f,r;if(n&&n.length){for(i=[],t=0,u=n.length;t<u;t++)f=n[t],r=this.getItem(f),r&&i.push(r);return i}},w.prototype.remove=function(n){var t,i,f,r;if(n=u(n),t=this.getItems(n),t&&t.length)for(this._itemsOn(t,"remove",function(){this.emitEvent("removeComplete",[this,t])}),i=0,f=t.length;i<f;i++)r=t[i],r.remove(),s(r,this.items)},w.prototype.destroy=function(){var i=this.element.style,n,r,u;for(i.height="",i.position="",i.width="",n=0,r=this.items.length;n<r;n++)u=this.items[n],u.destroy();this.unbindResize();delete this.element.outlayerGUID;t&&t.removeData(this.element,this.constructor.namespace)},w.data=function(n){var t=n&&n.outlayerGUID;return t&&b[t]},w.create=function(n,u){function f(){w.apply(this,arguments)}return Object.create?f.prototype=Object.create(w.prototype):i(f.prototype,w.prototype),f.prototype.constructor=f,f.defaults=i({},w.defaults),i(f.defaults,u),f.prototype.settings={},f.namespace=n,f.data=w.data,f.Item=function(){p.apply(this,arguments)},f.Item.prototype=new p,c(function(){for(var i,o,l,a,s=v(n),h=e.querySelectorAll(".js-"+s),c="data-"+s+"-options",u=0,y=h.length;u<y;u++){i=h[u];o=i.getAttribute(c);try{l=o&&JSON.parse(o)}catch(p){r&&r.error("Error parsing "+c+" on "+i.nodeName.toLowerCase()+(i.id?"#"+i.id:"")+": "+p);continue}a=new f(i,l);t&&t.data(i,n,a)}}),t&&t.bridget&&t.bridget(n,f),f},w.Item=p,w}var e=n.document,r=n.console,t=n.jQuery,o=function(){},c=Object.prototype.toString,f=typeof HTMLElement=="object"?function(n){return n instanceof HTMLElement}:function(n){return n&&typeof n=="object"&&n.nodeType===1&&typeof n.nodeName=="string"},a=Array.prototype.indexOf?function(n,t){return n.indexOf(t)}:function(n,t){for(var i=0,r=n.length;i<r;i++)if(n[i]===t)return i;return-1};typeof define=="function"&&define.amd?define(["eventie/eventie","doc-ready/doc-ready","eventEmitter/EventEmitter","get-size/get-size","matches-selector/matches-selector","./item"],h):n.Outlayer=h(n.eventie,n.docReady,n.EventEmitter,n.getSize,n.matchesSelector,n.Outlayer.Item)}(window),function(n){"use strict";function t(n,t){var r=n.create("masonry");return r.prototype._resetLayout=function(){this.getSize();this._getMeasurement("columnWidth","outerWidth");this._getMeasurement("gutter","outerWidth");this.measureColumns();var n=this.cols;for(this.colYs=[];n--;)this.colYs.push(0);this.maxY=0},r.prototype.measureColumns=function(){if(this.getContainerWidth(),!this.columnWidth){var n=this.items[0],i=n&&n.element;this.columnWidth=i&&t(i).outerWidth||this.containerWidth}this.columnWidth+=this.gutter;this.cols=Math.floor((this.containerWidth+this.gutter)/this.columnWidth);this.cols=Math.max(this.cols,1)},r.prototype.getContainerWidth=function(){var i=this.options.isFitWidth?this.element.parentNode:this.element,n=t(i);this.containerWidth=n&&n.innerWidth},r.prototype._getItemLayoutPosition=function(n){var t;n.getSize();var e=n.size.outerWidth%this.columnWidth,s=e&&e<1?"round":"ceil",r=Math[s](n.size.outerWidth/this.columnWidth);r=Math.min(r,this.cols);var u=this._getColGroup(r),f=Math.min.apply(Math,u),o=i(u,f),h={x:this.columnWidth*o,y:f},c=f+n.size.outerHeight,l=this.cols+1-u.length;for(t=0;t<l;t++)this.colYs[o+t]=c;return h},r.prototype._getColGroup=function(n){var i,r,t,u;if(n<2)return this.colYs;for(i=[],r=this.cols+1-n,t=0;t<r;t++)u=this.colYs.slice(t,t+n),i[t]=Math.max.apply(Math,u);return i},r.prototype._manageStamp=function(n){var e=t(n),u=this._getElementOffset(n),o=this.options.isOriginLeft?u.left:u.right,s=o+e.outerWidth,f=Math.floor(o/this.columnWidth),i,h,r;for(f=Math.max(0,f),i=Math.floor(s/this.columnWidth),i-=s%this.columnWidth?0:1,i=Math.min(this.cols-1,i),h=(this.options.isOriginTop?u.top:u.bottom)+e.outerHeight,r=f;r<=i;r++)this.colYs[r]=Math.max(h,this.colYs[r])},r.prototype._getContainerSize=function(){this.maxY=Math.max.apply(Math,this.colYs);var n={height:this.maxY};return this.options.isFitWidth&&(n.width=this._getContainerFitWidth()),n},r.prototype._getContainerFitWidth=function(){for(var n=0,t=this.cols;--t;){if(this.colYs[t]!==0)break;n++}return(this.cols-n)*this.columnWidth-this.gutter},r.prototype.needsResizeLayout=function(){var n=this.containerWidth;return this.getContainerWidth(),n!==this.containerWidth},r}var i=Array.prototype.indexOf?function(n,t){return n.indexOf(t)}:function(n,t){for(var u,i=0,r=n.length;i<r;i++)if(u=n[i],u===t)return i;return-1};typeof define=="function"&&define.amd?define(["outlayer/outlayer","get-size/get-size"],t):n.Masonry=t(n.Outlayer,n.getSize)}(window),function(n){"use strict";function t(n){function t(){n.Item.apply(this,arguments)}return t.prototype=new n.Item,t.prototype._create=function(){this.id=this.layout.itemGUID++;n.Item.prototype._create.call(this);this.sortData={}},t.prototype.updateSortData=function(){var t,i,n,r;if(!this.isIgnored){this.sortData.id=this.id;this.sortData["original-order"]=this.id;this.sortData.random=Math.random();t=this.layout.options.getSortData;i=this.layout._sorters;for(n in t)r=i[n],this.sortData[n]=r(this.element,this)}},t}typeof define=="function"&&define.amd?define(["outlayer/outlayer"],t):(n.Isotope=n.Isotope||{},n.Isotope.Item=t(n.Outlayer))}(window),function(n){"use strict";function t(n,t){function i(n){this.isotope=n;n&&(this.options=n.options[this.namespace],this.element=n.element,this.items=n.filteredItems,this.size=n.size)}return function(){function e(n){return function(){return t.prototype[n].apply(this.isotope,arguments)}}for(var r,u=["_resetLayout","_getItemLayoutPosition","_manageStamp","_getContainerSize","_getElementOffset","needsResizeLayout"],n=0,f=u.length;n<f;n++)r=u[n],i.prototype[r]=e(r)}(),i.prototype.needsVerticalResizeLayout=function(){var t=n(this.isotope.element),i=this.isotope.size&&t;return i&&t.innerHeight!==this.isotope.size.innerHeight},i.prototype._getMeasurement=function(){this.isotope._getMeasurement.apply(this,arguments)},i.prototype.getColumnWidth=function(){this.getSegmentSize("column","Width")},i.prototype.getRowHeight=function(){this.getSegmentSize("row","Height")},i.prototype.getSegmentSize=function(n,t){var i=n+t,u="outer"+t,r;(this._getMeasurement(i,u),this[i])||(r=this.getFirstItemSize(),this[i]=r&&r[u]||this.isotope.size["inner"+t])},i.prototype.getFirstItemSize=function(){var t=this.isotope.filteredItems[0];return t&&t.element&&n(t.element)},i.prototype.layout=function(){this.isotope.layout.apply(this.isotope,arguments)},i.prototype.getSize=function(){this.isotope.getSize();this.size=this.isotope.size},i.modes={},i.create=function(n,t){function r(){i.apply(this,arguments)}return r.prototype=new i,t&&(r.options=t),r.prototype.namespace=n,i.modes[n]=r,r},i}typeof define=="function"&&define.amd?define(["get-size/get-size","outlayer/outlayer"],t):(n.Isotope=n.Isotope||{},n.Isotope.LayoutMode=t(n.getSize,n.Outlayer))}(window),function(n){"use strict";function u(n,t){for(var i in t)n[i]=t[i];return n}function h(n){return s.call(n)==="[object Array]"}function i(n){var t=[],i,r;if(h(n))t=n;else if(n&&typeof n.length=="number")for(i=0,r=n.length;i<r;i++)t.push(n[i]);else t.push(n);return t}function l(n,t){var i=c(t,n);i!==-1&&t.splice(i,1)}function r(n,r,e,s,h){function y(n,t){return function(i,r){for(var h,c,u=0,s=n.length;u<s;u++){var f=n[u],e=i.sortData[f],o=r.sortData[f];if(e>o||e<o)return h=t[f]!==undefined?t[f]:t,c=h?1:-1,(e>o?1:-1)*c}return 0}}var c=n.create("isotope",{layoutMode:"masonry",isJQueryFiltering:!0,sortAscending:!0}),a,v;return c.Item=s,c.LayoutMode=h,c.prototype._create=function(){this.itemGUID=0;this._sorters={};this._getSorters();n.prototype._create.call(this);this.modes={};this.filteredItems=this.items;this.sortHistory=["original-order"];for(var t in h.modes)this._initLayoutMode(t)},c.prototype.reloadItems=function(){this.itemGUID=0;n.prototype.reloadItems.call(this)},c.prototype._itemize=function(){for(var r,t=n.prototype._itemize.apply(this,arguments),i=0,u=t.length;i<u;i++)r=t[i],r.id=this.itemGUID++;return this._updateItemsSortData(t),t},c.prototype._initLayoutMode=function(n){var t=h.modes[n],i=this.options[n]||{};this.options[n]=t.options?u(t.options,i):i;this.modes[n]=new t(this)},c.prototype.layout=function(){if(!this._isLayoutInited&&this.options.isInitLayout){this.arrange();return}this._layout()},c.prototype._layout=function(){var n=this._getIsInstant();this._resetLayout();this._manageStamps();this.layoutItems(this.filteredItems,n);this._isLayoutInited=!0},c.prototype.arrange=function(n){this.option(n);this._getIsInstant();this.filteredItems=this._filter(this.items);this._sort();this._layout()},c.prototype._init=c.prototype.arrange,c.prototype._getIsInstant=function(){var n=this.options.isLayoutInstant!==undefined?this.options.isLayoutInstant:!this._isLayoutInited;return this._isInstant=n,n},c.prototype._filter=function(n){function c(){f.reveal(o);f.hide(s)}var u=this.options.filter,i,h,t,r,f;u=u||"*";var e=[],o=[],s=[],l=this._getFilterTest(u);for(i=0,h=n.length;i<h;i++)(t=n[i],t.isIgnored)||(r=l(t),r&&e.push(t),r&&t.isHidden?o.push(t):r||t.isHidden||s.push(t));return f=this,this._isInstant?this._noTransition(c):c(),e},c.prototype._getFilterTest=function(n){return t&&this.options.isJQueryFiltering?function(i){return t(i.element).is(n)}:typeof n=="function"?function(t){return n(t.element)}:function(t){return e(t.element,n)}},c.prototype.updateSortData=function(n){this._getSorters();n=i(n);var t=this.getItems(n);t=t.length?t:this.items;this._updateItemsSortData(t)},c.prototype._getSorters=function(){var t=this.options.getSortData,n,i;for(n in t)i=t[n],this._sorters[n]=a(i)},c.prototype._updateItemsSortData=function(n){for(var r,t=0,i=n.length;t<i;t++)r=n[t],r.updateSortData()},a=function(){function n(n){if(typeof n!="string")return n;var i=f(n).split(" "),r=i[0],u=r.match(/^\[(.+)\]$/),s=u&&u[1],e=t(s,r),o=c.sortDataParsers[i[1]];return o?function(n){return n&&o(e(n))}:function(n){return n&&e(n)}}function t(n,t){return n?function(t){return t.getAttribute(n)}:function(n){var i=n.querySelector(t);return i&&o(i)}}return n}(),c.sortDataParsers={parseInt:function(n){return parseInt(n,10)},parseFloat:function(n){return parseFloat(n)}},c.prototype._sort=function(){var n=this.options.sortBy,t,i;n&&(t=[].concat.apply(n,this.sortHistory),i=y(t,this.options.sortAscending),this.filteredItems.sort(i),n!==this.sortHistory[0]&&this.sortHistory.unshift(n))},c.prototype._mode=function(){var n=this.options.layoutMode,t=this.modes[n];if(!t)throw new Error("No layout mode: "+n);return t.options=this.options[n],t},c.prototype._resetLayout=function(){n.prototype._resetLayout.call(this);this._mode()._resetLayout()},c.prototype._getItemLayoutPosition=function(n){return this._mode()._getItemLayoutPosition(n)},c.prototype._manageStamp=function(n){this._mode()._manageStamp(n)},c.prototype._getContainerSize=function(){return this._mode()._getContainerSize()},c.prototype.needsResizeLayout=function(){return this._mode().needsResizeLayout()},c.prototype.appended=function(n){var t=this.addItems(n),i;t.length&&(i=this._filterRevealAdded(t),this.filteredItems=this.filteredItems.concat(i))},c.prototype.prepended=function(n){var t=this._itemize(n),i,r;t.length&&(i=this.items.slice(0),this.items=t.concat(i),this._resetLayout(),this._manageStamps(),r=this._filterRevealAdded(t),this.layoutItems(i),this.filteredItems=r.concat(this.filteredItems))},c.prototype._filterRevealAdded=function(n){var t=this._noTransition(function(){return this._filter(n)});return this.layoutItems(t,!0),this.reveal(t),n},c.prototype.insert=function(n){var i=this.addItems(n),t,f,r,u;if(i.length){for(r=i.length,t=0;t<r;t++)f=i[t],this.element.appendChild(f.element);for(u=this._filter(i),this._noTransition(function(){this.hide(u)}),t=0;t<r;t++)i[t].isLayoutInstant=!0;for(this.arrange(),t=0;t<r;t++)delete i[t].isLayoutInstant;this.reveal(u)}},v=c.prototype.remove,c.prototype.remove=function(n){var t,r,u,f;if(n=i(n),t=this.getItems(n),v.call(this,n),t&&t.length)for(r=0,u=t.length;r<u;r++)f=t[r],l(f,this.filteredItems)},c.prototype._noTransition=function(n){var i=this.options.transitionDuration,t;return this.options.transitionDuration=0,t=n.call(this),this.options.transitionDuration=i,t},c}var t=n.jQuery,f=String.prototype.trim?function(n){return n.trim()}:function(n){return n.replace(/^\s+|\s+$/g,"")},e=document.documentElement,o=e.textContent?function(n){return n.textContent}:function(n){return n.innerText},s=Object.prototype.toString,c=Array.prototype.indexOf?function(n,t){return n.indexOf(t)}:function(n,t){for(var i=0,r=n.length;i<r;i++)if(n[i]===t)return i;return-1};typeof define=="function"&&define.amd?define(["outlayer/outlayer","get-size/get-size","matches-selector/matches-selector","./item","./layout-mode","./layout-modes/masonry","./layout-modes/fit-rows","./layout-modes/vertical"],r):n.Isotope=r(n.Outlayer,n.getSize,n.matchesSelector,n.Isotope.Item,n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n){var t=n.create("vertical",{horizontalAlignment:0});return t.prototype._resetLayout=function(){this.y=0},t.prototype._getItemLayoutPosition=function(n){n.getSize();var t=(this.isotope.size.innerWidth-n.size.outerWidth)*this.options.horizontalAlignment,i=this.y;return this.y+=n.size.outerHeight,{x:t,y:i}},t.prototype._getContainerSize=function(){return{height:this.y}},t}typeof define=="function"&&define.amd?define(["../layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n){var t=n.create("fitRows");return t.prototype._resetLayout=function(){this.x=0;this.y=0;this.maxY=0},t.prototype._getItemLayoutPosition=function(n){n.getSize();this.x!==0&&n.size.outerWidth+this.x>this.isotope.size.innerWidth&&(this.x=0,this.y=this.maxY);var t={x:this.x,y:this.y};return this.maxY=Math.max(this.maxY,this.y+n.size.outerHeight),this.x+=n.size.outerWidth,t},t.prototype._getContainerSize=function(){return{height:this.maxY}},t}typeof define=="function"&&define.amd?define(["../layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function i(n,t){for(var i in t)n[i]=t[i];return n}function t(n,t){var r=n.create("masonry"),e=r.prototype._getElementOffset,o=r.prototype.layout,s=r.prototype._getMeasurement,u,f;return i(r.prototype,t.prototype),r.prototype._getElementOffset=e,r.prototype.layout=o,r.prototype._getMeasurement=s,u=r.prototype.measureColumns,r.prototype.measureColumns=function(){this.items=this.isotope.filteredItems;u.call(this)},f=r.prototype._manageStamp,r.prototype._manageStamp=function(){this.options.isOriginLeft=this.isotope.options.isOriginLeft;this.options.isOriginTop=this.isotope.options.isOriginTop;f.apply(this,arguments)},r}typeof define=="function"&&define.amd?define(["../layout-mode","masonry/masonry"],t):t(n.Isotope.LayoutMode,n.Masonry)}(window),function(n){"use strict";function t(n){var t=n.create("cellsByColumn");return t.prototype._resetLayout=function(){this.itemIndex=0;this.getColumnWidth();this.getRowHeight();this.rows=Math.floor(this.isotope.size.innerHeight/this.rowHeight);this.rows=Math.max(this.rows,1)},t.prototype._getItemLayoutPosition=function(n){n.getSize();var t=Math.floor(this.itemIndex/this.rows),i=this.itemIndex%this.rows,r=(t+.5)*this.columnWidth-n.size.outerWidth/2,u=(i+.5)*this.rowHeight-n.size.outerHeight/2;return this.itemIndex++,{x:r,y:u}},t.prototype._getContainerSize=function(){return{width:Math.ceil(this.itemIndex/this.rows)*this.columnWidth}},t.prototype.needsResizeLayout=function(){return this.needsVerticalResizeLayout()},t}typeof define=="function"&&define.amd?define(["isotope/js/layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n){var t=n.create("cellsByRow");return t.prototype._resetLayout=function(){this.itemIndex=0;this.getColumnWidth();this.getRowHeight();this.cols=Math.floor(this.isotope.size.innerWidth/this.columnWidth);this.cols=Math.max(this.cols,1)},t.prototype._getItemLayoutPosition=function(n){n.getSize();var t=this.itemIndex%this.cols,i=Math.floor(this.itemIndex/this.cols),r=(t+.5)*this.columnWidth-n.size.outerWidth/2,u=(i+.5)*this.rowHeight-n.size.outerHeight/2;return this.itemIndex++,{x:r,y:u}},t.prototype._getContainerSize=function(){return{height:Math.ceil(this.itemIndex/this.cols)*this.rowHeight}},t}typeof define=="function"&&define.amd?define(["isotope/js/layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n){var t=n.create("fitColumns");return t.prototype._resetLayout=function(){this.x=0;this.y=0;this.maxX=0},t.prototype._getItemLayoutPosition=function(n){n.getSize();this.y!==0&&n.size.outerHeight+this.y>this.isotope.size.innerHeight&&(this.y=0,this.x=this.maxX);var t={x:this.x,y:this.y};return this.maxX=Math.max(this.maxX,this.x+n.size.outerWidth),this.y+=n.size.outerHeight,t},t.prototype._getContainerSize=function(){return{width:this.maxX}},t.prototype.needsResizeLayout=function(){return this.needsVerticalResizeLayout()},t}typeof define=="function"&&define.amd?define(["isotope/js/layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n){var t=n.create("horizontal",{verticalAlignment:0});return t.prototype._resetLayout=function(){this.x=0},t.prototype._getItemLayoutPosition=function(n){n.getSize();var t=(this.isotope.size.innerHeight-n.size.outerHeight)*this.options.verticalAlignment,i=this.x;return this.x+=n.size.outerWidth,{x:i,y:t}},t.prototype._getContainerSize=function(){return{width:this.x}},t.prototype.needsResizeLayout=function(){return this.needsVerticalResizeLayout()},t}typeof define=="function"&&define.amd?define(["isotope/js/layout-mode"],t):t(n.Isotope.LayoutMode)}(window),function(n){"use strict";function t(n,t){var r=t.create("masonryHorizontal");return r.prototype._resetLayout=function(){this.getRowHeight();this._getMeasurement("gutter","outerHeight");this.rowHeight+=this.gutter;this.rows=Math.floor((this.isotope.size.innerHeight+this.gutter)/this.rowHeight);this.rows=Math.max(this.rows,1);var n=this.rows;for(this.rowXs=[];n--;)this.rowXs.push(0);this.maxX=0},r.prototype._getItemLayoutPosition=function(n){var t,r;n.getSize();t=Math.ceil(n.size.outerHeight/this.rowHeight);t=Math.min(t,this.rows);var u=this._getRowGroup(t),f=Math.min.apply(Math,u),e=i(u,f),o={x:f,y:this.rowHeight*e},s=f+n.size.outerWidth,h=this.rows+1-u.length;for(r=0;r<h;r++)this.rowXs[e+r]=s;return o},r.prototype._getRowGroup=function(n){var i,r,t,u;if(n<2)return this.rowXs;for(i=[],r=this.rows+1-n,t=0;t<r;t++)u=this.rowXs.slice(t,t+n),i[t]=Math.max.apply(Math,u);return i},r.prototype._manageStamp=function(t){var e=n(t),r=this.isotope._getElementOffset(t),o=this.isotope.options.isOriginTop?r.top:r.bottom,h=o+e.outerHeight,f=Math.floor(o/this.rowHeight),u,s,i;for(f=Math.max(0,f),u=Math.floor(h/this.rowHeight),u=Math.min(this.rows-1,u),s=(this.isotope.options.isOriginLeft?r.left:r.right)+e.outerWidth,i=f;i<=u;i++)this.rowXs[i]=Math.max(s,this.rowXs[i])},r.prototype._getContainerSize=function(){return this.maxX=Math.max.apply(Math,this.rowXs),{width:this.maxX}},r.prototype.needsResizeLayout=function(){return this.needsVerticalResizeLayout()},r}var i=Array.prototype.indexOf?function(n,t){return n.indexOf(t)}:function(n,t){for(var u,i=0,r=n.length;i<r;i++)if(u=n[i],u===t)return i;return-1};typeof define=="function"&&define.amd?define(["get-size/get-size","isotope/js/layout-mode"],t):t(n.getSize,n.Isotope.LayoutMode)}(window);var hljs=new function(){function n(n){return n.replace(/&/gm,"&amp;").replace(/</gm,"&lt;").replace(/>/gm,"&gt;")}function u(n){return n.nodeName.toLowerCase()}function o(n,t){var i=n&&n.exec(t);return i&&i.index==0}function c(n){return Array.prototype.map.call(n.childNodes,function(n){return n.nodeType==3?t.useBR?n.nodeValue.replace(/\n/g,""):n.nodeValue:u(n)=="br"?"\n":c(n)}).join("")}function p(n){var t=(n.className+" "+(n.parentNode?n.parentNode.className:"")).split(/\s+/);return t=t.map(function(n){return n.replace(/^language-/,"")}),t.filter(function(n){return e(n)||n=="no-highlight"})[0]}function s(n,t){var r={};for(var i in n)r[i]=n[i];if(t)for(i in t)r[i]=t[i];return r}function l(n){var t=[];return function i(n,r){for(var f=n.firstChild;f;f=f.nextSibling)f.nodeType==3?r+=f.nodeValue.length:u(f)=="br"?r+=1:f.nodeType==1&&(t.push({event:"start",offset:r,node:f}),r=i(f,r),t.push({event:"stop",offset:r,node:f}));return r}(n,0),t}function w(t,i,r){function h(){return!t.length||!i.length?t.length?t:i:t[0].offset!=i[0].offset?t[0].offset<i[0].offset?t:i:i[0].event=="start"?t:i}function c(t){function i(t){return" "+t.nodeName+'="'+n(t.value)+'"'}o+="<"+u(t)+Array.prototype.map.call(t.attributes,i).join("")+">"}function l(n){o+="<\/"+u(n)+">"}function a(n){(n.event=="start"?c:l)(n.node)}for(var e=0,o="",s=[],f;t.length||i.length;)if(f=h(),o+=n(r.substr(e,f[0].offset-e)),e=f[0].offset,f==t){s.reverse().forEach(l);do a(f.splice(0,1)[0]),f=h();while(f==t&&f.length&&f[0].offset==e);s.reverse().forEach(c)}else f[0].event=="start"?s.push(f[0].node):s.pop(),a(f.splice(0,1)[0]);return o+n(r.substr(e))}function b(n){function i(n){return n&&n.source||n}function t(t,r){return RegExp(i(t),"m"+(n.cI?"i":"")+(r?"g":""))}function r(u,f){var o,e,h;if(!u.compiled){if(u.compiled=!0,u.k=u.k||u.bK,u.k){o={};function c(t,i){n.cI&&(i=i.toLowerCase());i.split(" ").forEach(function(n){var i=n.split("|");o[i[0]]=[t,i[1]?Number(i[1]):1]})}typeof u.k=="string"?c("keyword",u.k):Object.keys(u.k).forEach(function(n){c(n,u.k[n])});u.k=o}u.lR=t(u.l||/\b[A-Za-z0-9_]+\b/,!0);f&&(u.bK&&(u.b=u.bK.split(" ").join("|")),u.b||(u.b=/\B|\b/),u.bR=t(u.b),u.e||u.eW||(u.e=/\B|\b/),u.e&&(u.eR=t(u.e)),u.tE=i(u.e)||"",u.eW&&f.tE&&(u.tE+=(u.e?"|":"")+f.tE));u.i&&(u.iR=t(u.i));u.r===undefined&&(u.r=1);u.c||(u.c=[]);e=[];u.c.forEach(function(n){n.v?n.v.forEach(function(t){e.push(s(n,t))}):e.push(n=="self"?u:n)});u.c=e;u.c.forEach(function(n){r(n,u)});u.starts&&r(u.starts,f);h=u.c.map(function(n){return n.bK?"\\.?\\b("+n.b+")\\b\\.?":n.b}).concat([u.tE]).concat([u.i]).map(i).filter(Boolean);u.t=h.length?t(h.join("|"),!0):{exec:function(){return null}};u.continuation={}}}r(n)}function f(i,u,s,c){function et(n,t){for(var i=0;i<t.c.length;i++)if(o(t.c[i].bR,n))return t.c[i]}function tt(n,t){return o(n.eR,t)?n:n.eW?tt(n.parent,t):void 0}function ot(n,t){return!s&&o(t.iR,n)}function st(n,t){var i=w.cI?t[0].toLowerCase():t[0];return n.k.hasOwnProperty(i)&&n.k[i]}function g(n,i,r,u){var e=u?"":t.classPrefix,f='<span class="'+e,o=r?"":"<\/span>";return f+=n+'">',f+i+o}function ht(){var i=n(v),r,u,t,f;if(!l.k)return i;for(r="",u=0,l.lR.lastIndex=0,t=l.lR.exec(i);t;)r+=i.substr(u,t.index-u),f=st(l,t),f?(k+=f[1],r+=g(f[0],t[0])):r+=t[0],u=l.lR.lastIndex,t=l.lR.exec(i);return r+i.substr(u)}function ct(){if(l.sL&&!r[l.sL])return n(v);var t=l.sL?f(l.sL,v,!0,l.continuation.top):h(v);return l.r>0&&(k+=t.r),l.subLanguageMode=="continuous"&&(l.continuation.top=t.top),g(t.language,t.value,!1,!0)}function nt(){return l.sL!==undefined?ct():ht()}function it(t,i){var r=t.cN?g(t.cN,"",!0):"";t.rB?(a+=r,v=""):t.eB?(a+=n(i)+r,v=""):(a+=r,v=i);l=Object.create(t,{parent:{value:l}})}function rt(t,i){var f,r,u;if(v+=t,i===undefined)return a+=nt(),0;if(f=et(i,l),f)return a+=nt(),it(f,i),f.rB?0:i.length;if(r=tt(l,i),r){u=l;u.rE||u.eE||(v+=i);a+=nt();do l.cN&&(a+="<\/span>"),k+=l.r,l=l.parent;while(l!=r.parent);return u.eE&&(a+=n(i)),v="",r.starts&&it(r.starts,""),u.rE?0:i.length}if(ot(i,l))throw new Error('Illegal lexeme "'+i+'" for mode "'+(l.cN||"<unnamed>")+'"');return v+=i,i.length||1}var w=e(i),l,a,v,k,d,ut,p,y;if(!w)throw new Error('Unknown language: "'+i+'"');for(b(w),l=c||w,a="",y=l;y!=w;y=y.parent)y.cN&&(a=g(y.cN,a,!0));v="";k=0;try{for(p=0;;){if(l.t.lastIndex=p,d=l.t.exec(u),!d)break;ut=rt(u.substr(p,d.index-p),d[0]);p=d.index+ut}for(rt(u.substr(p)),y=l;y.parent;y=y.parent)y.cN&&(a+="<\/span>");return{r:k,value:a,language:i,top:l}}catch(ft){if(ft.message.indexOf("Illegal")!=-1)return{r:0,value:n(u)};throw ft;}}function h(i,u){u=u||t.languages||Object.keys(r);var o={r:0,value:n(i)},s=o;return u.forEach(function(n){if(e(n)){var t=f(n,i,!1);t.language=n;t.r>s.r&&(s=t);t.r>o.r&&(s=o,o=t)}}),s.language&&(o.second_best=s),o}function a(n){return t.tabReplace&&(n=n.replace(/^((<[^>]+>|\t)+)/gm,function(n,i){return i.replace(/\t/g,t.tabReplace)})),t.useBR&&(n=n.replace(/\n/g,"<br>")),n}function v(n){var r=c(n),i=p(n),t,u,e;i!="no-highlight"&&(t=i?f(i,r,!0):h(r),u=l(n),u.length&&(e=document.createElementNS("http://www.w3.org/1999/xhtml","pre"),e.innerHTML=t.value,t.value=w(u,l(e),r)),t.value=a(t.value),n.innerHTML=t.value,n.className+=" hljs "+(!i&&t.language||""),n.result={language:t.language,re:t.r},t.second_best&&(n.second_best={language:t.second_best.language,re:t.second_best.r}))}function k(n){t=s(t,n)}function i(){if(!i.called){i.called=!0;var n=document.querySelectorAll("pre code");Array.prototype.forEach.call(n,v)}}function d(){addEventListener("DOMContentLoaded",i,!1);addEventListener("load",i,!1)}function g(n,t){var i=r[n]=t(this);i.aliases&&i.aliases.forEach(function(t){y[t]=n})}function e(n){return r[n]||r[y[n]]}var t={classPrefix:"hljs-",tabReplace:null,useBR:!1,languages:undefined},r={},y={};this.highlight=f;this.highlightAuto=h;this.fixMarkup=a;this.highlightBlock=v;this.configure=k;this.initHighlighting=i;this.initHighlightingOnLoad=d;this.registerLanguage=g;this.getLanguage=e;this.inherit=s;this.IR="[a-zA-Z][a-zA-Z0-9_]*";this.UIR="[a-zA-Z_][a-zA-Z0-9_]*";this.NR="\\b\\d+(\\.\\d+)?";this.CNR="(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)";this.BNR="\\b(0b[01]+)";this.RSR="!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~";this.BE={b:"\\\\[\\s\\S]",r:0};this.ASM={cN:"string",b:"'",e:"'",i:"\\n",c:[this.BE]};this.QSM={cN:"string",b:'"',e:'"',i:"\\n",c:[this.BE]};this.CLCM={cN:"comment",b:"//",e:"$"};this.CBLCLM={cN:"comment",b:"/\\*",e:"\\*/"};this.HCM={cN:"comment",b:"#",e:"$"};this.NM={cN:"number",b:this.NR,r:0};this.CNM={cN:"number",b:this.CNR,r:0};this.BNM={cN:"number",b:this.BNR,r:0};this.REGEXP_MODE={cN:"regexp",b:/\//,e:/\/[gim]*/,i:/\n/,c:[this.BE,{b:/\[/,e:/\]/,r:0,c:[this.BE]}]};this.TM={cN:"title",b:this.IR,r:0};this.UTM={cN:"title",b:this.UIR,r:0}};hljs.registerLanguage("javascript",function(n){return{aliases:["js"],k:{keyword:"in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class",literal:"true false null undefined NaN Infinity",built_in:"eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require"},c:[{cN:"pi",b:/^\s*('|")use strict('|")/,r:10},n.ASM,n.QSM,n.CLCM,n.CBLCLM,n.CNM,{b:"("+n.RSR+"|\\b(case|return|throw)\\b)\\s*",k:"return throw case",c:[n.CLCM,n.CBLCLM,n.REGEXP_MODE,{b:/</,e:/>;/,r:0,sL:"xml"}],r:0},{cN:"function",bK:"function",e:/\{/,c:[n.inherit(n.TM,{b:/[A-Za-z$_][0-9A-Za-z$_]*/}),{cN:"params",b:/\(/,e:/\)/,c:[n.CLCM,n.CBLCLM],i:/["'\(]/}],i:/\[|%/},{b:/\$[(.]/},{b:"\\."+n.IR,r:0}]}}),function(n,t){"use strict";function v(n,t){n[h]=t}function y(){var t=document.querySelector("#page-nav"),i;t&&((i=l(t).outerHeight,i>=n.innerHeight)||new f(t))}function f(t){this.element=t;this.originalY=this.element.getBoundingClientRect().top+n.pageYOffset;eventie.bind(n,"scroll",this);this.isFixed=!1;this.onscroll()}function p(n,t,i){var u=n.prototype[t],r=t+"Timeout";n.prototype[t]=function(){if(!this[r]){u.apply(this,arguments);var n=this;this[r]=setTimeout(function(){u.apply(n,arguments);delete n[r]},i||100)}}}var r=n.ID={},s,h,u,e,c;r.pages={};var i,l=n.getSize,o=n.getComputedStyle,a=o?function(n){return o(n,null)}:function(n){return n.currentStyle};docReady(function(){var n,f,u;i=document.querySelector("#notification");t(".js-radio-button-group").radioButtonGroup();n=document.body.getAttribute("data-page");n&&typeof r[n]=="function"&&r[n]();f=document.querySelector("head");u=a(f).fontFamily.replace(/['"]/g,"");(u==="desktop-ish"||u==="tablet-ish")&&y()});r.getSomeItemElements=function(){for(var u=document.createDocumentFragment(),f=[],t=0;t<3;t++){var n=document.createElement("div"),i=Math.random(),e=i>.85?"w4":i>.7?"w2":"",r=Math.random(),o=r>.85?"h4":r>.7?"h2":"";n.className="item "+e+" "+o;u.appendChild(n);f.push(n)}};s=document.documentElement;h=s.textContent!==undefined?"textContent":"innerText";u=getStyleProperty("transition");c=u?1e3:1500;r.notify=function(n,t){v(i,n);u&&(i.style[u]="none");i.style.display="block";i.style.opacity="1";t&&(e&&clearTimeout(e),e=setTimeout(r.hideNotify,c))};r.hideNotify=function(){u?(i.style[u]="opacity 1.0s",i.style.opacity="0"):i.style.display="none"};t.fn.radioButtonGroup=function(){return this.each(function(n,i){var r=t(i);r.find(":checked").parent().addClass("is-checked");r.on("click","input, button",function(){r.find(".is-checked").removeClass("is-checked");var n=t(this),i=n.hasClass("button")?n:n.parents(".button");i.addClass("is-checked")})}),this};hljs.configure({classPrefix:""});t.fn.displayIsotopeCode=function(n,t){t=typeof t=="string"&&t.indexOf("function")===-1?"'"+t+"'":t;var i="$container.isotope({ "+n+": "+t+" })";i=hljs.highlight("js",i).value;this.html(i)};f.prototype.handleEvent=function(n){var t="on"+n.type;this[t]&&this[t](n)};f.prototype.onscroll=function(){var t=n.pageYOffset>=this.originalY;t!==this.isFixed&&(classie.toggle(this.element,"is-fixed"),this.isFixed=t)};p(f,"onscroll",50)}(window,jQuery),function(n){"use strict";var r=n.ID,t=getStyleProperty("transition"),i={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"otransitionend",transition:"transitionend"}[t];r.appendix=function(){(function(){var n=$("#animate-item-size .isotope").isotope({masonry:{columnWidth:60}});n.on("click",".item",function(){$(this).toggleClass("is-expanded");n.isotope("layout")})})(),function(){var n=$("#animate-item-size-responsive .isotope").isotope({itemSelector:".item",masonry:{columnWidth:".grid-sizer"}});n.on("click",".item-content",function(){var r=this,o=getSize(r),u,s,f,e;r.style[t]="none";r.style.width=o.width+"px";r.style.height=o.height+"px";u=r.parentNode;classie.toggleClass(u,"is-expanded");s=r.offsetWidth;r.style[t]="";t&&(f=function(){r.style.width="";r.style.height="";r.removeEventListener(i,f,!1)},r.addEventListener(i,f,!1));e=getSize(u);r.style.width=e.width+"px";r.style.height=e.height+"px";s=null;n.isotope("layout")})}()}}(window),function(n,t){"use strict";function u(){var i=new Date,t=i.getMinutes(),n;return t=t<10?"0"+t:t,n=i.getSeconds(),n=n<10?"0"+n:n,[i.getHours(),t,n].join(":")}function r(n){i.notify(n+" at "+u(),!0)}var i=n.ID;i.events=function(){(function(){var n=t("#layout-complete-demo .isotope").isotope({masonry:{columnWidth:50}});n.isotope("on","layoutComplete",function(n,t){r("Isotope layout completed on "+t.length+" items")});n.on("click",".mini-item",function(){t(this).toggleClass("gigante");n.isotope("layout")})})(),function(){var n=t("#remove-complete-demo .isotope").isotope({masonry:{columnWidth:50}});n.isotope("on","removeComplete",function(n,t){r("Removed "+t.length+" items")});n.on("click",".mini-item",function(){n.isotope("remove",this).isotope("layout")})}()}}(window,jQuery),function(n,t){"use strict";var i=n.ID;i.filtering=function(){(function(){var n=t("#filtering-demo .isotope").isotope({itemSelector:".element-item",layoutMode:"fitRows",transitionDuration:"0.6s"}),i={numberGreaterThan50:function(){var n=t(this).find(".number").text();return parseInt(n,10)>50},ium:function(){var n=t(this).find(".name").text();return n.match(/ium$/)}},r={numberGreaterThan50:"function() {\n  var number = $(this).find('.number').text();\n  return parseInt( number, 10 ) > 50;\n}",ium:"function() {\n  var name = $(this).find('.name').text();\n  return name.match( /ium$/ );\n}"},u=t("#filtering-demo .code-display code");t("#filtering-demo .button-group").on("click","button",function(){var f=t(this).attr("data-filter"),e=i[f]||f,o=r[f]||f;n.isotope({filter:e});u.displayIsotopeCode("filter",o)})})(),function(){var n=t("#combination-filters-demo"),r=n.find(".isotope").isotope({itemSelector:".color-shape",columnWidth:80,transitionDuration:"0.6s"}),u=n.find("pre code"),i={};n.on("click",".button",function(){var f=t(this),o=f.parents(".button-group"),s=o.attr("data-filter-group"),n,e;i[s]=f.attr("data-filter");n="";for(e in i)n+=i[e];r.isotope({filter:n});u.displayIsotopeCode("filter",n)})}()}}(window,jQuery),function(n,t){"use strict";var i=n.ID;i.index=function(){(function(){var n=t("#hero .isotope").isotope({itemSelector:".element-item",layoutMode:"fitRows",transitionDuration:"0.6s",getSortData:{name:".name",symbol:".symbol",number:".number parseInt",category:"[data-category]",weight:function(n){var i=t(n).find(".weight").text();return parseFloat(i.replace(/[\(\)]/g,""))}}}),r={numberGreaterThan50:function(){var n=t(this).find(".number").text();return parseInt(n,10)>50},ium:function(){var n=t(this).find(".name").text();return n.match(/ium$/)}},u={numberGreaterThan50:"function() {\n  var number = $(this).find('.number').text();\n  return parseInt( number, 10 ) > 50;\n}",ium:"function() {\n  var name = $(this).find('.name').text();\n  return name.match( /ium$/ );\n}"},i=t("#hero .code-display code");t("#hero .sort-by").on("click","button",function(){var r=t(this).attr("data-sort-by");n.isotope({sortBy:r});i.displayIsotopeCode("sortBy",r)});t("#hero .filters").on("click","button",function(){var f=t(this).attr("data-filter"),e=r[f]||f,o=u[f]||f;n.isotope({filter:e});i.displayIsotopeCode("filter",o)})})(),function(){var n=t("#in-use-container");n.find(".in-use-item").hide();n.isotope({itemSelector:"none",masonry:{columnWidth:".grid-sizer",gutter:".gutter-sizer"}});n.isotope("option",{itemSelector:".in-use-item"});n.imagesLoaded().progress(function(i,r){var u=t(r.img).parents(".in-use-item");u.show();n.isotope("appended",u)})}()}}(window,jQuery),function(n,t){"use strict";var i=n.ID,r=t(n);i["layout-modes"]=function(){(function(){var n=t("#layout-modes-demo .isotope").isotope({itemSelector:".element-item",layoutMode:"masonry",transitionDuration:"0.6s",masonry:{columnWidth:110},cellsByRow:{columnWidth:220,rowHeight:220},masonryHorizontal:{rowHeight:110},cellsByColumn:{columnWidth:220,rowHeight:220}}),i=!1,u=t("#layout-modes-demo .code-display code");t("#layout-modes-demo .button-group").on("click","button",function(){var o=t(this),f=!!o.attr("data-is-horizontal"),s,e;i!==f&&(s=f?{height:r.height()*.7}:{width:"auto"},n.css(s),i=f);e=o.attr("data-layout-mode-value");n.isotope({layoutMode:e});u.displayIsotopeCode("layoutMode",e)})})()}}(window,jQuery),function(n,t){"use strict";function i(){var n=document.createElement("div"),t=Math.random(),i=Math.random(),r=t>.8?"w3":t>.6?"w2":"",u=i>.8?"h3":i>.5?"h2":"";return n.className="mini-item "+r+" "+u,n}var r=n.ID;r.methods=function(){(function(){var n=t("#appended-demo"),r=n.find(".isotope").isotope({masonry:{columnWidth:50}});n.find("button").on("click",function(){for(var u,n=[],t=0;t<3;t++)u=i(),n.push(u);r.append(n).isotope("appended",n)})})(),function(){var i=t("#destroy-demo"),r={masonry:{columnWidth:50}},u=i.find(".isotope").isotope(r),n=!0;i.find("button").on("click",function(){n?u.isotope("destroy"):u.isotope(r);n=!n})}(),function(){var n=t("#insert-demo"),r=n.find(".isotope").isotope({masonry:{columnWidth:50},filter:function(){var n=t(this).find(".number").text();return parseInt(n,10)%2},sortBy:"number",getSortData:{number:".number parseInt"}});n.find("button").on("click",function(){for(var n,e,u=[],f=0;f<3;f++)n=i(),e=Math.floor(Math.random()*100),t(n).append('<p class="number">'+e+"<\/p>"),u.push(n);r.isotope("insert",u)})}(),function(){var n=t("#layout-demo .isotope").isotope({masonry:{columnWidth:50}});n.on("click",".mini-item",function(){t(this).toggleClass("gigante");n.isotope("layout")})}(),function(){var n=t("#prepended-demo"),r=n.find(".isotope").isotope({masonry:{columnWidth:50}});n.find("button").on("click",function(){for(var u,n=[],t=0;t<3;t++)u=i(),n.push(u);r.prepend(n).isotope("prepended",n)})}(),function(){var n=t("#stamp-demo"),i=n.find(".isotope").isotope({itemSelector:".mini-item",masonry:{columnWidth:50}}),u=n.find(".stamp"),r=!1;n.find("button").on("click",function(){r?i.isotope("unstamp",u):i.isotope("stamp",u);i.isotope("layout");r=!r})}(),function(){var n=t("#remove-demo .isotope").isotope({masonry:{columnWidth:50}});n.on("click",".mini-item",function(){n.isotope("remove",this).isotope("layout")})}()}}(window,jQuery),function(n,t){"use strict";var i=n.ID;i.sorting=function(){(function(){var n=t("#sorting-demo .button-group"),i=t("#sorting-demo .isotope").isotope({itemSelector:".element-item",layoutMode:"fitRows",transitionDuration:"0.6s",getSortData:{name:".name",symbol:".symbol",number:".number parseInt",category:"[data-category]",weight:function(n){var i=t(n).find(".weight").text();return parseFloat(i.replace(/[\(\)]/g,""))}}}),r=t("#sorting-demo .code-display code");n.on("click","button",function(){var n=t(this).attr("data-sort-by");i.isotope({sortBy:n});r.displayIsotopeCode("sortBy",n)})})(),function(){function n(n){return n.split(",")}var i=t("#multiple-sort-by-demo .button-group"),r=t("#multiple-sort-by-demo .isotope").isotope({layoutMode:"fitRows",itemSelector:".mini-item",getSortData:{color:"[data-color]",number:".number parseInt"},sortBy:["color","number"]});i.on("click","button",function(){r.isotope({sortBy:n(this.getAttribute("data-sort-by"))})})}()}}(window,jQuery),function(n,t){"use strict";var i=n.ID;i.vertical=function(){(function(){var n=t("#vertical-feature-demo .isotope").isotope({itemSelector:"li",layoutMode:"vertical",transitionDuration:"0.6s",getSortData:{name:".name",symbol:".symbol",number:".number parseInt",category:".category",weight:function(n){var i=t(n).find(".weight").text();return parseFloat(i.replace(/[\(\)]/g,""))}}});t("#vertical-feature-demo .button-group").on("click","button",function(){var i=t(this).attr("data-sort-by");n.isotope({sortBy:i})})})()}}(window,jQuery);
// sourceMappingURL=isotope.pkgd.min.js.map;
/*
 * ----------------------------- JSTORAGE -------------------------------------
 * Simple local storage wrapper to save data on the browser side, supporting
 * all major browsers - IE6+, Firefox2+, Safari4+, Chrome4+ and Opera 10.5+
 *
 * Copyright (c) 2010 - 2012 Andris Reinman, andris.reinman@gmail.com
 * Project homepage: www.jstorage.info
 *
 * Licensed under MIT-style license:
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

(function () {
    var
        /* jStorage version */
        JSTORAGE_VERSION = "0.4.4",

        /* detect a dollar object or create one if not found */
        $ = window.jQuery || window.$ || (window.$ = {}),

        /* check for a JSON handling support */
        JSON = {
            parse:
                window.JSON && (window.JSON.parse || window.JSON.decode) ||
                String.prototype.evalJSON && function (str) { return String(str).evalJSON(); } ||
                $.parseJSON ||
                $.evalJSON,
            stringify:
                Object.toJSON ||
                window.JSON && (window.JSON.stringify || window.JSON.encode) ||
                $.toJSON
        };

    // Break if no JSON support was found
    if (!('parse' in JSON) || !('stringify' in JSON)) {
        throw new Error("No JSON support found, include //cdnjs.cloudflare.com/ajax/libs/json2/20110223/json2.js to page");
    }

    var
        /* This is the object, that holds the cached values */
        _storage = { __jstorage_meta: { CRC32: {} } },

        /* Actual browser storage (localStorage or globalStorage['domain']) */
        _storage_service = { jStorage: "{}" },

        /* DOM element for older IE versions, holds userData behavior */
        _storage_elm = null,

        /* How much space does the storage take */
        _storage_size = 0,

        /* which backend is currently used */
        _backend = false,

        /* onchange observers */
        _observers = {},

        /* timeout to wait after onchange event */
        _observer_timeout = false,

        /* last update time */
        _observer_update = 0,

        /* pubsub observers */
        _pubsub_observers = {},

        /* skip published items older than current timestamp */
        _pubsub_last = +new Date(),

        /* Next check for TTL */
        _ttl_timeout,

        /**
         * XML encoding and decoding as XML nodes can't be JSON'ized
         * XML nodes are encoded and decoded if the node is the value to be saved
         * but not if it's as a property of another object
         * Eg. -
         *   $.jStorage.set("key", xmlNode);        // IS OK
         *   $.jStorage.set("key", {xml: xmlNode}); // NOT OK
         */
        _XMLService = {

            /**
             * Validates a XML node to be XML
             * based on jQuery.isXML function
             */
            isXML: function (elm) {
                var documentElement = (elm ? elm.ownerDocument || elm : 0).documentElement;
                return documentElement ? documentElement.nodeName !== "HTML" : false;
            },

            /**
             * Encodes a XML node to string
             * based on http://www.mercurytide.co.uk/news/article/issues-when-working-ajax/
             */
            encode: function (xmlNode) {
                if (!this.isXML(xmlNode)) {
                    return false;
                }
                try { // Mozilla, Webkit, Opera
                    return new XMLSerializer().serializeToString(xmlNode);
                } catch (E1) {
                    try {  // IE
                        return xmlNode.xml;
                    } catch (E2) { }
                }
                return false;
            },

            /**
             * Decodes a XML node from string
             * loosely based on http://outwestmedia.com/jquery-plugins/xmldom/
             */
            decode: function (xmlString) {
                var dom_parser = ("DOMParser" in window && (new DOMParser()).parseFromString) ||
                        (window.ActiveXObject && function (_xmlString) {
                            var xml_doc = new ActiveXObject('Microsoft.XMLDOM');
                            xml_doc.async = 'false';
                            xml_doc.loadXML(_xmlString);
                            return xml_doc;
                        }),
                resultXML;
                if (!dom_parser) {
                    return false;
                }
                resultXML = dom_parser.call("DOMParser" in window && (new DOMParser()) || window, xmlString, 'text/xml');
                return this.isXML(resultXML) ? resultXML : false;
            }
        };


    ////////////////////////// PRIVATE METHODS ////////////////////////

    /**
     * Initialization function. Detects if the browser supports DOM Storage
     * or userData behavior and behaves accordingly.
     */
    function _init() {
        /* Check if browser supports localStorage */
        var localStorageReallyWorks = false;
        if ("localStorage" in window) {
            try {
                window.localStorage.setItem('_tmptest', 'tmpval');
                localStorageReallyWorks = true;
                window.localStorage.removeItem('_tmptest');
            } catch (BogusQuotaExceededErrorOnIos5) {
                // Thanks be to iOS5 Private Browsing mode which throws
                // QUOTA_EXCEEDED_ERRROR DOM Exception 22.
            }
        }

        if (localStorageReallyWorks) {
            try {
                if (window.localStorage) {
                    _storage_service = window.localStorage;
                    _backend = "localStorage";
                    _observer_update = _storage_service.jStorage_update;
                }
            } catch (E3) {/* Firefox fails when touching localStorage and cookies are disabled */ }
        }
            /* Check if browser supports globalStorage */
        else if ("globalStorage" in window) {
            try {
                if (window.globalStorage) {
                    if (window.location.hostname == 'localhost') {
                        _storage_service = window.globalStorage['localhost.localdomain'];
                    }
                    else {
                        _storage_service = window.globalStorage[window.location.hostname];
                    }
                    _backend = "globalStorage";
                    _observer_update = _storage_service.jStorage_update;
                }
            } catch (E4) {/* Firefox fails when touching localStorage and cookies are disabled */ }
        }
            /* Check if browser supports userData behavior */
        else {
            _storage_elm = document.createElement('link');
            if (_storage_elm.addBehavior) {

                /* Use a DOM element to act as userData storage */
                _storage_elm.style.behavior = 'url(#default#userData)';

                /* userData element needs to be inserted into the DOM! */
                document.getElementsByTagName('head')[0].appendChild(_storage_elm);

                try {
                    _storage_elm.load("jStorage");
                } catch (E) {
                    // try to reset cache
                    _storage_elm.setAttribute("jStorage", "{}");
                    _storage_elm.save("jStorage");
                    _storage_elm.load("jStorage");
                }

                var data = "{}";
                try {
                    data = _storage_elm.getAttribute("jStorage");
                } catch (E5) { }

                try {
                    _observer_update = _storage_elm.getAttribute("jStorage_update");
                } catch (E6) { }

                _storage_service.jStorage = data;
                _backend = "userDataBehavior";
            } else {
                _storage_elm = null;
                return;
            }
        }

        // Load data from storage
        _load_storage();

        // remove dead keys
        _handleTTL();

        // start listening for changes
        _setupObserver();

        // initialize publish-subscribe service
        _handlePubSub();

        // handle cached navigation
        if ("addEventListener" in window) {
            window.addEventListener("pageshow", function (event) {
                if (event.persisted) {
                    _storageObserver();
                }
            }, false);
        }
    }

    /**
     * Reload data from storage when needed
     */
    function _reloadData() {
        var data = "{}";

        if (_backend == "userDataBehavior") {
            _storage_elm.load("jStorage");

            try {
                data = _storage_elm.getAttribute("jStorage");
            } catch (E5) { }

            try {
                _observer_update = _storage_elm.getAttribute("jStorage_update");
            } catch (E6) { }

            _storage_service.jStorage = data;
        }

        _load_storage();

        // remove dead keys
        _handleTTL();

        _handlePubSub();
    }

    /**
     * Sets up a storage change observer
     */
    function _setupObserver() {
        if (_backend == "localStorage" || _backend == "globalStorage") {
            if ("addEventListener" in window) {
                window.addEventListener("storage", _storageObserver, false);
            } else {
                document.attachEvent("onstorage", _storageObserver);
            }
        } else if (_backend == "userDataBehavior") {
            setInterval(_storageObserver, 1000);
        }
    }

    /**
     * Fired on any kind of data change, needs to check if anything has
     * really been changed
     */
    function _storageObserver() {
        var updateTime;
        // cumulate change notifications with timeout
        clearTimeout(_observer_timeout);
        _observer_timeout = setTimeout(function () {

            if (_backend == "localStorage" || _backend == "globalStorage") {
                updateTime = _storage_service.jStorage_update;
            } else if (_backend == "userDataBehavior") {
                _storage_elm.load("jStorage");
                try {
                    updateTime = _storage_elm.getAttribute("jStorage_update");
                } catch (E5) { }
            }

            if (updateTime && updateTime != _observer_update) {
                _observer_update = updateTime;
                _checkUpdatedKeys();
            }

        }, 25);
    }

    /**
     * Reloads the data and checks if any keys are changed
     */
    function _checkUpdatedKeys() {
        var oldCrc32List = JSON.parse(JSON.stringify(_storage.__jstorage_meta.CRC32)),
            newCrc32List;

        _reloadData();
        newCrc32List = JSON.parse(JSON.stringify(_storage.__jstorage_meta.CRC32));

        var key,
            updated = [],
            removed = [];

        for (key in oldCrc32List) {
            if (oldCrc32List.hasOwnProperty(key)) {
                if (!newCrc32List[key]) {
                    removed.push(key);
                    continue;
                }
                if (oldCrc32List[key] != newCrc32List[key] && String(oldCrc32List[key]).substr(0, 2) == "2.") {
                    updated.push(key);
                }
            }
        }

        for (key in newCrc32List) {
            if (newCrc32List.hasOwnProperty(key)) {
                if (!oldCrc32List[key]) {
                    updated.push(key);
                }
            }
        }

        _fireObservers(updated, "updated");
        _fireObservers(removed, "deleted");
    }

    /**
     * Fires observers for updated keys
     *
     * @param {Array|String} keys Array of key names or a key
     * @param {String} action What happened with the value (updated, deleted, flushed)
     */
    function _fireObservers(keys, action) {
        keys = [].concat(keys || []);
        if (action == "flushed") {
            keys = [];
            for (var key in _observers) {
                if (_observers.hasOwnProperty(key)) {
                    keys.push(key);
                }
            }
            action = "deleted";
        }
        for (var i = 0, len = keys.length; i < len; i++) {
            if (_observers[keys[i]]) {
                for (var j = 0, jlen = _observers[keys[i]].length; j < jlen; j++) {
                    _observers[keys[i]][j](keys[i], action);
                }
            }
            if (_observers["*"]) {
                for (var j = 0, jlen = _observers["*"].length; j < jlen; j++) {
                    _observers["*"][j](keys[i], action);
                }
            }
        }
    }

    /**
     * Publishes key change to listeners
     */
    function _publishChange() {
        var updateTime = (+new Date()).toString();

        if (_backend == "localStorage" || _backend == "globalStorage") {
            try {
                _storage_service.jStorage_update = updateTime;
            } catch (E8) {
                // safari private mode has been enabled after the jStorage initialization
                _backend = false;
            }
        } else if (_backend == "userDataBehavior") {
            _storage_elm.setAttribute("jStorage_update", updateTime);
            _storage_elm.save("jStorage");
        }

        _storageObserver();
    }

    /**
     * Loads the data from the storage based on the supported mechanism
     */
    function _load_storage() {
        /* if jStorage string is retrieved, then decode it */
        if (_storage_service.jStorage) {
            try {
                _storage = JSON.parse(String(_storage_service.jStorage));
            } catch (E6) { _storage_service.jStorage = "{}"; }
        } else {
            _storage_service.jStorage = "{}";
        }
        _storage_size = _storage_service.jStorage ? String(_storage_service.jStorage).length : 0;

        if (!_storage.__jstorage_meta) {
            _storage.__jstorage_meta = {};
        }
        if (!_storage.__jstorage_meta.CRC32) {
            _storage.__jstorage_meta.CRC32 = {};
        }
    }

    /**
     * This functions provides the "save" mechanism to store the jStorage object
     */
    function _save() {
        _dropOldEvents(); // remove expired events
        try {
            _storage_service.jStorage = JSON.stringify(_storage);
            // If userData is used as the storage engine, additional
            if (_storage_elm) {
                _storage_elm.setAttribute("jStorage", _storage_service.jStorage);
                _storage_elm.save("jStorage");
            }
            _storage_size = _storage_service.jStorage ? String(_storage_service.jStorage).length : 0;
        } catch (E7) {/* probably cache is full, nothing is saved this way*/ }
    }

    /**
     * Function checks if a key is set and is string or numberic
     *
     * @param {String} key Key name
     */
    function _checkKey(key) {
        if (!key || (typeof key != "string" && typeof key != "number")) {
            throw new TypeError('Key name must be string or numeric');
        }
        if (key == "__jstorage_meta") {
            throw new TypeError('Reserved key name');
        }
        return true;
    }

    /**
     * Removes expired keys
     */
    function _handleTTL() {
        var curtime, i, TTL, CRC32, nextExpire = Infinity, changed = false, deleted = [];

        clearTimeout(_ttl_timeout);

        if (!_storage.__jstorage_meta || typeof _storage.__jstorage_meta.TTL != "object") {
            // nothing to do here
            return;
        }

        curtime = +new Date();
        TTL = _storage.__jstorage_meta.TTL;

        CRC32 = _storage.__jstorage_meta.CRC32;
        for (i in TTL) {
            if (TTL.hasOwnProperty(i)) {
                if (TTL[i] <= curtime) {
                    delete TTL[i];
                    delete CRC32[i];
                    delete _storage[i];
                    changed = true;
                    deleted.push(i);
                } else if (TTL[i] < nextExpire) {
                    nextExpire = TTL[i];
                }
            }
        }

        // set next check
        if (nextExpire != Infinity) {
            _ttl_timeout = setTimeout(_handleTTL, nextExpire - curtime);
        }

        // save changes
        if (changed) {
            _save();
            _publishChange();
            _fireObservers(deleted, "deleted");
        }
    }

    /**
     * Checks if there's any events on hold to be fired to listeners
     */
    function _handlePubSub() {
        var i, len;
        if (!_storage.__jstorage_meta.PubSub) {
            return;
        }
        var pubelm,
            _pubsubCurrent = _pubsub_last;

        for (i = len = _storage.__jstorage_meta.PubSub.length - 1; i >= 0; i--) {
            pubelm = _storage.__jstorage_meta.PubSub[i];
            if (pubelm[0] > _pubsub_last) {
                _pubsubCurrent = pubelm[0];
                _fireSubscribers(pubelm[1], pubelm[2]);
            }
        }

        _pubsub_last = _pubsubCurrent;
    }

    /**
     * Fires all subscriber listeners for a pubsub channel
     *
     * @param {String} channel Channel name
     * @param {Mixed} payload Payload data to deliver
     */
    function _fireSubscribers(channel, payload) {
        if (_pubsub_observers[channel]) {
            for (var i = 0, len = _pubsub_observers[channel].length; i < len; i++) {
                // send immutable data that can't be modified by listeners
                _pubsub_observers[channel][i](channel, JSON.parse(JSON.stringify(payload)));
            }
        }
    }

    /**
     * Remove old events from the publish stream (at least 2sec old)
     */
    function _dropOldEvents() {
        if (!_storage.__jstorage_meta.PubSub) {
            return;
        }

        var retire = +new Date() - 2000;

        for (var i = 0, len = _storage.__jstorage_meta.PubSub.length; i < len; i++) {
            if (_storage.__jstorage_meta.PubSub[i][0] <= retire) {
                // deleteCount is needed for IE6
                _storage.__jstorage_meta.PubSub.splice(i, _storage.__jstorage_meta.PubSub.length - i);
                break;
            }
        }

        if (!_storage.__jstorage_meta.PubSub.length) {
            delete _storage.__jstorage_meta.PubSub;
        }

    }

    /**
     * Publish payload to a channel
     *
     * @param {String} channel Channel name
     * @param {Mixed} payload Payload to send to the subscribers
     */
    function _publish(channel, payload) {
        if (!_storage.__jstorage_meta) {
            _storage.__jstorage_meta = {};
        }
        if (!_storage.__jstorage_meta.PubSub) {
            _storage.__jstorage_meta.PubSub = [];
        }

        _storage.__jstorage_meta.PubSub.unshift([+new Date, channel, payload]);

        _save();
        _publishChange();
    }


    /**
     * JS Implementation of MurmurHash2
     *
     *  SOURCE: https://github.com/garycourt/murmurhash-js (MIT licensed)
     *
     * @author <a href="mailto:gary.court@gmail.com">Gary Court</a>
     * @see http://github.com/garycourt/murmurhash-js
     * @author <a href="mailto:aappleby@gmail.com">Austin Appleby</a>
     * @see http://sites.google.com/site/murmurhash/
     *
     * @param {string} str ASCII only
     * @param {number} seed Positive integer only
     * @return {number} 32-bit positive integer hash
     */

    function murmurhash2_32_gc(str, seed) {
        var
            l = str.length,
            h = seed ^ l,
            i = 0,
            k;

        while (l >= 4) {
            k =
                ((str.charCodeAt(i) & 0xff)) |
                ((str.charCodeAt(++i) & 0xff) << 8) |
                ((str.charCodeAt(++i) & 0xff) << 16) |
                ((str.charCodeAt(++i) & 0xff) << 24);

            k = (((k & 0xffff) * 0x5bd1e995) + ((((k >>> 16) * 0x5bd1e995) & 0xffff) << 16));
            k ^= k >>> 24;
            k = (((k & 0xffff) * 0x5bd1e995) + ((((k >>> 16) * 0x5bd1e995) & 0xffff) << 16));

            h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16)) ^ k;

            l -= 4;
            ++i;
        }

        switch (l) {
            case 3: h ^= (str.charCodeAt(i + 2) & 0xff) << 16;
            case 2: h ^= (str.charCodeAt(i + 1) & 0xff) << 8;
            case 1: h ^= (str.charCodeAt(i) & 0xff);
                h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16));
        }

        h ^= h >>> 13;
        h = (((h & 0xffff) * 0x5bd1e995) + ((((h >>> 16) * 0x5bd1e995) & 0xffff) << 16));
        h ^= h >>> 15;

        return h >>> 0;
    }

    ////////////////////////// PUBLIC INTERFACE /////////////////////////

    $.jStorage = {
        /* Version number */
        version: JSTORAGE_VERSION,

        /**
         * Sets a key's value.
         *
         * @param {String} key Key to set. If this value is not set or not
         *              a string an exception is raised.
         * @param {Mixed} value Value to set. This can be any value that is JSON
         *              compatible (Numbers, Strings, Objects etc.).
         * @param {Object} [options] - possible options to use
         * @param {Number} [options.TTL] - optional TTL value
         * @return {Mixed} the used value
         */
        set: function (key, value, options) {
            _checkKey(key);

            options = options || {};

            // undefined values are deleted automatically
            if (typeof value == "undefined") {
                this.deleteKey(key);
                return value;
            }

            if (_XMLService.isXML(value)) {
                value = { _is_xml: true, xml: _XMLService.encode(value) };
            } else if (typeof value == "function") {
                return undefined; // functions can't be saved!
            } else if (value && typeof value == "object") {
                // clone the object before saving to _storage tree
                value = JSON.parse(JSON.stringify(value));
            }

            _storage[key] = value;

            _storage.__jstorage_meta.CRC32[key] = "2." + murmurhash2_32_gc(JSON.stringify(value), 0x9747b28c);

            this.setTTL(key, options.TTL || 0); // also handles saving and _publishChange

            _fireObservers(key, "updated");
            return value;
        },

        /**
         * Looks up a key in cache
         *
         * @param {String} key - Key to look up.
         * @param {mixed} def - Default value to return, if key didn't exist.
         * @return {Mixed} the key value, default value or null
         */
        get: function (key, def) {
            _checkKey(key);
            if (key in _storage) {
                if (_storage[key] && typeof _storage[key] == "object" && _storage[key]._is_xml) {
                    return _XMLService.decode(_storage[key].xml);
                } else {
                    return _storage[key];
                }
            }
            return typeof (def) == 'undefined' ? null : def;
        },

        /**
         * Deletes a key from cache.
         *
         * @param {String} key - Key to delete.
         * @return {Boolean} true if key existed or false if it didn't
         */
        deleteKey: function (key) {
            _checkKey(key);
            if (key in _storage) {
                delete _storage[key];
                // remove from TTL list
                if (typeof _storage.__jstorage_meta.TTL == "object" &&
                  key in _storage.__jstorage_meta.TTL) {
                    delete _storage.__jstorage_meta.TTL[key];
                }

                delete _storage.__jstorage_meta.CRC32[key];

                _save();
                _publishChange();
                _fireObservers(key, "deleted");
                return true;
            }
            return false;
        },

        /**
         * Sets a TTL for a key, or remove it if ttl value is 0 or below
         *
         * @param {String} key - key to set the TTL for
         * @param {Number} ttl - TTL timeout in milliseconds
         * @return {Boolean} true if key existed or false if it didn't
         */
        setTTL: function (key, ttl) {
            var curtime = +new Date();
            _checkKey(key);
            ttl = Number(ttl) || 0;
            if (key in _storage) {

                if (!_storage.__jstorage_meta.TTL) {
                    _storage.__jstorage_meta.TTL = {};
                }

                // Set TTL value for the key
                if (ttl > 0) {
                    _storage.__jstorage_meta.TTL[key] = curtime + ttl;
                } else {
                    delete _storage.__jstorage_meta.TTL[key];
                }

                _save();

                _handleTTL();

                _publishChange();
                return true;
            }
            return false;
        },

        /**
         * Gets remaining TTL (in milliseconds) for a key or 0 when no TTL has been set
         *
         * @param {String} key Key to check
         * @return {Number} Remaining TTL in milliseconds
         */
        getTTL: function (key) {
            var curtime = +new Date(), ttl;
            _checkKey(key);
            if (key in _storage && _storage.__jstorage_meta.TTL && _storage.__jstorage_meta.TTL[key]) {
                ttl = _storage.__jstorage_meta.TTL[key] - curtime;
                return ttl || 0;
            }
            return 0;
        },

        /**
         * Deletes everything in cache.
         *
         * @return {Boolean} Always true
         */
        flush: function () {
            _storage = { __jstorage_meta: { CRC32: {} } };
            _save();
            _publishChange();
            _fireObservers(null, "flushed");
            return true;
        },

        /**
         * Returns a read-only copy of _storage
         *
         * @return {Object} Read-only copy of _storage
        */
        storageObj: function () {
            function F() { }
            F.prototype = _storage;
            return new F();
        },

        /**
         * Returns an index of all used keys as an array
         * ['key1', 'key2',..'keyN']
         *
         * @return {Array} Used keys
        */
        index: function () {
            var index = [], i;
            for (i in _storage) {
                if (_storage.hasOwnProperty(i) && i != "__jstorage_meta") {
                    index.push(i);
                }
            }
            return index;
        },

        /**
         * How much space in bytes does the storage take?
         *
         * @return {Number} Storage size in chars (not the same as in bytes,
         *                  since some chars may take several bytes)
         */
        storageSize: function () {
            return _storage_size;
        },

        /**
         * Which backend is currently in use?
         *
         * @return {String} Backend name
         */
        currentBackend: function () {
            return _backend;
        },

        /**
         * Test if storage is available
         *
         * @return {Boolean} True if storage can be used
         */
        storageAvailable: function () {
            return !!_backend;
        },

        /**
         * Register change listeners
         *
         * @param {String} key Key name
         * @param {Function} callback Function to run when the key changes
         */
        listenKeyChange: function (key, callback) {
            _checkKey(key);
            if (!_observers[key]) {
                _observers[key] = [];
            }
            _observers[key].push(callback);
        },

        /**
         * Remove change listeners
         *
         * @param {String} key Key name to unregister listeners against
         * @param {Function} [callback] If set, unregister the callback, if not - unregister all
         */
        stopListening: function (key, callback) {
            _checkKey(key);

            if (!_observers[key]) {
                return;
            }

            if (!callback) {
                delete _observers[key];
                return;
            }

            for (var i = _observers[key].length - 1; i >= 0; i--) {
                if (_observers[key][i] == callback) {
                    _observers[key].splice(i, 1);
                }
            }
        },

        /**
         * Subscribe to a Publish/Subscribe event stream
         *
         * @param {String} channel Channel name
         * @param {Function} callback Function to run when the something is published to the channel
         */
        subscribe: function (channel, callback) {
            channel = (channel || "").toString();
            if (!channel) {
                throw new TypeError('Channel not defined');
            }
            if (!_pubsub_observers[channel]) {
                _pubsub_observers[channel] = [];
            }
            _pubsub_observers[channel].push(callback);
        },

        /**
         * Publish data to an event stream
         *
         * @param {String} channel Channel name
         * @param {Mixed} payload Payload to deliver
         */
        publish: function (channel, payload) {
            channel = (channel || "").toString();
            if (!channel) {
                throw new TypeError('Channel not defined');
            }

            _publish(channel, payload);
        },

        /**
         * Reloads the data from browser storage
         */
        reInit: function () {
            _reloadData();
        }
    };

    // Initialize jStorage
    _init();

})();;
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

    // var calendarData = $.jStorage.get('livestream');
    // var livestream_startdatetimeUTC = $.jStorage.get('livestream_startdatetimeUTC');
    // var livestream_enddatetimeUTC = $.jStorage.get('livestream_enddatetimeUTC');

    // livestream_enddatetimeUTC = moment(livestream_enddatetimeUTC).zone('+0000');  //SharePoint store UTC datetime

    // var rightnow = new Date();
    // var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime

    // if (livestream_enddatetimeUTC < rightnowUTC) {
    //     //console.log(livestream_enddatetimeUTC.format() + ' - event finished - UTC time ' + rightnowUTC.format());
    //     return;
    // }

    // if (calendarData == null || calendarData == "") {

    //     var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";  //HH is 24 hours, hh is 12 hours

    //     //SharePoint 2013 is using new rest api to replace listdata.svc
    //     var oDataFilter = "$filter=Enabled ne false and StartShowBannerDateTime le datetime'" + dateFilter + "' and EndShowBannerDateTime ge datetime'" + dateFilter + "'&$orderby=StartDateTime asc&$top=1";
    //     //console.log(eventsURL + oDataFilter + ' at UTC time ' + rightnowUTC.format());
    //     $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
    //         var sortedSet = $(d);
    //         //console.log(sortedSet.length + ' at UTC time ' + rightnowUTC.format());
    //         $(sortedSet).each(function () {
    //             var $CalendarEntry = $(this)[0];
    //             var title = $CalendarEntry["Title"];
    //             var url = $CalendarEntry['LiveStreamUrl'] ? $CalendarEntry['LiveStreamUrl']['Url'] : "";
    //             var startdatetime = $CalendarEntry['StartDateTime'];  //date in SharePoint is using UTC timezone +0000;
    //             var enddatetime = $CalendarEntry['EndDateTime'];
    //             var startdatetimeSydney = moment(startdatetime).tz('Australia/Sydney'); //.zone('+1100');
    //             var enddatetimeSydney = moment(enddatetime).tz('Australia/Sydney');
    //             var eventId = $CalendarEntry['Id'];
    //             var rightnow = new Date();
    //             var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
                
    //             var livestream_startdatetimeUTC = moment(startdatetime).zone('+0000');  //SharePoint store UTC datetime
    //             var livestream_enddatetimeUTC = moment(enddatetime).zone('+0000');  //SharePoint store UTC datetime

    //             var timeToAirValue = timeToAir(startdatetime, enddatetime);

    //             if (livestream_enddatetimeUTC >= rightnowUTC) {
    //                 var html = '<div class="livestream">';
    //                 if (livestream_startdatetimeUTC > rightnowUTC) {
    //                     html += '<div class="event-banner hidden-xs alert alert-dismissible" role="alert">';
    //                 } else {
    //                     html += '<div class="event-banner livestreamonair hidden-xs alert alert-dismissible" role="alert">';
    //                 }

    //                 html += '<div class="container">';
    //                 html += '<a href="'+ url +'" title="' + title + '" id="livestreamlink" class="livestream-permanent">';
    //                 html += '<div class="livestreamtitle"><span class="livestreamtitlespan">';
    //                 html += title;
    //                 html += '</span>';
    //                 html += '<div class="livestreamtime"><span id="timeToAir">' + timeToAir(startdatetime, enddatetime) + '</span> (' + startdatetimeSydney.format('hA') + " Sydney, " + enddatetimeSydney.format('Do MMM YYYY') + ') #NETUG</div>';
    //                 html += '</div></a>';
    //                 html += '</div>';
    //                 html += '</div>';
    //                 html += '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
    //                 html += '</div>';
    //                 $('#livestream').append(html);
    //             }

    //             $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration }); 
    //             $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
    //             $.jStorage.set('livestream_event_id', eventId, { TTL: cacheDuration });
    //             //console.log(startdatetime + ' and ' + enddatetime + ' are cached at UTC time ' + rightnowUTC.format());
    //             updateLiveStreamWidget(timeToAirValue === 'Streaming Live Now.');
    //         });

    //         $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration }); 
    //         //console.log($('#livestream').html() + ' - livestream html is cached at UTC time ' + rightnowUTC.format());
    //         setIntervalFunction();
    //     }, "json");

    // } else {
    //     if (livestream_enddatetimeUTC == null || livestream_enddatetimeUTC.format() == 'Invalid date') {
    //         //console.log(livestream_enddatetimeUTC.format() + ' - Invalid date - at UTC time ' + rightnowUTC.format());
    //         return;
    //     }
    //     if (livestream_enddatetimeUTC >= rightnowUTC) {
    //         var timeToAirValue = timeToAir(livestream_startdatetimeUTC, livestream_enddatetimeUTC);
    //         //console.log(livestream_enddatetimeUTC.format() + ' - using cached html at UTC time ' + rightnowUTC.format());
    //         $('#livestream').html(calendarData);
    //         updateLiveStreamWidget(timeToAirValue === 'Streaming Live Now.');
    //         setIntervalFunction();
    //     }
    //     else {
    //         //console.log(livestream_enddatetimeUTC.format() + ' - cleaning banner html at UTC time ' + rightnowUTC.format());
    //         $('#livestream').html('');
    //         return;
    //     }
    // }
}

// function setIntervalFunction() {

//     //set interval - time to air
//     var rightnow = new Date();
//     var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime

//     //console.log('try to start to set interval - at UTC time ' + rightnowUTC.format());
//     var livestream_startdatetimeUTC = $.jStorage.get('livestream_startdatetimeUTC');
//     var livestream_enddatetimeUTC = $.jStorage.get('livestream_enddatetimeUTC');
//     var livestream_event_id = $.jStorage.get('livestream_event_id');

//     if (livestream_startdatetimeUTC == null || livestream_enddatetimeUTC == null) {
//         return;
//     }
//     //console.log(livestream_startdatetimeUTC + ' - ' + livestream_enddatetimeUTC + ' - start to set interval at UTC time ' + rightnowUTC.format());
//     var interval = setInterval(function () {

//         var rightnow = new Date();
//         var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
//         //console.log(livestream_startdatetimeUTC + ' - ' + livestream_enddatetimeUTC + ' - running interval function at UTC time ' + rightnowUTC.format());

//         var timeToAirValue = timeToAir(livestream_startdatetimeUTC, livestream_enddatetimeUTC)

//         if (timeToAirValue == '') {
//             $('#timeToAir').html('Finished!');            
//             $('#livestream').html('');
//             $.jStorage.set('livestream', '', { TTL: cacheDuration });
//             $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
//             $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });

//             updateLiveStreamWidget(false);
//             clearInterval(interval);
//             return;
//         }
//         else if (timeToAirValue == 'Streaming Live Now.') {
//             $('.event-banner').addClass('livestreamonair');
//             updateLiveStreamWidget(true);

//             $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
//             $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
//             $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
//             $.jStorage.set('livestream_event_id', livestream_event_id, { TTL: cacheDuration });
//         }

//         //update time to air container text
//         if ($('#timeToAir').html() != timeToAirValue) {
//             $('#timeToAir').html(timeToAirValue);
//             $.jStorage.set('livestream', $('#livestream').html(), { TTL: cacheDuration });
//             $.jStorage.set('livestream_startdatetimeUTC', livestream_startdatetimeUTC, { TTL: cacheDuration });
//             $.jStorage.set('livestream_enddatetimeUTC', livestream_enddatetimeUTC, { TTL: cacheDuration });
//             $.jStorage.set('livestream_event_id', livestream_event_id, { TTL: cacheDuration });
//             updateLiveStreamWidget(false);
//         }
//     }, 30000); //30 secs
// }

// function updateLiveStreamWidget(showWidget = false) {
//     var event_id = $.jStorage.get('livestream_event_id');
//     var rightnow = new Date();
//     var rightnowUTC = moment(rightnow).zone('+0000');  //SharePoint store UTC datetime
//     var loadExternalSpeakers = $.Deferred();
//     var loadInternalSpeakers = $.Deferred();
//     var stored_speaker = $.jStorage.get('livestream_speakers');

//     if (event_id === null || event_id === '' || !showWidget) {
//         $('#Livestream_Widget').removeClass("in");
//         $('#livestream_Video').html('');
//         $('#livestream_Chat').html('');
//         $('#yt-button-container').html('');

//         return;
//     } else {
//         var dateFilter = rightnowUTC.format('YYYY-MM-DD') + "T" + rightnowUTC.format('HH:mm:ss') + "Z";  //HH is 24 hours, hh is 12 hours
//         //SharePoint 2013 is using new rest api to replace listdata.svc
//         var oDataFilter = "$filter=Id eq " + event_id + "&$orderby=StartDateTime asc&$top=1";
//         oDataFilter += "&$select=*,InternalPresenters/EMail&$expand=InternalPresenters/Id";

//         $.get('/ssw/SharePointEventsService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), function (d) {
//             var data = $(d);

//             $(data).each(function () {
//                 var $event = $(this)[0];

//                 var youtube_id = $event['YouTubeId'];
//                 var speakersCount = 0;

//                 if (youtube_id === null || youtube_id === '') {
//                     return;
//                 }

//                 var title = $event['Title'].split(':')[1];
//                 var survey_url = $event['EvalFormURL'] ? $event['EvalFormURL']['Url'] : null;
//                 var github_url = $event['GitHubURL'] ? $event['GitHubURL']['Url'] : null;
//                 var about_talk = $event['EventDescription'];
//                 var speakers = [];

//                 var video_url = "https://www.youtube.com/embed/" + youtube_id + "?rel=0&autoplay=1";
//                 var chat_url = "https://www.youtube.com/live_chat?v=" + youtube_id + "&embed_domain=" + window.location.hostname;
//                 var livestream_link = "https://www.youtube.com/watch?v=" + youtube_id;

//                 if ($event['ExternalPresentersId'].results !== undefined && $event['ExternalPresentersId'].results.length > 0) {
//                     speakersCount = $event['ExternalPresentersId'].results.length;
//                     $event['ExternalPresentersId']['results'].forEach(function (id) {
//                         $.when(getExternalSpeaker(id)).done(function (result) {
//                             speakers.push(result);

//                             if (speakers.length === $event['ExternalPresentersId'].results.length) {
//                                 loadExternalSpeakers.resolve(true);
//                             }
//                         });
//                     });
//                 } else {
//                     loadExternalSpeakers.resolve(false);
//                 }

//                 if ($event['InternalPresenters'].results !== undefined && $event['InternalPresenters'].results.length > 0) {
//                     speakersCount += $event['InternalPresenters'].results.length
//                     $event['InternalPresenters']['results'].forEach(function (r) {
//                         $.when(getPresenterCRMDetails(r.EMail)).done(function (result) {
//                             speakers.push(result);
//                             if (speakers.length === speakersCount) {
//                                 loadInternalSpeakers.resolve(true);
//                             }
//                         });
//                     });
//                 } else {
//                     loadInternalSpeakers.resolve(false);
//                 }


//                 if (showWidget) {
//                     var video_frame = $("#video-embed");
//                     var chat_frame = $("#chat-embed");

//                     if (video_frame[0] === undefined || (video_frame[0] !== undefined && video_frame[0].src !== video_url)) {
//                         let frame = document.createElement("iframe");
//                         frame.referrerPolicy = "origin";
//                         frame.src = video_url;
//                         frame.frameBorder = "0";
//                         frame.style = "position:absolute;top:0;left:0;width:100%;height:100%;margin:0"
//                         frame.allowFullscreen = "true";
//                         frame.allow = "autoplay";
//                         frame.id = "video-embed";
//                         $('#livestream_Video').html(frame);
//                     }

//                     if (isMobile()) {
//                         $('#livestream_Chat').addClass('hidden');
//                         $('#livestream_Chat_mobile').removeClass('hidden');
//                         $('#livestream_Chat_mobile').html('<a href="' + livestream_link + '" target="_blank" class="red next btn rounded-btn">Chat with us on YouTube</a>');
//                     } else {
//                         $('#livestream_Chat').removeClass('hidden');
//                         $('#livestream_Chat_mobile').addClass('hidden');

//                         if (chat_frame[0] === undefined || (chat_frame[0] !== undefined && chat_frame[0].src !== chat_url)) {
//                             frame = document.createElement("iframe");
//                             frame.referrerPolicy = "origin";
//                             frame.src = chat_url;
//                             frame.frameBorder = "0";
//                             frame.style = "width: 100%; height: 420px;"
//                             frame.id = "chat-embed";
//                             $('#livestream_Chat').html(frame);
//                         }
//                     }

//                     if (survey_url === null || survey_url === '') {
//                         $('#livestream_Survey_Url').attr('href', '/ssw/NETUG/EvaluationSurvey.aspx');
//                     } else {
//                         $('#livestream_Survey_Url').attr('href', survey_url);
//                     }

//                     if (github_url === null || github_url === '') {
//                         $('#livestream_GitHub').addClass('hidden');
//                     } else {
//                         $('#livestream_GitHub').removeClass('hidden');
//                         $('#livestream_GitHub_Url').attr('href', github_url);
//                     }

//                     $('#livestream_Image').attr('alt', title);
//                     $('#livestream_Title').text(title);


//                     if ( $('#livestream_talk_description').html() !== about_talk) {
//                         $('#livestream_talk_description').html(about_talk);
//                     }

//                     //TODO: include a foreach to run CRMDetails to each presenter from SharePoint
//                     $.when(loadInternalSpeakers, loadExternalSpeakers).done(function (r1, r2) {
//                         if ((r1 || r2) && ($('#livestream_About_Speaker').html().length <= 0 || speakers.every(r => stored_speaker.find(r1 => r1.id === r.id)) === false)) {
//                             about_speaker = "";
//                             speakers.forEach(function (s) {
//                                 about_speaker += buildPresenterHTML(s);
//                             });

//                             $('#livestream_About_Speaker').html(about_speaker);
//                             $.jStorage.set('livestream_speakers', speakers, { TTL: cacheDuration });
//                         }
//                     });

//                     $('#Livestream_Widget').addClass("in");

//                     //render youtube subscribe button
//                     var container = $('#yt-button-container')[0];
//                     var yt_button = '<div class="g-ytsubscribe" data-channelid="UCBFgwtV9lIIhvoNh0xoQ7Pg"></div>';
//                     if (container.innerHTML === "") {
//                         container.innerHTML = yt_button;
//                         gapi.ytsubscribe.go(container);
//                     }
//                 }
//             });
//         });
//     }
// }

function isMobile() {
    var isMobile = false; //initiate as false
    // device detection
    if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
        || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) {
        isMobile = true;
    }
    return isMobile;
}

// function getExternalSpeaker(externalPresentersId) {
//     var oDataFilter = "$filter=Id eq " + externalPresentersId;
//     var result = $.Deferred();

//     $.ajax({
//         type: "GET", async: false, url: '/ssw/SharePointExternalSpeakersService.aspx?odataFilter=' + encodeURIComponent(oDataFilter), success: function (d) {
//             var data = $(d)[0];

// //            var presenterGitHubRepo = data[0]["PresenterGitHubRepo"];

//             result.resolve({
//                 id: 'ext' + externalPresentersId,
//                 photo_url: data["PresenterProfileImage"]["Url"],
//                 name: data["Title"],
//                 description: $.parseHTML(data["PresenterShortDescription"].toString())[0].innerText,
//                 profile_url: data["PresenterProfileLink"],
//                 profile_text: data["Title"] + "'s profile"
//             });
//         }
//     });

//     return $.when(result).done(function (r) {
//         return r;
//     }).promise();
// }

// function getPresenterCRMDetails(userEmail = '') {
//     if (userEmail === '') {
//         return;
//     }

//     var result = $.Deferred();

//     $.get('/ssw/CRMService.aspx?odata=' + encodeURIComponent(userEmail), function (d) {
//         var data = $(d)[0];

//         result.resolve({
//             id: userEmail,
//             photo_url: data['PhotoURL'],
//             name: data['Nickname'] ? data['FirstName'] + ' (' + data['Nickname'] + ') ' + data['LastName'] : data['FirstName'] + ' ' + data['LastName'],
//             description: data['ShortDescription'],
//             profile_url: data['ProfileURL'],
//             profile_text: (data['Nickname'] || data['FirstName']) + "'s profile"
//         });
//     });

//     return $.when(result).done(function(r){
//         return r;
//     }).promise();
// }

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
});;
/*! nanoScrollerJS - v0.8.7 - (c) 2015 James Florentino; Licensed MIT */

!function(a){return"function"==typeof define&&define.amd?define(["jquery"],function(b){return a(b,window,document)}):"object"==typeof exports?module.exports=a(require("jquery"),window,document):a(jQuery,window,document)}(function(a,b,c){"use strict";var d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H;z={paneClass:"nano-pane",sliderClass:"nano-slider",contentClass:"nano-content",enabledClass:"has-scrollbar",flashedClass:"flashed",activeClass:"active",iOSNativeScrolling:!1,preventPageScrolling:!1,disableResize:!1,alwaysVisible:!1,flashDelay:1500,sliderMinHeight:20,sliderMaxHeight:null,documentContext:null,windowContext:null},u="scrollbar",t="scroll",l="mousedown",m="mouseenter",n="mousemove",p="mousewheel",o="mouseup",s="resize",h="drag",i="enter",w="up",r="panedown",f="DOMMouseScroll",g="down",x="wheel",j="keydown",k="keyup",v="touchmove",d="Microsoft Internet Explorer"===b.navigator.appName&&/msie 7./i.test(b.navigator.appVersion)&&b.ActiveXObject,e=null,D=b.requestAnimationFrame,y=b.cancelAnimationFrame,F=c.createElement("div").style,H=function(){var a,b,c,d,e,f;for(d=["t","webkitT","MozT","msT","OT"],a=e=0,f=d.length;f>e;a=++e)if(c=d[a],b=d[a]+"ransform",b in F)return d[a].substr(0,d[a].length-1);return!1}(),G=function(a){return H===!1?!1:""===H?a:H+a.charAt(0).toUpperCase()+a.substr(1)},E=G("transform"),B=E!==!1,A=function(){var a,b,d;return a=c.createElement("div"),b=a.style,b.position="absolute",b.width="100px",b.height="100px",b.overflow=t,b.top="-9999px",c.body.appendChild(a),d=a.offsetWidth-a.clientWidth,c.body.removeChild(a),d},C=function(){var a,c,d;return c=b.navigator.userAgent,(a=/(?=.+Mac OS X)(?=.+Firefox)/.test(c))?(d=/Firefox\/\d{2}\./.exec(c),d&&(d=d[0].replace(/\D+/g,"")),a&&+d>23):!1},q=function(){function j(d,f){this.el=d,this.options=f,e||(e=A()),this.$el=a(this.el),this.doc=a(this.options.documentContext||c),this.win=a(this.options.windowContext||b),this.body=this.doc.find("body"),this.$content=this.$el.children("."+this.options.contentClass),this.$content.attr("tabindex",this.options.tabIndex||0),this.content=this.$content[0],this.previousPosition=0,this.options.iOSNativeScrolling&&null!=this.el.style.WebkitOverflowScrolling?this.nativeScrolling():this.generate(),this.createEvents(),this.addEvents(),this.reset()}return j.prototype.preventScrolling=function(a,b){if(this.isActive)if(a.type===f)(b===g&&a.originalEvent.detail>0||b===w&&a.originalEvent.detail<0)&&a.preventDefault();else if(a.type===p){if(!a.originalEvent||!a.originalEvent.wheelDelta)return;(b===g&&a.originalEvent.wheelDelta<0||b===w&&a.originalEvent.wheelDelta>0)&&a.preventDefault()}},j.prototype.nativeScrolling=function(){this.$content.css({WebkitOverflowScrolling:"touch"}),this.iOSNativeScrolling=!0,this.isActive=!0},j.prototype.updateScrollValues=function(){var a,b;a=this.content,this.maxScrollTop=a.scrollHeight-a.clientHeight,this.prevScrollTop=this.contentScrollTop||0,this.contentScrollTop=a.scrollTop,b=this.contentScrollTop>this.previousPosition?"down":this.contentScrollTop<this.previousPosition?"up":"same",this.previousPosition=this.contentScrollTop,"same"!==b&&this.$el.trigger("update",{position:this.contentScrollTop,maximum:this.maxScrollTop,direction:b}),this.iOSNativeScrolling||(this.maxSliderTop=this.paneHeight-this.sliderHeight,this.sliderTop=0===this.maxScrollTop?0:this.contentScrollTop*this.maxSliderTop/this.maxScrollTop)},j.prototype.setOnScrollStyles=function(){var a;B?(a={},a[E]="translate(0, "+this.sliderTop+"px)"):a={top:this.sliderTop},D?(y&&this.scrollRAF&&y(this.scrollRAF),this.scrollRAF=D(function(b){return function(){return b.scrollRAF=null,b.slider.css(a)}}(this))):this.slider.css(a)},j.prototype.createEvents=function(){this.events={down:function(a){return function(b){return a.isBeingDragged=!0,a.offsetY=b.pageY-a.slider.offset().top,a.slider.is(b.target)||(a.offsetY=0),a.pane.addClass(a.options.activeClass),a.doc.bind(n,a.events[h]).bind(o,a.events[w]),a.body.bind(m,a.events[i]),!1}}(this),drag:function(a){return function(b){return a.sliderY=b.pageY-a.$el.offset().top-a.paneTop-(a.offsetY||.5*a.sliderHeight),a.scroll(),a.contentScrollTop>=a.maxScrollTop&&a.prevScrollTop!==a.maxScrollTop?a.$el.trigger("scrollend"):0===a.contentScrollTop&&0!==a.prevScrollTop&&a.$el.trigger("scrolltop"),!1}}(this),up:function(a){return function(b){return a.isBeingDragged=!1,a.pane.removeClass(a.options.activeClass),a.doc.unbind(n,a.events[h]).unbind(o,a.events[w]),a.body.unbind(m,a.events[i]),!1}}(this),resize:function(a){return function(b){a.reset()}}(this),panedown:function(a){return function(b){return a.sliderY=(b.offsetY||b.originalEvent.layerY)-.5*a.sliderHeight,a.scroll(),a.events.down(b),!1}}(this),scroll:function(a){return function(b){a.updateScrollValues(),a.isBeingDragged||(a.iOSNativeScrolling||(a.sliderY=a.sliderTop,a.setOnScrollStyles()),null!=b&&(a.contentScrollTop>=a.maxScrollTop?(a.options.preventPageScrolling&&a.preventScrolling(b,g),a.prevScrollTop!==a.maxScrollTop&&a.$el.trigger("scrollend")):0===a.contentScrollTop&&(a.options.preventPageScrolling&&a.preventScrolling(b,w),0!==a.prevScrollTop&&a.$el.trigger("scrolltop"))))}}(this),wheel:function(a){return function(b){var c;if(null!=b)return c=b.delta||b.wheelDelta||b.originalEvent&&b.originalEvent.wheelDelta||-b.detail||b.originalEvent&&-b.originalEvent.detail,c&&(a.sliderY+=-c/3),a.scroll(),!1}}(this),enter:function(a){return function(b){var c;if(a.isBeingDragged)return 1!==(b.buttons||b.which)?(c=a.events)[w].apply(c,arguments):void 0}}(this)}},j.prototype.addEvents=function(){var a;this.removeEvents(),a=this.events,this.options.disableResize||this.win.bind(s,a[s]),this.iOSNativeScrolling||(this.slider.bind(l,a[g]),this.pane.bind(l,a[r]).bind(""+p+" "+f,a[x])),this.$content.bind(""+t+" "+p+" "+f+" "+v,a[t])},j.prototype.removeEvents=function(){var a;a=this.events,this.win.unbind(s,a[s]),this.iOSNativeScrolling||(this.slider.unbind(),this.pane.unbind()),this.$content.unbind(""+t+" "+p+" "+f+" "+v,a[t])},j.prototype.generate=function(){var a,c,d,f,g,h,i;return f=this.options,h=f.paneClass,i=f.sliderClass,a=f.contentClass,(g=this.$el.children("."+h)).length||g.children("."+i).length||this.$el.append('<div class="'+h+'"><div class="'+i+'" /></div>'),this.pane=this.$el.children("."+h),this.slider=this.pane.find("."+i),0===e&&C()?(d=b.getComputedStyle(this.content,null).getPropertyValue("padding-right").replace(/[^0-9.]+/g,""),c={right:-14,paddingRight:+d+14}):e&&(c={right:-e},this.$el.addClass(f.enabledClass)),null!=c&&this.$content.css(c),this},j.prototype.restore=function(){this.stopped=!1,this.iOSNativeScrolling||this.pane.show(),this.addEvents()},j.prototype.reset=function(){var a,b,c,f,g,h,i,j,k,l,m,n;return this.iOSNativeScrolling?void(this.contentHeight=this.content.scrollHeight):(this.$el.find("."+this.options.paneClass).length||this.generate().stop(),this.stopped&&this.restore(),a=this.content,f=a.style,g=f.overflowY,d&&this.$content.css({height:this.$content.height()}),b=a.scrollHeight+e,l=parseInt(this.$el.css("max-height"),10),l>0&&(this.$el.height(""),this.$el.height(a.scrollHeight>l?l:a.scrollHeight)),i=this.pane.outerHeight(!1),k=parseInt(this.pane.css("top"),10),h=parseInt(this.pane.css("bottom"),10),j=i+k+h,n=Math.round(j/b*i),n<this.options.sliderMinHeight?n=this.options.sliderMinHeight:null!=this.options.sliderMaxHeight&&n>this.options.sliderMaxHeight&&(n=this.options.sliderMaxHeight),g===t&&f.overflowX!==t&&(n+=e),this.maxSliderTop=j-n,this.contentHeight=b,this.paneHeight=i,this.paneOuterHeight=j,this.sliderHeight=n,this.paneTop=k,this.slider.height(n),this.events.scroll(),this.pane.show(),this.isActive=!0,a.scrollHeight===a.clientHeight||this.pane.outerHeight(!0)>=a.scrollHeight&&g!==t?(this.pane.hide(),this.isActive=!1):this.el.clientHeight===a.scrollHeight&&g===t?this.slider.hide():this.slider.show(),this.pane.css({opacity:this.options.alwaysVisible?1:"",visibility:this.options.alwaysVisible?"visible":""}),c=this.$content.css("position"),("static"===c||"relative"===c)&&(m=parseInt(this.$content.css("right"),10),m&&this.$content.css({right:"",marginRight:m})),this)},j.prototype.scroll=function(){return this.isActive?(this.sliderY=Math.max(0,this.sliderY),this.sliderY=Math.min(this.maxSliderTop,this.sliderY),this.$content.scrollTop(this.maxScrollTop*this.sliderY/this.maxSliderTop),this.iOSNativeScrolling||(this.updateScrollValues(),this.setOnScrollStyles()),this):void 0},j.prototype.scrollBottom=function(a){return this.isActive?(this.$content.scrollTop(this.contentHeight-this.$content.height()-a).trigger(p),this.stop().restore(),this):void 0},j.prototype.scrollTop=function(a){return this.isActive?(this.$content.scrollTop(+a).trigger(p),this.stop().restore(),this):void 0},j.prototype.scrollTo=function(a){return this.isActive?(this.scrollTop(this.$el.find(a).get(0).offsetTop),this):void 0},j.prototype.stop=function(){return y&&this.scrollRAF&&(y(this.scrollRAF),this.scrollRAF=null),this.stopped=!0,this.removeEvents(),this.iOSNativeScrolling||this.pane.hide(),this},j.prototype.destroy=function(){return this.stopped||this.stop(),!this.iOSNativeScrolling&&this.pane.length&&this.pane.remove(),d&&this.$content.height(""),this.$content.removeAttr("tabindex"),this.$el.hasClass(this.options.enabledClass)&&(this.$el.removeClass(this.options.enabledClass),this.$content.css({right:""})),this},j.prototype.flash=function(){return!this.iOSNativeScrolling&&this.isActive?(this.reset(),this.pane.addClass(this.options.flashedClass),setTimeout(function(a){return function(){a.pane.removeClass(a.options.flashedClass)}}(this),this.options.flashDelay),this):void 0},j}(),a.fn.nanoScroller=function(b){return this.each(function(){var c,d;if((d=this.nanoscroller)||(c=a.extend({},z,b),this.nanoscroller=d=new q(this,c)),b&&"object"==typeof b){if(a.extend(d.options,b),null!=b.scrollBottom)return d.scrollBottom(b.scrollBottom);if(null!=b.scrollTop)return d.scrollTop(b.scrollTop);if(b.scrollTo)return d.scrollTo(b.scrollTo);if("bottom"===b.scroll)return d.scrollBottom(0);if("top"===b.scroll)return d.scrollTop(0);if(b.scroll&&b.scroll instanceof a)return d.scrollTo(b.scroll);if(b.stop)return d.stop();if(b.destroy)return d.destroy();if(b.flash)return d.flash()}return d.reset()})},a.fn.nanoScroller.Constructor=q});
;
// Slidebars 0.10.2 (http://plugins.adchsm.me/slidebars/) written by Adam Smith (http://www.adchsm.me/) released under MIT License (http://plugins.adchsm.me/slidebars/license.txt)
!function(t){t.slidebars=function(s){function e(){!c.disableOver||"number"==typeof c.disableOver&&c.disableOver>=T?(y=!0,t("html").addClass("sb-init"),c.hideControlClasses&&k.removeClass("sb-hide"),i()):"number"==typeof c.disableOver&&c.disableOver<T&&(y=!1,t("html").removeClass("sb-init"),c.hideControlClasses&&k.addClass("sb-hide"),g.css("minHeight",""),(C||w)&&a())}function i(){g.css("minHeight",""),g.css("minHeight",t("html").height()+"px"),m&&m.hasClass("sb-width-custom")&&m.css("width",m.attr("data-sb-width")),p&&p.hasClass("sb-width-custom")&&p.css("width",p.attr("data-sb-width")),m&&(m.hasClass("sb-style-push")||m.hasClass("sb-style-overlay"))&&m.css("marginLeft","-"+m.css("width")),p&&(p.hasClass("sb-style-push")||p.hasClass("sb-style-overlay"))&&p.css("marginRight","-"+p.css("width")),c.scrollLock&&t("html").addClass("sb-scroll-lock")}function n(t,s,e){var n;if(n=t.hasClass("sb-style-push")?g.add(t).add(O):t.hasClass("sb-style-overlay")?t:g.add(O),"translate"===x)n.css("transform","translate("+s+")");else if("side"===x)"-"===s[0]&&(s=s.substr(1)),"0px"!==s&&n.css(e,"0px"),setTimeout(function(){n.css(e,s)},1);else if("jQuery"===x){"-"===s[0]&&(s=s.substr(1));var o={};o[e]=s,n.stop().animate(o,400)}setTimeout(function(){"0px"===s&&(n.removeAttr("style"),i())},400)}function o(s){function e(){y&&"left"===s&&m?(t("html").addClass("sb-active sb-active-left"),m.addClass("sb-active"),n(m,m.css("width"),"left"),setTimeout(function(){C=!0},400)):y&&"right"===s&&p&&(t("html").addClass("sb-active sb-active-right"),p.addClass("sb-active"),n(p,"-"+p.css("width"),"right"),setTimeout(function(){w=!0},400))}"left"===s&&m&&w||"right"===s&&p&&C?(a(),setTimeout(e,400)):e()}function a(s){(C||w)&&(C&&(n(m,"0px","left"),C=!1),w&&(n(p,"0px","right"),w=!1),setTimeout(function(){t("html").removeClass("sb-active sb-active-left sb-active-right"),m&&m.removeClass("sb-active"),p&&p.removeClass("sb-active"),"undefined"!=typeof s&&(window.location=s)},400))}function l(t){"left"===t&&m&&(C?a():o("left")),"right"===t&&p&&(w?a():o("right"))}function r(t,s){t.stopPropagation(),t.preventDefault(),"touchend"===t.type&&s.off("click")}var c=t.extend({siteClose:!0,scrollLock:!1,disableOver:!1,hideControlClasses:!1},s),h=document.createElement("div").style,d=!1,f=!1;(""===h.MozTransition||""===h.WebkitTransition||""===h.OTransition||""===h.transition)&&(d=!0),(""===h.MozTransform||""===h.WebkitTransform||""===h.OTransform||""===h.transform)&&(f=!0);var u=navigator.userAgent,b=!1,v=!1;/Android/.test(u)?b=u.substr(u.indexOf("Android")+8,3):/(iPhone|iPod|iPad)/.test(u)&&(v=u.substr(u.indexOf("OS ")+3,3).replace("_",".")),(b&&3>b||v&&5>v)&&t("html").addClass("sb-static");var g=t("#sb-site, .sb-site-container");if(t(".sb-left").length)var m=t(".sb-left"),C=!1;if(t(".sb-right").length)var p=t(".sb-right"),w=!1;var y=!1,T=t(window).width(),k=t(".sb-toggle-left, .sb-toggle-right, .sb-open-left, .sb-open-right, .sb-close"),O=t(".sb-slide");e(),t(window).resize(function(){var s=t(window).width();T!==s&&(T=s,e(),C&&o("left"),w&&o("right"))});var x;d&&f?(x="translate",b&&4.4>b&&(x="side")):x="jQuery",this.slidebars={open:o,close:a,toggle:l,init:function(){return y},active:function(t){return"left"===t&&m?C:"right"===t&&p?w:void 0},destroy:function(t){"left"===t&&m&&(C&&a(),setTimeout(function(){m.remove(),m=!1},400)),"right"===t&&p&&(w&&a(),setTimeout(function(){p.remove(),p=!1},400))}},t(".sb-toggle-left").on("touchend click",function(s){r(s,t(this)),l("left")}),t(".sb-toggle-right").on("touchend click",function(s){r(s,t(this)),l("right")}),t(".sb-open-left").on("touchend click",function(s){r(s,t(this)),o("left")}),t(".sb-open-right").on("touchend click",function(s){r(s,t(this)),o("right")}),t(".sb-close").on("touchend click",function(s){if(t(this).is("a")||t(this).children().is("a")){if("click"===s.type){s.preventDefault();var e=t(this).is("a")?t(this).attr("href"):t(this).find("a").attr("href");a(e)}}else r(s,t(this)),a()}),g.on("touchend click",function(s){c.siteClose&&(C||w)&&(r(s,t(this)),a())})}}(jQuery);;
/*! Swipebox v1.4.1 | Constantin Saguin csag.co | MIT License | github.com/brutaldesign/swipebox */
!function(a,b,c,d){c.swipebox=function(e,f){var g,h,i={useCSS:!0,useSVG:!0,initialIndexOnArray:0,removeBarsOnMobile:!0,hideCloseButtonOnMobile:!1,hideBarsDelay:3e3,videoMaxWidth:1140,vimeoColor:"cccccc",beforeOpen:null,afterOpen:null,afterClose:null,nextSlide:null,prevSlide:null,loopAtEnd:!1,autoplayVideos:!1,queryStringData:{},toggleClassOnLoad:""},j=this,k=[],l=e.selector,m=c(l),n=navigator.userAgent.match(/(iPad)|(iPhone)|(iPod)|(Android)|(PlayBook)|(BB10)|(BlackBerry)|(Opera Mini)|(IEMobile)|(webOS)|(MeeGo)/i),o=null!==n||b.createTouch!==d||"ontouchstart"in a||"onmsgesturechange"in a||navigator.msMaxTouchPoints,p=!!b.createElementNS&&!!b.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,q=a.innerWidth?a.innerWidth:c(a).width(),r=a.innerHeight?a.innerHeight:c(a).height(),s=0,t='<div id="swipebox-overlay">					<div id="swipebox-container">						<div id="swipebox-slider"></div>						<div id="swipebox-top-bar">							<div id="swipebox-title"></div>						</div>						<div id="swipebox-bottom-bar">							<div id="swipebox-arrows">								<a id="swipebox-prev"></a>								<a id="swipebox-next"></a>							</div>						</div>						<a id="swipebox-close"></a>					</div>			</div>';j.settings={},c.swipebox.close=function(){g.closeSlide()},c.swipebox.extend=function(){return g},j.init=function(){j.settings=c.extend({},i,f),c.isArray(e)?(k=e,g.target=c(a),g.init(j.settings.initialIndexOnArray)):c(b).on("click",l,function(a){if("slide current"===a.target.parentNode.className)return!1;c.isArray(e)||(g.destroy(),h=c(l),g.actions()),k=[];var b,d,f;f||(d="data-rel",f=c(this).attr(d)),f||(d="rel",f=c(this).attr(d)),h=f&&""!==f&&"nofollow"!==f?m.filter("["+d+'="'+f+'"]'):c(l),h.each(function(){var a=null,b=null;c(this).attr("title")&&(a=c(this).attr("title")),c(this).attr("href")&&(b=c(this).attr("href")),k.push({href:b,title:a})}),b=h.index(c(this)),a.preventDefault(),a.stopPropagation(),g.target=c(a.target),g.init(b)})},g={init:function(a){j.settings.beforeOpen&&j.settings.beforeOpen(),this.target.trigger("swipebox-start"),c.swipebox.isOpen=!0,this.build(),this.openSlide(a),this.openMedia(a),this.preloadMedia(a+1),this.preloadMedia(a-1),j.settings.afterOpen&&j.settings.afterOpen()},build:function(){var a,b=this;c("body").append(t),p&&j.settings.useSVG===!0&&(a=c("#swipebox-close").css("background-image"),a=a.replace("png","svg"),c("#swipebox-prev, #swipebox-next, #swipebox-close").css({"background-image":a})),n&&j.settings.removeBarsOnMobile&&c("#swipebox-bottom-bar, #swipebox-top-bar").remove(),c.each(k,function(){c("#swipebox-slider").append('<div class="slide"></div>')}),b.setDim(),b.actions(),o&&b.gesture(),b.keyboard(),b.animBars(),b.resize()},setDim:function(){var b,d,e={};"onorientationchange"in a?a.addEventListener("orientationchange",function(){0===a.orientation?(b=q,d=r):(90===a.orientation||-90===a.orientation)&&(b=r,d=q)},!1):(b=a.innerWidth?a.innerWidth:c(a).width(),d=a.innerHeight?a.innerHeight:c(a).height()),e={width:b,height:d},c("#swipebox-overlay").css(e)},resize:function(){var b=this;c(a).resize(function(){b.setDim()}).resize()},supportTransition:function(){var a,c="transition WebkitTransition MozTransition OTransition msTransition KhtmlTransition".split(" ");for(a=0;a<c.length;a++)if(b.createElement("div").style[c[a]]!==d)return c[a];return!1},doCssTrans:function(){return j.settings.useCSS&&this.supportTransition()?!0:void 0},gesture:function(){var a,b,d,e,f,g,h=this,i=!1,j=!1,l=10,m=50,n={},o={},p=c("#swipebox-top-bar, #swipebox-bottom-bar"),r=c("#swipebox-slider");p.addClass("visible-bars"),h.setTimeout(),c("body").bind("touchstart",function(h){return c(this).addClass("touching"),a=c("#swipebox-slider .slide").index(c("#swipebox-slider .slide.current")),o=h.originalEvent.targetTouches[0],n.pageX=h.originalEvent.targetTouches[0].pageX,n.pageY=h.originalEvent.targetTouches[0].pageY,c("#swipebox-slider").css({"-webkit-transform":"translate3d("+s+"%, 0, 0)",transform:"translate3d("+s+"%, 0, 0)"}),c(".touching").bind("touchmove",function(h){if(h.preventDefault(),h.stopPropagation(),o=h.originalEvent.targetTouches[0],!j&&(f=d,d=o.pageY-n.pageY,Math.abs(d)>=m||i)){var p=.75-Math.abs(d)/r.height();r.css({top:d+"px"}),r.css({opacity:p}),i=!0}e=b,b=o.pageX-n.pageX,g=100*b/q,!j&&!i&&Math.abs(b)>=l&&(c("#swipebox-slider").css({"-webkit-transition":"",transition:""}),j=!0),j&&(b>0?0===a?c("#swipebox-overlay").addClass("leftSpringTouch"):(c("#swipebox-overlay").removeClass("leftSpringTouch").removeClass("rightSpringTouch"),c("#swipebox-slider").css({"-webkit-transform":"translate3d("+(s+g)+"%, 0, 0)",transform:"translate3d("+(s+g)+"%, 0, 0)"})):0>b&&(k.length===a+1?c("#swipebox-overlay").addClass("rightSpringTouch"):(c("#swipebox-overlay").removeClass("leftSpringTouch").removeClass("rightSpringTouch"),c("#swipebox-slider").css({"-webkit-transform":"translate3d("+(s+g)+"%, 0, 0)",transform:"translate3d("+(s+g)+"%, 0, 0)"}))))}),!1}).bind("touchend",function(a){if(a.preventDefault(),a.stopPropagation(),c("#swipebox-slider").css({"-webkit-transition":"-webkit-transform 0.4s ease",transition:"transform 0.4s ease"}),d=o.pageY-n.pageY,b=o.pageX-n.pageX,g=100*b/q,i)if(i=!1,Math.abs(d)>=2*m&&Math.abs(d)>Math.abs(f)){var k=d>0?r.height():-r.height();r.animate({top:k+"px",opacity:0},300,function(){h.closeSlide()})}else r.animate({top:0,opacity:1},300);else j?(j=!1,b>=l&&b>=e?h.getPrev():-l>=b&&e>=b&&h.getNext()):p.hasClass("visible-bars")?(h.clearTimeout(),h.hideBars()):(h.showBars(),h.setTimeout());c("#swipebox-slider").css({"-webkit-transform":"translate3d("+s+"%, 0, 0)",transform:"translate3d("+s+"%, 0, 0)"}),c("#swipebox-overlay").removeClass("leftSpringTouch").removeClass("rightSpringTouch"),c(".touching").off("touchmove").removeClass("touching")})},setTimeout:function(){if(j.settings.hideBarsDelay>0){var b=this;b.clearTimeout(),b.timeout=a.setTimeout(function(){b.hideBars()},j.settings.hideBarsDelay)}},clearTimeout:function(){a.clearTimeout(this.timeout),this.timeout=null},showBars:function(){var a=c("#swipebox-top-bar, #swipebox-bottom-bar");this.doCssTrans()?a.addClass("visible-bars"):(c("#swipebox-top-bar").animate({top:0},500),c("#swipebox-bottom-bar").animate({bottom:0},500),setTimeout(function(){a.addClass("visible-bars")},1e3))},hideBars:function(){var a=c("#swipebox-top-bar, #swipebox-bottom-bar");this.doCssTrans()?a.removeClass("visible-bars"):(c("#swipebox-top-bar").animate({top:"-50px"},500),c("#swipebox-bottom-bar").animate({bottom:"-50px"},500),setTimeout(function(){a.removeClass("visible-bars")},1e3))},animBars:function(){var a=this,b=c("#swipebox-top-bar, #swipebox-bottom-bar");b.addClass("visible-bars"),a.setTimeout(),c("#swipebox-slider").click(function(){b.hasClass("visible-bars")||(a.showBars(),a.setTimeout())}),c("#swipebox-bottom-bar").hover(function(){a.showBars(),b.addClass("visible-bars"),a.clearTimeout()},function(){j.settings.hideBarsDelay>0&&(b.removeClass("visible-bars"),a.setTimeout())})},keyboard:function(){var b=this;c(a).bind("keyup",function(a){a.preventDefault(),a.stopPropagation(),37===a.keyCode?b.getPrev():39===a.keyCode?b.getNext():27===a.keyCode&&b.closeSlide()})},actions:function(){var a=this,b="touchend click";k.length<2?(c("#swipebox-bottom-bar").hide(),d===k[1]&&c("#swipebox-top-bar").hide()):(c("#swipebox-prev").bind(b,function(b){b.preventDefault(),b.stopPropagation(),a.getPrev(),a.setTimeout()}),c("#swipebox-next").bind(b,function(b){b.preventDefault(),b.stopPropagation(),a.getNext(),a.setTimeout()})),c("#swipebox-close").bind(b,function(){a.closeSlide()})},setSlide:function(a,b){b=b||!1;var d=c("#swipebox-slider");s=100*-a,this.doCssTrans()?d.css({"-webkit-transform":"translate3d("+100*-a+"%, 0, 0)",transform:"translate3d("+100*-a+"%, 0, 0)"}):d.animate({left:100*-a+"%"}),c("#swipebox-slider .slide").removeClass("current"),c("#swipebox-slider .slide").eq(a).addClass("current"),this.setTitle(a),b&&d.fadeIn(),c("#swipebox-prev, #swipebox-next").removeClass("disabled"),0===a?c("#swipebox-prev").addClass("disabled"):a===k.length-1&&j.settings.loopAtEnd!==!0&&c("#swipebox-next").addClass("disabled")},openSlide:function(b){c("html").addClass("swipebox-html"),o?(c("html").addClass("swipebox-touch"),j.settings.hideCloseButtonOnMobile&&c("html").addClass("swipebox-no-close-button")):c("html").addClass("swipebox-no-touch"),c(a).trigger("resize"),this.setSlide(b,!0)},preloadMedia:function(a){var b=this,c=null;k[a]!==d&&(c=k[a].href),b.isVideo(c)?b.openMedia(a):setTimeout(function(){b.openMedia(a)},1e3)},openMedia:function(a){var b,e,f=this;return k[a]!==d&&(b=k[a].href),0>a||a>=k.length?!1:(e=c("#swipebox-slider .slide").eq(a),void(f.isVideo(b)?e.html(f.getVideo(b)):(e.addClass("slide-loading"),f.loadMedia(b,function(){e.removeClass("slide-loading"),e.html(this)}))))},setTitle:function(a){var b=null;c("#swipebox-title").empty(),k[a]!==d&&(b=k[a].title),b?(c("#swipebox-top-bar").show(),c("#swipebox-title").append(b)):c("#swipebox-top-bar").hide()},isVideo:function(a){if(a){if(a.match(/(youtube\.com|youtube-nocookie\.com)\/watch\?v=([a-zA-Z0-9\-_]+)/)||a.match(/vimeo\.com\/([0-9]*)/)||a.match(/youtu\.be\/([a-zA-Z0-9\-_]+)/))return!0;if(a.toLowerCase().indexOf("swipeboxvideo=1")>=0)return!0}},parseUri:function(a,d){var e=b.createElement("a"),f={};return e.href=decodeURIComponent(a),e.search&&(f=JSON.parse('{"'+e.search.toLowerCase().replace("?","").replace(/&/g,'","').replace(/=/g,'":"')+'"}')),c.isPlainObject(d)&&(f=c.extend(f,d,j.settings.queryStringData)),c.map(f,function(a,b){return a&&a>""?encodeURIComponent(b)+"="+encodeURIComponent(a):void 0}).join("&")},getVideo:function(a){var b="",c=a.match(/((?:www\.)?youtube\.com|(?:www\.)?youtube-nocookie\.com)\/watch\?v=([a-zA-Z0-9\-_]+)/),d=a.match(/(?:www\.)?youtu\.be\/([a-zA-Z0-9\-_]+)/),e=a.match(/(?:www\.)?vimeo\.com\/([0-9]*)/),f="";return c||d?(d&&(c=d),f=g.parseUri(a,{autoplay:j.settings.autoplayVideos?"1":"0",v:""}),b='<iframe width="560" height="315" src="//'+c[1]+"/embed/"+c[2]+"?"+f+'" frameborder="0" allowfullscreen></iframe>'):e?(f=g.parseUri(a,{autoplay:j.settings.autoplayVideos?"1":"0",byline:"0",portrait:"0",color:j.settings.vimeoColor}),b='<iframe width="560" height="315"  src="//player.vimeo.com/video/'+e[1]+"?"+f+'" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>'):b='<iframe width="560" height="315" src="'+a+'" frameborder="0" allowfullscreen></iframe>','<div class="swipebox-video-container" style="max-width:'+j.settings.videoMaxWidth+'px"><div class="swipebox-video">'+b+"</div></div>"},loadMedia:function(a,b){if(0===a.trim().indexOf("#"))b.call(c("<div>",{"class":"swipebox-inline-container"}).append(c(a).clone().toggleClass(j.settings.toggleClassOnLoad)));else if(!this.isVideo(a)){var d=c("<img>").on("load",function(){b.call(d)});d.attr("src",a)}},getNext:function(){var a,b=this,d=c("#swipebox-slider .slide").index(c("#swipebox-slider .slide.current"));d+1<k.length?(a=c("#swipebox-slider .slide").eq(d).contents().find("iframe").attr("src"),c("#swipebox-slider .slide").eq(d).contents().find("iframe").attr("src",a),d++,b.setSlide(d),b.preloadMedia(d+1),j.settings.nextSlide&&j.settings.nextSlide()):j.settings.loopAtEnd===!0?(a=c("#swipebox-slider .slide").eq(d).contents().find("iframe").attr("src"),c("#swipebox-slider .slide").eq(d).contents().find("iframe").attr("src",a),d=0,b.preloadMedia(d),b.setSlide(d),b.preloadMedia(d+1),j.settings.nextSlide&&j.settings.nextSlide()):(c("#swipebox-overlay").addClass("rightSpring"),setTimeout(function(){c("#swipebox-overlay").removeClass("rightSpring")},500))},getPrev:function(){var a,b=c("#swipebox-slider .slide").index(c("#swipebox-slider .slide.current"));b>0?(a=c("#swipebox-slider .slide").eq(b).contents().find("iframe").attr("src"),c("#swipebox-slider .slide").eq(b).contents().find("iframe").attr("src",a),b--,this.setSlide(b),this.preloadMedia(b-1),j.settings.prevSlide&&j.settings.prevSlide()):(c("#swipebox-overlay").addClass("leftSpring"),setTimeout(function(){c("#swipebox-overlay").removeClass("leftSpring")},500))},nextSlide:function(){},prevSlide:function(){},closeSlide:function(){c("html").removeClass("swipebox-html"),c("html").removeClass("swipebox-touch"),c(a).trigger("resize"),this.destroy()},destroy:function(){c(a).unbind("keyup"),c("body").unbind("touchstart"),c("body").unbind("touchmove"),c("body").unbind("touchend"),c("#swipebox-slider").unbind(),c("#swipebox-overlay").remove(),c.isArray(e)||e.removeData("_swipebox"),this.target&&this.target.trigger("swipebox-destroy"),c.swipebox.isOpen=!1,j.settings.afterClose&&j.settings.afterClose()}},j.init()},c.fn.swipebox=function(a){if(!c.data(this,"_swipebox")){var b=new c.swipebox(this,a);this.data("_swipebox",b)}return this.data("_swipebox")}}(window,document,jQuery);;
/* JVFloat.js v1.0.0 - Generated on: 2014-09-18 */
!function(a){"use strict";a.fn.jvFloat=function(){return this.filter("input:not([type=submit]), textarea, select").each(function(){function b(a){var b=a.attr("placeholder");return"undefined"==typeof b&&(b=a.attr("title")),b}function c(){var a=f.val();if(null==a)a="";else if(f.is("select")){var c=b(f);c==a&&(a="")}i.toggleClass("active",""!==a)}function d(){var b="";do b=("0000"+(Math.random()*Math.pow(36,4)<<0).toString(36)).substr(-4);while(a("#"+b).length);return b}function e(a){var b=d();return a.prop("id",b),b}var f=a(this).wrap("<div class=jvFloat>"),g=f.attr("id");g||(g=e(f));var h=f.attr("required")||"",i="",j=b(f);i=a(this).is("textarea")?a('<label class="placeHolder  textarea '+h+'" for="'+g+'">'+j+"</label>").insertBefore(f):a('<label class="placeHolder '+h+'" for="'+g+'">'+j+"</label>").insertBefore(f),c(),f.bind("keyup blur",c)})}}(window.jQuery||window.Zepto||window.$);;

jQuery(function (ssw, $) {
    var searchPage = function (event) {
        var searchText = $("input[id$=txtSearch]").val();
        if (searchText.length > 0 && event.keyCode === 13) {
            var url = "http://www.google.com.au/search?q=site:ssw.com.au " + escape(searchText);
            window.open(url);
            return false;
        }
        return true;
    };

    ssw.toggleVisibility = function (ancora, id1, id2) {
        var e = document.getElementById(id1);
        var e2 = document.getElementById(id2);
        if (e.style.display === "none") {
            e.style.display = "block"; //block will show the conain in div            
            e2.style.display = "none";
            ancora.innerHTML = "Watch in higher quality on Vimeo";
        }
        else {
            e.style.display = "none";
            e2.style.display = "block";
            ancora.innerHTML = "Watch in lower quality on YouTube";
        }
    };

    var init = function () {
        /* $(window).load(function () {

            $("input[id$=txtSearch]").keypress(function (event) { return searchPage(event); });
        });

        $.fn.wrapStart = function (numWords) {
            var node = this.contents().filter(function () { return this.nodeType === 3 }).first();
            var text = node.text();
            var first = text.split(" ", numWords).join(" ");

            if (!node.length)
                return;

            node[0].nodeValue = text.slice(first.length);
            node.before("<span class=\"red\">" + first + "</span>");
        };

        $("h1, .first").each(function () {

            $(this).wrapStart(1);
        }); */

        //binding show/hide past products event
        $('#showpastproducts').change(function () {
            var $this = $(this);

            var $optionSet = $this.parents(".option-set");
            var $selected = $optionSet.find(".selected");

            var filterString = $selected ? $selected.attr("data-filter") : "";

            if (!$this[0].checked) {

                filterString += ":not(.decommissioned)";
                //We need to also filter the list of product groups
                $filterContainer.isotope({ filter: ":not(.decommissioned)" });

                //In the case where the user had selected a decommissioned group, and then chooses to hid all old products
                //this logic will find the first option (show all) and trigger the click event there.
                if ($selected.parents("li").hasClass("decommissioned")) {
                    $optionSet.find(".filterItem:first a").trigger("click");
                    return false;
                }
            }
            else {
                $filterContainer.isotope({ filter: "" });

            }

            $container.isotope({ filter: filterString });

            return false;
        });

             
        // filter items when filter link is clicked
        $("#filters a").click(function () {
            if (!window.location.pathname.toLowerCase().startsWith("/history/events/")) {
                var $this = $(this);
                // don't proceed if already selected
                if ($this.hasClass("selected")) {
                    return false;
                }
                console.log('here: ', window.location.pathname);
                var $optionSet = $this.parents(".option-set");

                var selector = $(this).attr("data-filter");

                var showpastproducts = $optionSet.find("#showpastproducts")[0] ? $optionSet.find("#showpastproducts")[0].checked : false;
                if (!showpastproducts) {
                    selector += ":not(.decommissioned)";
                }

                $container.isotope({ filter: selector });
                console.log('setting hash in url');
                location.hash = 'filter=' + encodeURIComponent(selector);
                return false;
            }
        });
                     
        
        //setTimeout(function () {$("#filters").css("height", "auto"); }, 500);

        $("a.video").click(function () {
            $.fancybox({
                hideOnContentClick: false,
                autoScale: false,
                closeBtn: false,
                transitionIn: "none",
                transitionOut: "none",
                title: this.title, // optional
                width: 680, // or your size
                height: 495,
                href: this.href.replace(new RegExp("watch\\?v=", "i"), "v/"),
                type: "swf",
                swf: {
                    'wmode': "transparent",
                    'allowfullscreen': "true"
                }
            }); // fancybox
            return false;
        }); // click

        if ($("#SidebarRight a.bootstrap-tooltip").length) {
            $("#SidebarRight a.bootstrap-tooltip").popover({
                placement: "left",
                trigger: "hover"
            });
        }

        if ($(".bootstrap-tooltip").length) {
            $(".bootstrap-tooltip").popover({
                placement: "top",
                trigger: "hover"
            });
        }

        
        //hide empty right/left column 
        var sideLeftEmpty = $("#SidebarLeft").text().trim().length <= 0;
        $("#SidebarLeft").toggleClass("hidden", sideLeftEmpty);
        var sideRightEmpty = $("#SidebarRight").text().trim().length <= 0;
        $("#SidebarRight").toggleClass("hidden", sideRightEmpty);
        var mainContentWidth = 6 + (sideLeftEmpty ? 3 : 0) + (sideRightEmpty ? 3 : 0);
        $("#maincontent").toggleClass("col-sm-12", false);
        $("#maincontent").addClass("col-sm-" + mainContentWidth);

        // cache container
        var $container = $("#isotope");

        function getHashFilter() {
            // get #filter=filterName         
            var matches = location.hash.match(/filter=([^&]+)/i);
            var hashFilter = matches && matches[1];
            return hashFilter && decodeURIComponent(hashFilter);
        }

        var isIsotopeInit = false;

        function onHashchange() {
            var hashFilter = getHashFilter();
            if (!hashFilter && isIsotopeInit) {
                return;
            }
            isIsotopeInit = true;
            //filter isotope
            $("#isotope").isotope({
                itemSelector: '.item, .event-item',
                // use filterFns
                filter: hashFilter || ".all:not(.decommissioned)",
                layoutMode: 'masonry',
                masonry: {
                    columnWidth: '.grid'
                }
            });

            var $optionSet = $('.option-set');

            if (hashFilter) {                
                var colonIndex = hashFilter.indexOf(':');
                var filterMenuItem = colonIndex > 0 ? hashFilter.substring(0, colonIndex) : hashFilter;
                $optionSet.find('.selected').removeClass('selected');
                $optionSet.find('[data-filter="' + filterMenuItem + '"]').addClass('selected');
            }
        }

        $(window).on('hashchange', onHashchange);
        //trigger event handler to init isotope
        onHashchange();

        //events
        var $containerPast = $("#isotopePast");    

        var $filterContainer = $("#filters.products"); // only target the products page
        $filterContainer.isotope({
            itemSelector: ".filterItem",
            filter: ":not(.decommissioned)",
            layoutMode: "vertical"
        });               

        //trigger lightbox on class
        $('.lightbox').swipebox();

        // Floating Form Labels
        $('.float-label').jvFloat();

                
    };
    init();
    

}(window.SSW = window.SSW || {}, jQuery));

/* Light YouTube Embeds by @labnol */
/* modified for youku support */
/* Web: http://labnol.org/?p=27941 */


function initVideos() {
    var vids = document.getElementsByClassName("video-player");
    for (n = 0; n < vids.length; n++) {
        var div = document.createElement("div");
        //console.log('video info: ', vids[n].dataset.id, vids[n].dataset.youkuid, vids[n].dataset.vimeoid);
        // copy attributes to new inner div.
        div.setAttribute("data-id", vids[n].dataset.id);
        div.setAttribute("data-youkuid", vids[n].dataset.youkuid);
        div.setAttribute("data-vimeoid", vids[n].dataset.vimeoid);
        div.setAttribute("data-youtuberes", vids[n].dataset.youtuberes);
        
        div.innerHTML = labnolThumb(vids[n].dataset.id, vids[n].dataset.youkuid, vids[n].dataset.vimeoid, vids[n].dataset.youtuberes);
        div.onclick = labnolIframe;
        vids[n].appendChild(div);
    }
}

function labnolThumb(id, youkuid, vimeoid, youtuberes) {
    var thumb;
    // prefer vimeo over youtube if it's available
    if (vimeoid && vimeoid !== "" && window.serviceDetector.vimeo.successful) {
        thumb = '<img src="/ssw/VimeoThumb.ashx?id=XXX"><div class="play"></div>';
        thumb = thumb.replace('XXX', vimeoid);
        return thumb;
    } else if (id && id !== "" && window.serviceDetector.youtube.successful) {
        thumb = '<img src="https://i.ytimg.com/vi/ID/maxresdefault.jpg"><div class="play"></div>';
        if(youtuberes !== undefined && youtuberes !== "")
            thumb = thumb.replace("maxresdefault", youtuberes);
        return thumb.replace("ID", id);
    } else {
        // alternative thumbnail when youtube and vimeo not available - served from ssw site.  Likely behind the Great China Firewall
        console.log('Embedding youku video');
        thumb = '<img src="/ssw/YouTubeThumb.ashx?id=XXX"><div class="XXXClass"></div>';
        thumb = thumb.replace("XXX", id);       

        if (youkuid && youkuid !== "" && window.serviceDetector.youku.successful) {            
            thumb = thumb.replace("XXXClass", "play");
        }
        return thumb;
    }
}

function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("allowfullscreen", "");
    iframe.setAttribute("webkitallowfullscreen", "");

    var embed;
    if (this.dataset.vimeoid !== "undefined" && this.dataset.vimeoid !== "" && window.serviceDetector.vimeo.successful) {
        console.log('dataset.vimeo', this.dataset.vimeoid);
        embed = "https://player.vimeo.com/video/ID?autoplay=1";
        iframe.setAttribute("src", embed.replace("ID", this.dataset.vimeoid));
        console.log('url: ', embed.replace("ID", this.dataset.vimeoid));
        this.parentNode.replaceChild(iframe, this);
    }
    else if (window.serviceDetector.youtube.successful) {
        if (this.dataset.id !== "undefined" && this.dataset.id !== "") {
            embed = "https://www.youtube.com/embed/ID?autoplay=1";
            iframe.setAttribute("src", embed.replace("ID", this.dataset.id));
            console.log('url: ', embed.replace("ID", this.dataset.id));
            this.parentNode.replaceChild(iframe, this);
        }
    } else if (window.serviceDetector.youku.successful) {
        if (this.dataset.youkuid !== "undefined" && this.dataset.youkuid !== "") {
            embed = "https://player.youku.com/embed/ID";
            iframe.setAttribute("src", embed.replace("ID", this.dataset.youkuid));
            console.log('url: ', embed.replace("ID", this.dataset.youkuid));
            this.parentNode.replaceChild(iframe, this);
        }
    }
}

$(document).on("DetectServiceComplete",
    function (event, service) {
        var allTestsComplete = true;
        for (var serv in window.serviceDetector) {
            if (window.serviceDetector.hasOwnProperty(serv)) {
                if (!window.serviceDetector[serv].testComplete) {
                    return false;
                }
            }
        }

        //console.log("init videos");
        initVideos();

    });

$(document).on("DetectServiceComplete",
    function (event, service) {
        if (service.name === "google" && service.successful) {
            //console.log("init google tag manager");
            (function (w, d, s, l, i) {
                w[l] = w[l] || []; w[l].push({
                    'gtm.start':
                        new Date().getTime(), event: "gtm.js"
                }); var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l !== "dataLayer" ? "&l=" + l : ""; j.async = true; j.src =
                        "//www.googletagmanager.com/gtm.js?id=" + i + dl; f.parentNode.insertBefore(j, f);
            })(window, document, "script", "dataLayer", "GTM-NXDBVV");
        }
    });



//adding this method to the global namespace before tracking everypage is using it
var toggle_visibility = SSW.toggleVisibility;




;
/*
 * jQuery.appear
 * https://github.com/bas2k/jquery.appear/
 * http://code.google.com/p/jquery-appear/
 *
 * Copyright (c) 2009 Michael Hixson
 * Copyright (c) 2012 Alexander Brovikov
 * Licensed under the MIT license (http://www.opensource.org/licenses/mit-license.php)
 */
(function($) {
	$.fn.appear = function(fn, options) {

		var settings = $.extend({

			//arbitrary data to pass to fn
			data: undefined,

			//call fn only on the first appear?
			one: true,

			// X & Y accuracy
			accX: 0,
			accY: 0

		}, options);

		return this.each(function() {

			var t = $(this);

			//whether the element is currently visible
			t.appeared = false;

			if (!fn) {

				//trigger the custom event
				t.trigger('appear', settings.data);
				return;
			}

			var w = $(window);

			//fires the appear event when appropriate
			var check = function() {

				//is the element hidden?
				if (!t.is(':visible')) {

					//it became hidden
					t.appeared = false;
					return;
				}

				//is the element inside the visible window?
				var a = w.scrollLeft();
				var b = w.scrollTop();
				var o = t.offset();
				var x = o.left;
				var y = o.top;

				var ax = settings.accX;
				var ay = settings.accY;
				var th = t.height();
				var wh = w.height();
				var tw = t.width();
				var ww = w.width();

				if (y + th + ay >= b &&
					y <= b + wh + ay &&
					x + tw + ax >= a &&
					x <= a + ww + ax) {

					//trigger the custom event
					if (!t.appeared) t.trigger('appear', settings.data);

				} else {

					//it scrolled out of view
					t.appeared = false;
				}
			};

			//create a modified fn with some additional logic
			var modifiedFn = function() {

				//mark the element as visible
				t.appeared = true;

				//is this supposed to happen only once?
				if (settings.one) {

					//remove the check
					w.unbind('scroll', check);
					var i = $.inArray(check, $.fn.appear.checks);
					if (i >= 0) $.fn.appear.checks.splice(i, 1);
				}

				//trigger the original fn
				fn.apply(this, arguments);
			};

			//bind the modified fn to the element
			if (settings.one) t.one('appear', settings.data, modifiedFn);
			else t.bind('appear', settings.data, modifiedFn);

			//check whenever the window scrolls
			w.scroll(check);

			//check whenever the dom changes
			$.fn.appear.checks.push(check);

			//check now
			(check)();
		});
	};

	//keep a queue of appearance checks
	$.extend($.fn.appear, {

		checks: [],
		timeout: null,

		//process the queue
		checkAll: function() {
			var length = $.fn.appear.checks.length;
			if (length > 0) while (length--) ($.fn.appear.checks[length])();
		},

		//check the queue asynchronously
		run: function() {
			if ($.fn.appear.timeout) clearTimeout($.fn.appear.timeout);
			$.fn.appear.timeout = setTimeout($.fn.appear.checkAll, 20);
		}
	});

	//run checks when these methods are called
	$.each(['append', 'prepend', 'after', 'before', 'attr',
		'removeAttr', 'addClass', 'removeClass', 'toggleClass',
		'remove', 'css', 'show', 'hide'], function(i, n) {
		var old = $.fn[n];
		if (old) {
			$.fn[n] = function() {
				var r = old.apply(this, arguments);
				$.fn.appear.run();
				return r;
			}
		}
	});

})(jQuery);;
/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2008 George McGinley Smith
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
*/

// t: current time, b: begInnIng value, c: change In value, d: duration
jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	swing: function (x, t, b, c, d) {
		//alert(jQuery.easing.default);
		return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
	},
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});

/*
 *
 * TERMS OF USE - EASING EQUATIONS
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2001 Robert Penner
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
 */;
/*! WOW - v0.1.9 - 2014-05-10
* Copyright (c) 2014 Matthieu Aussaguel; Licensed MIT */(function(){var a,b,c=function(a,b){return function(){return a.apply(b,arguments)}};a=function(){function a(){}return a.prototype.extend=function(a,b){var c,d;for(c in a)d=a[c],null!=d&&(b[c]=d);return b},a.prototype.isMobile=function(a){return/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(a)},a}(),b=this.WeakMap||(b=function(){function a(){this.keys=[],this.values=[]}return a.prototype.get=function(a){var b,c,d,e,f;for(f=this.keys,b=d=0,e=f.length;e>d;b=++d)if(c=f[b],c===a)return this.values[b]},a.prototype.set=function(a,b){var c,d,e,f,g;for(g=this.keys,c=e=0,f=g.length;f>e;c=++e)if(d=g[c],d===a)return void(this.values[c]=b);return this.keys.push(a),this.values.push(b)},a}()),this.WOW=function(){function d(a){null==a&&(a={}),this.scrollCallback=c(this.scrollCallback,this),this.scrollHandler=c(this.scrollHandler,this),this.start=c(this.start,this),this.scrolled=!0,this.config=this.util().extend(a,this.defaults),this.animationNameCache=new b}return d.prototype.defaults={boxClass:"wow",animateClass:"animated",offset:0,mobile:!0},d.prototype.init=function(){var a;return this.element=window.document.documentElement,"interactive"===(a=document.readyState)||"complete"===a?this.start():document.addEventListener("DOMContentLoaded",this.start)},d.prototype.start=function(){var a,b,c,d;if(this.boxes=this.element.getElementsByClassName(this.config.boxClass),this.boxes.length){if(this.disabled())return this.resetStyle();for(d=this.boxes,b=0,c=d.length;c>b;b++)a=d[b],this.applyStyle(a,!0);return window.addEventListener("scroll",this.scrollHandler,!1),window.addEventListener("resize",this.scrollHandler,!1),this.interval=setInterval(this.scrollCallback,50)}},d.prototype.stop=function(){return window.removeEventListener("scroll",this.scrollHandler,!1),window.removeEventListener("resize",this.scrollHandler,!1),null!=this.interval?clearInterval(this.interval):void 0},d.prototype.show=function(a){return this.applyStyle(a),a.className=""+a.className+" "+this.config.animateClass},d.prototype.applyStyle=function(a,b){var c,d,e;return d=a.getAttribute("data-wow-duration"),c=a.getAttribute("data-wow-delay"),e=a.getAttribute("data-wow-iteration"),this.animate(function(f){return function(){return f.customStyle(a,b,d,c,e)}}(this))},d.prototype.animate=function(){return"requestAnimationFrame"in window?function(a){return window.requestAnimationFrame(a)}:function(a){return a()}}(),d.prototype.resetStyle=function(){var a,b,c,d,e;for(d=this.boxes,e=[],b=0,c=d.length;c>b;b++)a=d[b],e.push(a.setAttribute("style","visibility: visible;"));return e},d.prototype.customStyle=function(a,b,c,d,e){return b&&this.cacheAnimationName(a),a.style.visibility=b?"hidden":"visible",c&&this.vendorSet(a.style,{animationDuration:c}),d&&this.vendorSet(a.style,{animationDelay:d}),e&&this.vendorSet(a.style,{animationIterationCount:e}),this.vendorSet(a.style,{animationName:b?"none":this.cachedAnimationName(a)}),a},d.prototype.vendors=["moz","webkit"],d.prototype.vendorSet=function(a,b){var c,d,e,f;f=[];for(c in b)d=b[c],a[""+c]=d,f.push(function(){var b,f,g,h;for(g=this.vendors,h=[],b=0,f=g.length;f>b;b++)e=g[b],h.push(a[""+e+c.charAt(0).toUpperCase()+c.substr(1)]=d);return h}.call(this));return f},d.prototype.vendorCSS=function(a,b){var c,d,e,f,g,h;for(d=window.getComputedStyle(a),c=d.getPropertyCSSValue(b),h=this.vendors,f=0,g=h.length;g>f;f++)e=h[f],c=c||d.getPropertyCSSValue("-"+e+"-"+b);return c},d.prototype.animationName=function(a){var b;try{b=this.vendorCSS(a,"animation-name").cssText}catch(c){b=window.getComputedStyle(a).getPropertyValue("animation-name")}return"none"===b?"":b},d.prototype.cacheAnimationName=function(a){return this.animationNameCache.set(a,this.animationName(a))},d.prototype.cachedAnimationName=function(a){return this.animationNameCache.get(a)},d.prototype.scrollHandler=function(){return this.scrolled=!0},d.prototype.scrollCallback=function(){var a;return this.scrolled&&(this.scrolled=!1,this.boxes=function(){var b,c,d,e;for(d=this.boxes,e=[],b=0,c=d.length;c>b;b++)a=d[b],a&&(this.isVisible(a)?this.show(a):e.push(a));return e}.call(this),!this.boxes.length)?this.stop():void 0},d.prototype.offsetTop=function(a){for(var b;void 0===a.offsetTop;)a=a.parentNode;for(b=a.offsetTop;a=a.offsetParent;)b+=a.offsetTop;return b},d.prototype.isVisible=function(a){var b,c,d,e,f;return c=a.getAttribute("data-wow-offset")||this.config.offset,f=window.pageYOffset,e=f+this.element.clientHeight-c,d=this.offsetTop(a),b=d+a.clientHeight,e>=d&&b>=f},d.prototype.util=function(){return this._util||(this._util=new a)},d.prototype.disabled=function(){return!this.config.mobile&&this.util().isMobile(navigator.userAgent)},d}()}).call(this);;
(function ($) {
	$.fn.countTo = function (options) {
		options = options || {};

		return $(this).each(function () {
			// set options for current element
			var settings = $.extend({}, $.fn.countTo.defaults, {
				from:            $(this).data('from'),
				to:              $(this).data('to'),
				speed:           $(this).data('speed'),
				refreshInterval: $(this).data('refresh-interval'),
				decimals:        $(this).data('decimals')
			}, options);

			// how many times to update the value, and how much to increment the value on each update
			var loops = Math.ceil(settings.speed / settings.refreshInterval),
				increment = (settings.to - settings.from) / loops;

			// references & variables that will change with each update
			var self = this,
				$self = $(this),
				loopCount = 0,
				value = settings.from,
				data = $self.data('countTo') || {};

			$self.data('countTo', data);

			// if an existing interval can be found, clear it first
			if (data.interval) {
				clearInterval(data.interval);
			}
			data.interval = setInterval(updateTimer, settings.refreshInterval);

			// initialize the element with the starting value
			render(value);

			function updateTimer() {
				value += increment;
				loopCount++;

				render(value);

				if (typeof(settings.onUpdate) == 'function') {
					settings.onUpdate.call(self, value);
				}

				if (loopCount >= loops) {
					// remove the interval
					$self.removeData('countTo');
					clearInterval(data.interval);
					value = settings.to;

					if (typeof(settings.onComplete) == 'function') {
						settings.onComplete.call(self, value);
					}
				}
			}

			function render(value) {
				var formattedValue = settings.formatter.call(self, value, settings);
				$self.text(formattedValue);
			}
		});
	};

	$.fn.countTo.defaults = {
		from: 0,               // the number the element should start at
		to: 0,                 // the number the element should end at
		speed: 1000,           // how long it should take to count between the target numbers
		refreshInterval: 100,  // how often the element should be updated
		decimals: 0,           // the number of decimal places to show
		formatter: formatter,  // handler for formatting the value before rendering
		onUpdate: null,        // callback method for every time the element is updated
		onComplete: null       // callback method for when the element finishes updating
	};

	function formatter(value, settings) {
		return value.toFixed(settings.decimals);
	}
}(jQuery));
;
// Sticky Plugin v1.0.0 for jQuery
// =============
// Author: Anthony Garand
// Improvements by German M. Bravo (Kronuz) and Ruud Kamphuis (ruudk)
// Improvements by Leonardo C. Daronco (daronco)
// Created: 2/14/2011
// Date: 2/12/2012
// Website: http://labs.anthonygarand.com/sticky
// Description: Makes an element on the page stick on the screen as you scroll
//       It will only set the 'top' and 'position' of your element, you
//       might need to adjust the width in some cases.

(function($) {
  var defaults = {
      topSpacing: 0,
      bottomSpacing: 0,
      className: 'is-sticky',
      wrapperClassName: 'sticky-wrapper',
      center: false,
      getWidthFrom: ''
    },
    $window = $(window),
    $document = $(document),
    sticked = [],
    windowHeight = $window.height(),
    scroller = function() {
      var scrollTop = $window.scrollTop(),
        documentHeight = $document.height(),
        dwh = documentHeight - windowHeight,
        extra = (scrollTop > dwh) ? dwh - scrollTop : 0;

      for (var i = 0; i < sticked.length; i++) {
        var s = sticked[i],
          elementTop = s.stickyWrapper.offset().top,
          etse = elementTop - s.topSpacing - extra;

        if (scrollTop <= etse) {
          if (s.currentTop !== null) {
            s.stickyElement
              .css('position', '')
              .css('top', '');
            s.stickyElement.parent().removeClass(s.className);
            s.currentTop = null;
          }
        }
        else {
          var newTop = documentHeight - s.stickyElement.outerHeight()
            - s.topSpacing - s.bottomSpacing - scrollTop - extra;
          if (newTop < 0) {
            newTop = newTop + s.topSpacing;
          } else {
            newTop = s.topSpacing;
          }
          if (s.currentTop != newTop) {
            s.stickyElement
              .css('position', 'fixed')
              .css('top', newTop);

            if (typeof s.getWidthFrom !== 'undefined') {
              s.stickyElement.css('width', $(s.getWidthFrom).width());
            }

            s.stickyElement.parent().addClass(s.className);
            s.currentTop = newTop;
          }
        }
      }
    },
    resizer = function() {
      windowHeight = $window.height();
    },
    methods = {
      init: function(options) {
        var o = $.extend(defaults, options);
        return this.each(function() {
          var stickyElement = $(this);

          var stickyId = stickyElement.attr('id');
          var wrapper = $('<div></div>')
            .attr('id', stickyId + '-sticky-wrapper')
            .addClass(o.wrapperClassName);
          stickyElement.wrapAll(wrapper);

          if (o.center) {
            stickyElement.parent().css({width:stickyElement.outerWidth(),marginLeft:"auto",marginRight:"auto"});
          }

          if (stickyElement.css("float") == "right") {
            stickyElement.css({"float":"none"}).parent().css({"float":"right"});
          }

          var stickyWrapper = stickyElement.parent();
          stickyWrapper.css('height', stickyElement.outerHeight());
          sticked.push({
            topSpacing: o.topSpacing,
            bottomSpacing: o.bottomSpacing,
            stickyElement: stickyElement,
            currentTop: null,
            stickyWrapper: stickyWrapper,
            className: o.className,
            getWidthFrom: o.getWidthFrom
          });
        });
      },
      update: scroller,
      unstick: function(options) {
        return this.each(function() {
          var unstickyElement = $(this);

          removeIdx = -1;
          for (var i = 0; i < sticked.length; i++) 
          {
            if (sticked[i].stickyElement.get(0) == unstickyElement.get(0))
            {
                removeIdx = i;
            }
          }
          if(removeIdx != -1)
          {
            sticked.splice(removeIdx,1);
            unstickyElement.unwrap();
            unstickyElement.removeAttr('style');
          }
        });
      }
    };

  // should be more efficient than using $window.scroll(scroller) and $window.resize(resizer):
  if (window.addEventListener) {
    window.addEventListener('scroll', scroller, false);
    window.addEventListener('resize', resizer, false);
  } else if (window.attachEvent) {
    window.attachEvent('onscroll', scroller);
    window.attachEvent('onresize', resizer);
  }

  $.fn.sticky = function(method) {
    if (methods[method]) {
      return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    } else if (typeof method === 'object' || !method ) {
      return methods.init.apply( this, arguments );
    } else {
      $.error('Method ' + method + ' does not exist on jQuery.sticky');
    }
  };

  $.fn.unstick = function(method) {
    if (methods[method]) {
      return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    } else if (typeof method === 'object' || !method ) {
      return methods.unstick.apply( this, arguments );
    } else {
      $.error('Method ' + method + ' does not exist on jQuery.sticky');
    }

  };
  $(function() {
    setTimeout(scroller, 0);
  });
})(jQuery);
;
/*
 * jQuery One Page Nav Plugin
 * http://github.com/davist11/jQuery-One-Page-Nav
 *
 * Copyright (c) 2010 Trevor Davis (http://trevordavis.net)
 * Dual licensed under the MIT and GPL licenses.
 * Uses the same license as jQuery, see:
 * http://jquery.org/license
 *
 * @version 3.0.0
 *
 * Example usage:
 * $('#nav').onePageNav({
 *   currentClass: 'current',
 *   changeHash: false,
 *   scrollSpeed: 750
 * });
 */

;(function($, window, document, undefined){

	// our plugin constructor
	var OnePageNav = function(elem, options){
		this.elem = elem;
		this.$elem = $(elem);
		this.options = options;
		this.metadata = this.$elem.data('plugin-options');
		this.$win = $(window);
		this.sections = {};
		this.didScroll = false;
		this.$doc = $(document);
		this.docHeight = this.$doc.height();
	};

	// the plugin prototype
	OnePageNav.prototype = {
		defaults: {
			navItems: 'a',
			currentClass: 'current',
			changeHash: false,
			easing: 'swing',
			filter: '',
			scrollSpeed: 750,
			scrollThreshold: 0.5,
			begin: false,
			end: false,
			scrollChange: false
		},

		init: function() {
			// Introduce defaults that can be extended either
			// globally or using an object literal.
			this.config = $.extend({}, this.defaults, this.options, this.metadata);

			this.$nav = this.$elem.find(this.config.navItems);

			//Filter any links out of the nav
			if(this.config.filter !== '') {
				this.$nav = this.$nav.filter(this.config.filter);
			}

			//Handle clicks on the nav
			this.$nav.on('click.onePageNav', $.proxy(this.handleClick, this));

			//Get the section positions
			this.getPositions();

			//Handle scroll changes
			this.bindInterval();

			//Update the positions on resize too
			this.$win.on('resize.onePageNav', $.proxy(this.getPositions, this));

			return this;
		},

		adjustNav: function(self, $parent) {
			self.$elem.find('.' + self.config.currentClass).removeClass(self.config.currentClass);
			$parent.addClass(self.config.currentClass);
		},

		bindInterval: function() {
			var self = this;
			var docHeight;

			self.$win.on('scroll.onePageNav', function() {
				self.didScroll = true;
			});

			self.t = setInterval(function() {
				docHeight = self.$doc.height();

				//If it was scrolled
				if(self.didScroll) {
					self.didScroll = false;
					self.scrollChange();
				}

				//If the document height changes
				if(docHeight !== self.docHeight) {
					self.docHeight = docHeight;
					self.getPositions();
				}
			}, 250);
		},

		getHash: function($link) {
			return $link.attr('href').split('#')[1];
		},

		getPositions: function() {
			var self = this;
			var linkHref;
			var topPos;
			var $target;

			self.$nav.each(function() {
				linkHref = self.getHash($(this));
				$target = $('#' + linkHref);

				if($target.length) {
					topPos = $target.offset().top;
					self.sections[linkHref] = Math.round(topPos);
				}
			});
		},

		getSection: function(windowPos) {
			var returnValue = null;
			var windowHeight = Math.round(this.$win.height() * this.config.scrollThreshold);

			for(var section in this.sections) {
				if((this.sections[section] - windowHeight) < windowPos) {
					returnValue = section;
				}
			}

			return returnValue;
		},

		handleClick: function(e) {
			var self = this;
			var $link = $(e.currentTarget);
			var $parent = $link.parent();
			var newLoc = '#' + self.getHash($link);

			if(!$parent.hasClass(self.config.currentClass)) {
				//Start callback
				if(self.config.begin) {
					self.config.begin();
				}

				//Change the highlighted nav item
				self.adjustNav(self, $parent);

				//Removing the auto-adjust on scroll
				self.unbindInterval();

				//Scroll to the correct position
				self.scrollTo(newLoc, function() {
					//Do we need to change the hash?
					if(self.config.changeHash) {
						window.location.hash = newLoc;
					}

					//Add the auto-adjust on scroll back in
					self.bindInterval();

					//End callback
					if(self.config.end) {
						self.config.end();
					}
				});
			}

			e.preventDefault();
		},

		scrollChange: function() {
			var windowTop = this.$win.scrollTop();
			var position = this.getSection(windowTop);
			var $parent;

			//If the position is set
			if(position !== null) {
				$parent = this.$elem.find('a[href$="#' + position + '"]').parent();

				//If it's not already the current section
				if(!$parent.hasClass(this.config.currentClass)) {
					//Change the highlighted nav item
					this.adjustNav(this, $parent);

					//If there is a scrollChange callback
					if(this.config.scrollChange) {
						this.config.scrollChange($parent);
					}
				}
			}
		},

		scrollTo: function(target, callback) {
			var offset = $(target).offset().top;

			$('html, body').animate({
				scrollTop: offset
			}, this.config.scrollSpeed, this.config.easing, callback);
		},

		unbindInterval: function() {
			clearInterval(this.t);
			this.$win.unbind('scroll.onePageNav');
		}
	};

	OnePageNav.defaults = OnePageNav.prototype.defaults;

	$.fn.onePageNav = function(options) {
		return this.each(function() {
			new OnePageNav(this, options).init();
		});
	};

})( jQuery, window , document );;
/* JS for AreYouStuck page */
$(function () {
    $('.divBussiness').hide();
    $('.btnDeveloper').click(function () {
        $('.divBussiness').hide();
        $('.divDeveloper').show();
        $('.containerDeveloper').show();
        $('.containerBussiness').hide();
        $('.btnDeveloper').addClass('areyoustuck_active');
        $('.btnBussiness').removeClass('areyoustuck_active');
    });
    $('.btnBussiness').click(function () {
        $('.divDeveloper').hide();
        $('.divBussiness').show();
        $('.containerBussiness').show();
        $('.containerDeveloper').hide();
        $('.btnBussiness').addClass('areyoustuck_active');
        $('.btnDeveloper').removeClass('areyoustuck_active');
    });
});




/* JS for Plugins */

$(document).ready(function () {
    // HoloLens Tabs

    (function ($) {
        $('.tab ul.tabs').addClass('active').find('> li:eq(0)').addClass('current');

        $('.tab ul.tabs li a').click(function (g) {
            var tab = $(this).closest('.tab'),
                index = $(this).closest('li').index();

            tab.find('ul.tabs > li').removeClass('current');
            $(this).closest('li').addClass('current');

            tab.find('.tab_content').find('div.tabs_item').not('div.tabs_item:eq(' + index + ')').slideUp();
            tab.find('.tab_content').find('div.tabs_item:eq(' + index + ')').slideDown();

            g.preventDefault();
        });
    })(jQuery);

    //AOS initiate 
    AOS.init({
        duration: 1200,
        disable: 'mobile',
    })


    // Specific Isotope filter for /ssw/Employment/Employment.aspx page
    // Event listener of accordion for isotope
    $('.panel-group').on('hidden.bs.collapse', function () {
        $('#isotopeVertical').isotope();
    })
    $('.panel-group').on('shown.bs.collapse', function () {
        $('#isotopeVertical').isotope();
    })

    // init Isotope
    var $grid = $('#isotopeVertical').isotope({
        itemSelector: '.panel-group',
        layoutMode: 'vertical'
    });
    filterIsotope();


    $(".filters a").click(function () {



        // don't proceed if already selected
        if ($(this).hasClass("is-checked")) {
            return false;
        }

        var $optionSet = $(this).parents(".option-set");

        // Uncheck previously selected filter
        $optionSet.find(".is-checked").removeClass("is-checked");

        // Check current filter
        $(this).addClass("is-checked");

        filterIsotope();
        return false;
    });


    function filterIsotope() {
        // store filter for each group
        var filters = [];

        $(".option-set").each(function () {
            var currentFilter = $(this).find(".is-checked");

            if (currentFilter) {
                filters.push(currentFilter.attr('data-filter'));
            }
        })

        $('#isotopeVertical').isotope({ filter: filters.join('') });

        // shows 'no results' message
        $('#isotopeVertical').height() < 100 || $('#isotopeVertical').height() === 136 ? $('#noResultsContainer').show() : $('#noResultsContainer').hide();
    }
});

// * Smooth scrooling for anchor links *

// Select all links with hashes
$('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
      && 
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });
;
/*
  mediaCheck - http://github.com/sparkbox/mediaCheck
  Version: 0.4.6, 10-21-2016 Author: Rob Tarr (http://twitter.com/robtarr)
*/
(function () { window.mediaCheck = function (options) { var breakpoints, checkQuery, convertEmToPx, createListener, getPXValue, hasMatchMedia, i, mmListener, mq, mqChange; mq = void 0; mqChange = void 0; createListener = void 0; convertEmToPx = void 0; getPXValue = void 0; hasMatchMedia = window.matchMedia !== undefined && !!window.matchMedia("!").addListener; if (hasMatchMedia) { mqChange = function (mq, options) { if (mq.matches) { if (typeof options.entry === "function") { options.entry(mq) } } else { if (typeof options.exit === "function") { options.exit(mq) } } if (typeof options.both === "function") { return options.both(mq) } }; createListener = function () { mq = window.matchMedia(options.media); mq.addListener(function () { return mqChange(mq, options) }); window.addEventListener("orientationchange", function () { mq = window.matchMedia(options.media); return mqChange(mq, options) }, false); return mqChange(mq, options) }; return createListener() } else { breakpoints = {}; mqChange = function (mq, options) { if (mq.matches) { if (typeof options.entry === "function" && (breakpoints[options.media] === false || breakpoints[options.media] == null)) { options.entry(mq) } } else { if (typeof options.exit === "function" && (breakpoints[options.media] === true || breakpoints[options.media] == null)) { options.exit(mq) } } if (typeof options.both === "function") { options.both(mq) } return breakpoints[options.media] = mq.matches }; convertEmToPx = function (value) { var emElement, px; emElement = void 0; emElement = document.createElement("div"); emElement.style.width = "1em"; emElement.style.position = "absolute"; document.body.appendChild(emElement); px = value * emElement.offsetWidth; document.body.removeChild(emElement); return px }; getPXValue = function (width, unit) { var value; value = void 0; switch (unit) { case "em": value = convertEmToPx(width); break; default: value = width } return value }; for (i in options) { breakpoints[options.media] = null } checkQuery = function (parts) { var constraint, dimension, matches, ratio, value, windowHeight, windowWidth; constraint = parts[1]; dimension = parts[2]; if (parts[4]) { value = getPXValue(parseInt(parts[3], 10), parts[4]) } else { value = parts[3] } windowWidth = window.innerWidth || document.documentElement.clientWidth; windowHeight = window.innerHeight || document.documentElement.clientHeight; if (dimension === "width") { matches = constraint === "max" && value > windowWidth || constraint === "min" && value < windowWidth } else if (dimension === "height") { matches = constraint === "max" && value > windowHeight || constraint === "min" && value < windowHeight } else if (dimension === "aspect-ratio") { ratio = windowWidth / windowHeight; matches = constraint === "max" && eval(ratio) < eval(value) || constraint === "min" && eval(ratio) > eval(value) } return matches }; mmListener = function () { var j, len, matches, media, medias, parts; medias = options.media.split(/\sand\s|,\s/); matches = true; for (j = 0, len = medias.length; j < len; j++) { media = medias[j]; parts = media.match(/\((.*?)-(.*?):\s([\d\/]*)(\w*)\)/); if (!checkQuery(parts)) { matches = false } } return mqChange({ media: options.media, matches: matches }, options) }; if (window.addEventListener) { window.addEventListener("resize", mmListener, false) } else { if (window.attachEvent) { window.attachEvent("onresize", mmListener) } } return mmListener() } } }).call(this);;
!function(e,t){"object"==typeof exports&&"object"==typeof module?module.exports=t():"function"==typeof define&&define.amd?define([],t):"object"==typeof exports?exports.AOS=t():e.AOS=t()}(this,function(){return function(e){function t(n){if(o[n])return o[n].exports;var i=o[n]={exports:{},id:n,loaded:!1};return e[n].call(i.exports,i,i.exports,t),i.loaded=!0,i.exports}var o={};return t.m=e,t.c=o,t.p="dist/",t(0)}([function(e,t,o){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}var i=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var o=arguments[t];for(var n in o)Object.prototype.hasOwnProperty.call(o,n)&&(e[n]=o[n])}return e},a=o(1),r=(n(a),o(5)),c=n(r),u=o(6),s=n(u),d=o(7),f=n(d),l=o(8),m=n(l),p=o(9),b=n(p),v=o(10),g=n(v),y=o(13),w=n(y),h=[],k=!1,x=document.all&&!window.atob,j={offset:120,delay:0,easing:"ease",duration:400,disable:!1,once:!1,startEvent:"DOMContentLoaded"},O=function(){var e=arguments.length<=0||void 0===arguments[0]?!1:arguments[0];return e&&(k=!0),k?(h=(0,g["default"])(h,j),(0,b["default"])(h,j.once),h):void 0},_=function(){h=(0,w["default"])(),O()},z=function(){h.forEach(function(e,t){e.node.removeAttribute("data-aos"),e.node.removeAttribute("data-aos-easing"),e.node.removeAttribute("data-aos-duration"),e.node.removeAttribute("data-aos-delay")})},A=function(e){return e===!0||"mobile"===e&&m["default"].mobile()||"phone"===e&&m["default"].phone()||"tablet"===e&&m["default"].tablet()||"function"==typeof e&&e()===!0},E=function(e){return j=i(j,e),h=(0,w["default"])(),A(j.disable)||x?z():(document.querySelector("body").setAttribute("data-aos-easing",j.easing),document.querySelector("body").setAttribute("data-aos-duration",j.duration),document.querySelector("body").setAttribute("data-aos-delay",j.delay),"DOMContentLoaded"===j.startEvent&&["complete","interactive"].indexOf(document.readyState)>-1?O(!0):"load"===j.startEvent?window.addEventListener(j.startEvent,function(){O(!0)}):document.addEventListener(j.startEvent,function(){O(!0)}),window.addEventListener("resize",(0,s["default"])(O,50,!0)),window.addEventListener("orientationchange",(0,s["default"])(O,50,!0)),window.addEventListener("scroll",(0,c["default"])(function(){(0,b["default"])(h,j.once)},99)),document.addEventListener("DOMNodeRemoved",function(e){var t=e.target;t&&1===t.nodeType&&t.hasAttribute&&t.hasAttribute("data-aos")&&(0,s["default"])(_,50,!0)}),(0,f["default"])("[data-aos]",_),h)};e.exports={init:E,refresh:O,refreshHard:_}},function(e,t){},,,,function(e,t,o){"use strict";function n(e,t,o){var n=!0,a=!0;if("function"!=typeof e)throw new TypeError(c);return i(o)&&(n="leading"in o?!!o.leading:n,a="trailing"in o?!!o.trailing:a),r(e,t,{leading:n,maxWait:t,trailing:a})}function i(e){var t="undefined"==typeof e?"undefined":a(e);return!!e&&("object"==t||"function"==t)}var a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol?"symbol":typeof e},r=o(6),c="Expected a function";e.exports=n},function(e,t){"use strict";function o(e,t,o){function n(t){var o=b,n=v;return b=v=void 0,O=t,y=e.apply(n,o)}function a(e){return O=e,w=setTimeout(d,t),_?n(e):y}function r(e){var o=e-h,n=e-O,i=t-o;return z?x(i,g-n):i}function u(e){var o=e-h,n=e-O;return!h||o>=t||0>o||z&&n>=g}function d(){var e=j();return u(e)?f(e):void(w=setTimeout(d,r(e)))}function f(e){return clearTimeout(w),w=void 0,A&&b?n(e):(b=v=void 0,y)}function l(){void 0!==w&&clearTimeout(w),h=O=0,b=v=w=void 0}function m(){return void 0===w?y:f(j())}function p(){var e=j(),o=u(e);if(b=arguments,v=this,h=e,o){if(void 0===w)return a(h);if(z)return clearTimeout(w),w=setTimeout(d,t),n(h)}return void 0===w&&(w=setTimeout(d,t)),y}var b,v,g,y,w,h=0,O=0,_=!1,z=!1,A=!0;if("function"!=typeof e)throw new TypeError(s);return t=c(t)||0,i(o)&&(_=!!o.leading,z="maxWait"in o,g=z?k(c(o.maxWait)||0,t):g,A="trailing"in o?!!o.trailing:A),p.cancel=l,p.flush=m,p}function n(e){var t=i(e)?h.call(e):"";return t==f||t==l}function i(e){var t="undefined"==typeof e?"undefined":u(e);return!!e&&("object"==t||"function"==t)}function a(e){return!!e&&"object"==("undefined"==typeof e?"undefined":u(e))}function r(e){return"symbol"==("undefined"==typeof e?"undefined":u(e))||a(e)&&h.call(e)==m}function c(e){if("number"==typeof e)return e;if(r(e))return d;if(i(e)){var t=n(e.valueOf)?e.valueOf():e;e=i(t)?t+"":t}if("string"!=typeof e)return 0===e?e:+e;e=e.replace(p,"");var o=v.test(e);return o||g.test(e)?y(e.slice(2),o?2:8):b.test(e)?d:+e}var u="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol?"symbol":typeof e},s="Expected a function",d=NaN,f="[object Function]",l="[object GeneratorFunction]",m="[object Symbol]",p=/^\s+|\s+$/g,b=/^[-+]0x[0-9a-f]+$/i,v=/^0b[01]+$/i,g=/^0o[0-7]+$/i,y=parseInt,w=Object.prototype,h=w.toString,k=Math.max,x=Math.min,j=Date.now;e.exports=o},function(e,t){"use strict";function o(e,t){r.push({selector:e,fn:t}),!c&&a&&(c=new a(n),c.observe(i.documentElement,{childList:!0,subtree:!0,removedNodes:!0})),n()}function n(){for(var e,t,o=0,n=r.length;n>o;o++){e=r[o],t=i.querySelectorAll(e.selector);for(var a,c=0,u=t.length;u>c;c++)a=t[c],a.ready||(a.ready=!0,e.fn.call(a,a))}}Object.defineProperty(t,"__esModule",{value:!0});var i=window.document,a=window.MutationObserver||window.WebKitMutationObserver,r=[],c=void 0;t["default"]=o},function(e,t){"use strict";function o(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}Object.defineProperty(t,"__esModule",{value:!0});var n=function(){function e(e,t){for(var o=0;o<t.length;o++){var n=t[o];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}return function(t,o,n){return o&&e(t.prototype,o),n&&e(t,n),t}}(),i=function(){function e(){o(this,e)}return n(e,[{key:"phone",value:function(){var e=!1;return function(t){(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(t)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(t.substr(0,4)))&&(e=!0)}(navigator.userAgent||navigator.vendor||window.opera),e}},{key:"mobile",value:function(){var e=!1;return function(t){(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(t)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(t.substr(0,4)))&&(e=!0)}(navigator.userAgent||navigator.vendor||window.opera),e}},{key:"tablet",value:function(){return this.mobile()&&!this.phone()}}]),e}();t["default"]=new i},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o=function(e,t,o){var n=e.node.getAttribute("data-aos-once");t>e.position?e.node.classList.add("aos-animate"):"undefined"!=typeof n&&("false"===n||!o&&"true"!==n)&&e.node.classList.remove("aos-animate")},n=function(e,t){var n=window.pageYOffset,i=window.innerHeight;e.forEach(function(e,a){o(e,i+n,t)})};t["default"]=n},function(e,t,o){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var i=o(11),a=n(i),r=function(e,t){return e.forEach(function(e,o){e.node.classList.add("aos-init"),e.position=(0,a["default"])(e.node,t.offset)}),e};t["default"]=r},function(e,t,o){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var i=o(12),a=n(i),r=function(e,t){var o=0,n=0,i=window.innerHeight,r={offset:e.getAttribute("data-aos-offset"),anchor:e.getAttribute("data-aos-anchor"),anchorPlacement:e.getAttribute("data-aos-anchor-placement")};switch(r.offset&&!isNaN(r.offset)&&(n=parseInt(r.offset)),r.anchor&&document.querySelectorAll(r.anchor)&&(e=document.querySelectorAll(r.anchor)[0]),o=(0,a["default"])(e).top,r.anchorPlacement){case"top-bottom":break;case"center-bottom":o+=e.offsetHeight/2;break;case"bottom-bottom":o+=e.offsetHeight;break;case"top-center":o+=i/2;break;case"bottom-center":o+=i/2+e.offsetHeight;break;case"center-center":o+=i/2+e.offsetHeight/2;break;case"top-top":o+=i;break;case"bottom-top":o+=e.offsetHeight+i;break;case"center-top":o+=e.offsetHeight/2+i}return r.anchorPlacement||r.offset||isNaN(t)||(n=t),o+n};t["default"]=r},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o=function(e){for(var t=0,o=0;e&&!isNaN(e.offsetLeft)&&!isNaN(e.offsetTop);)t+=e.offsetLeft-("BODY"!=e.tagName?e.scrollLeft:0),o+=e.offsetTop-("BODY"!=e.tagName?e.scrollTop:0),e=e.offsetParent;return{top:o,left:t}};t["default"]=o},function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o=function(e){e=e||document.querySelectorAll("[data-aos]");var t=[];return[].forEach.call(e,function(e,o){t.push({node:e})}),t};t["default"]=o}])});
;
