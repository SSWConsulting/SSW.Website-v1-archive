using System.Diagnostics;
using System.Web.Optimization;

/// <summary>
/// Bundle Formats for specific purposes e.g. Print Media targets.
/// </summary>
public static class BundleFormat
{
    /// <summary>
    /// Format for Print Media CSS Links
    /// </summary>
    public const string PRINT = @"<link href=""{0}"" rel=""stylesheet"" type=""text/css"" media=""print"" />";

    /// <summary>
    /// Format for Defer Media script Links
    /// </summary>
    public const string JS_DEFER = @"<script defer src=""{0}""></script>";
}

public static class BundlePaths_Javascript
{
    /// <summary>
    /// Includes all of the Javascript for Jquery, SignalR and Microsoft Ajax libraries.
    /// </summary>
    public const string JQUERY = "~/javascript_bundles/jquery";    

    /// <summary>
    /// Includes all of the Javascript required for MomentJs
    /// </summary>
    public const string MOMENTJS = "~/javascript_bundles/moment";

    /// <summary>
    /// Includes all of the Javascript files necessary for the Pigeon & Raven Layouts.
    /// </summary>
    public const string PIGEON = "~/javascript_bundles/ssw_pigeon";

    /// <summary>
    /// Includes all of the Javascript files necessary for the Consulting Layouts.
    /// </summary>
    public const string CONSULTING = "~/javascript_bundles/ssw_consulting";

    // ----- For Testing of China performance ------ //
    /// <summary>
    /// Includes all of the Javascript for Jquery, SignalR and Microsoft Ajax libraries.
    /// </summary>
    public const string JQUERY_TEST = "~/javascript_bundles/jquery_test";

    /// <summary>
    /// Includes all of the Javascript for Jquery, SignalR and Microsoft Ajax libraries.
    /// </summary>
    public const string SERVICEDETECTOR_TEST = "~/javascript_bundles/servicedetector_test";
    public const string LIVESTREAM_TEST = "~/javascript_bundles/livestream_test";
    public const string EVENTS_TEST = "~/javascript_bundles/events_test";
    public const string PIGEON_TEST = "~/javascript_bundles/pigeon_test";

    /// <summary>
    /// Includes all of the Javascript files necessary for the Consulting_Test Layouts.
    /// </summary>
    public const string CONSULTING_TEST = "~/javascript_bundles/ssw_consulting_test";
}

public static class BundlePaths_Stylesheets
{
    /// <summary>
    /// Includes all of the Stylesheets required for the Rave Layout.
    /// </summary>
    public const string RAVEN = "~/stylesheet_bundles/ssw_raven";

    /// <summary>
    /// Raven Print Media Stylesheets
    /// </summary>
    public const string RAVEN_PRINT = "~/stylesheet_bundles/ssw_raven_print";

    /// <summary>
    /// Includes all of the Stylesheets required for the Consulting Layout.
    /// </summary>
    public const string CONSULTING = "~/stylesheet_bundles/ssw_consulting";

    /// <summary>
    /// Includes all of the Stylesheets required for the Consulting Layout.
    /// </summary>
    public const string CONSULTING_SLIM = "~/stylesheet_bundles/ssw_consulting_slim";

    /// <summary>
    /// Includes all of the Stylesheets required for the Consulting Layout that can be deferred.
    /// </summary>
    public const string CONSULTING_DEFER = "~/stylesheet_bundles/ssw_consulting_defer";

    // ------- For Testing of China performance ------//
    /// <summary>
    /// Includes all of the Stylesheets required for the Consulting Test Layout.
    /// </summary>
    public const string CONSULTING_TEST = "~/stylesheet_bundles/ssw_consulting_test";

}

public class BundleConfig
{
    public static void RegisterBundles(BundleCollection bundles)
    {
        RegisterScripts(bundles);
        RegisterStyles(bundles);

        // In production we want to bundle and minify, this overrrides settings in the web.config
        // But while debugging we don't want this to happen, so that we can hit breakpoints
        if (Debugger.IsAttached)
            BundleTable.EnableOptimizations = false;
        else
            BundleTable.EnableOptimizations = true;
    }

