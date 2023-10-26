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