    /// <summary>
    /// Registers all of the required script bundles for the different layouts across
    /// the SSW website.
    /// </summary>
    /// <param name="bundles"></param>
    public static void RegisterScripts(BundleCollection bundles)
    {
        bundles.Add(new ScriptBundle(BundlePaths_Javascript.JQUERY).Include(
                "~/Scripts/jquery-2.1.3.min.js",
                "~/Scripts/jquery.signalR-2.2.0.min.js",
                "~/Scripts/jquery.lazy.min.js",
                "~/Scripts/jquery.validate.min.js",
                "~/Scripts/jquery.validate.unobtrusive.min.js",
                "~/include/jquery.formatCurrency-1.3.0.min.js",
                "~/eXtremeEmails/MicrosoftAjax.js",
                "~/include/pigeon/js/SSW.DetectService.js",
                "~/include/pigeon/js/application-insights.js",
                "~/include/raven/megamenu-redirect.js"
                ));       

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.PIGEON).Include(
            "~/Scripts/ssw.utility.js",
            "~/include/pigeon/js/bootstrap.min.js",
            "~/include/pigeon/js/bootstrap-multiselect.js",
            "~/Include/pigeon/js/ToggleEventCalendar.js",
            "~/include/pigeon/js/link.js",
            "~/include/pigeon/js/decodeMail.js",
            "~/include/pigeon/js/isotope.pkgd.min.js",
            "~/include/pigeon/js/jstorage.js",
            "~/include/pigeon/js/livestream.js",
            "~/include/pigeon/js/jquery.nanoscroller.min.js",
            //"~/include/pigeon/js/SSW.Events.js",
            "~/include/pigeon/js/slidebars.min.js",
            "~/include/pigeon/js/jquery.swipebox.min.js",
            "~/include/pigeon/js/jvfloat.min.js",
            "~/include/pigeon/js/SSW.Pigeon.js"));

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.CONSULTING).Include(
            "~/Scripts/ssw.utility.js",
            "~/include/pigeon/js/bootstrap.min.js",
            "~/include/pigeon/js/bootstrap-multiselect.js",
            "~/Include/pigeon/js/ToggleEventCalendar.js",
            "~/include/pigeon/js/link.js",
            "~/include/pigeon/js/decodeMail.js",
            "~/include/pigeon/js/isotope.pkgd.min.js",
            "~/include/pigeon/js/jstorage.js",
            "~/include/pigeon/js/livestream.js",
            "~/include/pigeon/js/jquery.nanoscroller.min.js",
            // "~/include/pigeon/js/SSW.Events.js",
            "~/include/pigeon/js/slidebars.min.js",
            "~/include/pigeon/js/jquery.swipebox.min.js",
            "~/include/pigeon/js/jvfloat.min.js",
            "~/include/pigeon/js/SSW.Pigeon.js",
            "~/include/consulting/js/jquery.appear.js", //Jquery Appear
            "~/include/consulting/js/jquery.easing.1.3.js", //jQuery Easing v1.3
            "~/include/consulting/js/modernizr-latest.js", //Modernizr v2.7.1
            "~/include/consulting/js/wow.min.js", //WoW animation
            "~/include/consulting/js/jquery.countTo.js", //jQuery countTo Plugin
            "~/include/consulting/js/jquery.sticky.js", //Sticky
            "~/include/consulting/js/jquery.nav.js", //One Page Nav
            "~/include/consulting/js/script.js", //jQuery code for plugins
            "~/include/consulting/js/mediaCheck-min.js", //jQuery media check
            "~/include/consulting/js/aos.js")); //jQuery AOS plugin
               
        bundles.Add(new ScriptBundle(BundlePaths_Javascript.MOMENTJS).Include(
            "~/include/moment.js",
            "~/include/moment-timezone.js",
            "~/include/moment-timezone-data.js"));

        // ---------------- BUNDLES USED FOR TESTING OF PERFORMANCE IN CHINA USING THE PIGEON_TEST.MASTER AND PAGES IN THE CHINA/ FOLDER --------------------------- //
        bundles.Add(new ScriptBundle(BundlePaths_Javascript.SERVICEDETECTOR_TEST).Include(
            "~/include/pigeon/js/SSW.DetectService.js"
           ));

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.JQUERY_TEST).Include(
               "~/Scripts/jquery-2.1.3.min.js",
               "~/Scripts/jquery.signalR-2.2.0.min.js",
               "~/Scripts/jquery.validate.min.js",
               "~/Scripts/jquery.validate.unobtrusive.min.js",
               "~/include/jquery.formatCurrency-1.3.0.min.js",
               "~/eXtremeEmails/MicrosoftAjax.js"
               //"~/include/pigeon/js/SSW.DetectService.js"
               ));

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.CONSULTING_TEST).Include(
           "~/Scripts/ssw.utility.js",
           "~/include/pigeon/js/bootstrap.min.js",
           "~/include/pigeon/js/bootstrap-multiselect.js",
           "~/Include/pigeon/js/ToggleEventCalendar.js",
           "~/include/pigeon/js/link.js",
           "~/include/pigeon/js/decodeMail.js",
           "~/include/pigeon/js/isotope.pkgd.min.js",
           "~/include/pigeon/js/jstorage.js",
           //"~/include/pigeon/js/livestream.js",
           "~/include/pigeon/js/jquery.nanoscroller.min.js",
           //"~/include/pigeon/js/SSW.Events.js",
           "~/include/pigeon/js/slidebars.min.js",
           "~/include/pigeon/js/jquery.swipebox.min.js",
           "~/include/pigeon/js/jvfloat.min.js",
           //"~/include/pigeon/js/SSW.Pigeon.js",
           "~/include/consulting/js/jquery.appear.js", //Jquery Appear
           "~/include/consulting/js/jquery.easing.1.3.js", //jQuery Easing v1.3
           "~/include/consulting/js/modernizr-latest.js", //Modernizr v2.7.1
           "~/include/consulting/js/wow.min.js", //WoW animation
           "~/include/consulting/js/jquery.countTo.js", //jQuery countTo Plugin
           "~/include/consulting/js/jquery.sticky.js", //Sticky
           "~/include/consulting/js/jquery.nav.js", //One Page Nav
           "~/include/consulting/js/script.js", //jQuery code for plugins
           "~/include/consulting/js/mediaCheck-min.js", //jQuery media check
           "~/include/consulting/js/aos.js"
           )); //jQuery AOS plugin 

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.LIVESTREAM_TEST).Include(
            "~/include/pigeon/js/livestream.js"
            ));

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.EVENTS_TEST).Include(
            //"~/include/pigeon/js/SSW.Events.js"
            ));

        bundles.Add(new ScriptBundle(BundlePaths_Javascript.PIGEON_TEST).Include(
            "~/include/pigeon/js/SSW.Pigeon.js"
            ));
    }

    /// <summary>
    /// Registers all of the required Stylesheet bundles for the different layouts across
    /// the SSW website.
    /// </summary>
    public static void RegisterStyles(BundleCollection bundles)
    {
        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.RAVEN).Include(
                "~/include/pigeon/css/bootstrap.ssw.min.css",
                "~/include/pigeon/css/slidebars.min.css",
                "~/include/pigeon/css/font-awesome.css",
                "~/include/pigeon/css/flag-icon.min.css",
                "~/include/pigeon/css/nanoscroller.css",
                "~/include/pigeon/css/swipebox.css",
                "~/include/pigeon/css/default.min.css"
            ));

        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.CONSULTING).Include(
                "~/include/pigeon/css/bootstrap.ssw.min.css",
                "~/include/consulting/css/reset.css",
                "~/include/pigeon/css/slidebars.min.css",
                "~/include/consulting/css/default.min.css", // modified version for consulting lead pages
                "~/include/pigeon/css/font-awesome.css",
                "~/include/pigeon/css/flag-icon.min.css",
                "~/include/pigeon/css/swipebox.css",
                "~/include/consulting/css/animate.css",
                "~/include/consulting/css/aos.css" // css animation on scroll
            ));

        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.CONSULTING_SLIM).Include(
                "~/include/pigeon/css/bootstrap.ssw.min.css",
                "~/include/consulting/css/reset.css",
                "~/include/pigeon/css/slidebars.min.css",
                "~/include/consulting/css/default.min.css" // modified version for consulting lead pages
            ));

        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.CONSULTING_DEFER).Include(
                "~/include/pigeon/css/font-awesome.css",
                "~/include/pigeon/css/flag-icon.min.css",
                "~/include/pigeon/css/swipebox.css",
                "~/include/consulting/css/animate.css",
                "~/include/consulting/css/aos.css" // css animation on scroll
            ));

        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.RAVEN_PRINT).Include(
             "~/include/pigeon/css/print.css"
            ));

        // ---------------- BUNDLES USED FOR TESTING OF PERFORMANCE IN CHINA USING THE PIGEON_TEST.MASTER AND PAGES IN THE CHINA/ FOLDER --------------------------- //
        bundles.Add(new StyleBundle(BundlePaths_Stylesheets.CONSULTING_TEST).Include(
               "~/include/pigeon/css/bootstrap.ssw.min.css",
               "~/include/consulting/css/reset.css",
               "~/include/pigeon/css/slidebars.min.css",
               "~/include/pigeon/css/font-awesome.css",
               "~/include/pigeon/css/flag-icon.min.css",
               "~/include/pigeon/css/swipebox.css",
               "~/include/consulting/css/default.min.css", // modified version for consulting lead pages
               "~/include/consulting/css/animate.css",
               "~/include/consulting/css/aos.css" // css animation on scroll
           ));


    }
}