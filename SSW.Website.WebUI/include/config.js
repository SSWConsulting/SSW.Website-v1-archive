function init()
{
	//Main Menu items: rollover:/ssw/include/images/tri-down2.gif:/ssw/include/images/tri-down1.gif or v
	menus[0] = new menu(19, "horizontal", 0, 86, -2, -2, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, 
		"bold", "bold", "black", "red", 0, "#CCCCCC", 2, "", 
		false, true, true, true, 12, true, 0, 0, "");

    menus[0].addItem('/ssw/','',100,'left','Home',0);
     menus[0].addItem('#','',150,'left','About Us', 1);
    
     menus[0].addItem('#','',120,'left','Services', 2);
     menus[0].addItem('#','',120,'left','Events', 3);
    menus[0].addItem('#','',120,'left','Products', 4);
    menus[0].addItem('#','',120,'left','Support', 5);
    menus[0].addItem('#','',120,'left','User Group',6);
    menus[0].addItem('/ssw/Download/Download.aspx','',120,'left','Downloads', 0);
    menus[0].addItem('/ssw/Products/ProdCategoryList.aspx','',120,'left', 'Order',0);
    menus[0].addItem('#','',120,'left', 'Your Account',7);	
	

//Sub Menu for About Us:

	menus[1] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, 
	"bold", "bold", "black", "red", 1, "#CCCCCC", 2, 62,
	 false, true, false, true, 6, true, 0, 0, "black");

	menus[1].addItem('/ssw/Company/AboutUs.aspx','', 17, 'left', 'SSW - About Us',0 );
     menus[1].addItem('/ssw/Company/AboutUs.aspx#WhereWe','', 17, 'left','SSW - Contact Us',0);
     menus[1].addItem('/ssw/Company/LinktoSSW.aspx','', 17, 'left', 'SSW - Link to us',0);
     menus[1].addItem('/ssw/Company/Experience.aspx','', 17, 'left', 'SSW - Our Clients',0 );
     menus[1].addItem('/ssw/Employees/EmployeesXMLMenu.aspx','', 17, 'left','SSW - Our People',0);
     menus[1].addItem('/ssw/News/News.aspx','', 17, 'left', 'SSW - In the News',0);
     menus[1].addItem('/ssw/Employment/Employment.aspx','', 17, 'left', 'SSW - Employment Opportunities',0 );
     menus[1].addItem('/ssw/testimonials/ViewAll.aspx','', 17, 'left', 'SSW - Testimonials',0);
  
  	menus[2] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");

	menus[2].addItem('/ssw/Company/SoftwareSolutions.aspx','', 17, 'left', 'Software Solutions',0 );
     menus[2].addItem('/ssw/Company/SoftwareAudit.aspx','', 17, 'left','Software Auditing',0);
     menus[2].addItem('/ssw/Products/Training.aspx','', 17, 'left', 'Developer Training',0);
     menus[2].addItem('/ssw/Methodology/XPDM.aspx','', 17, 'left', 'SSW - Our Development Method',0 );
     menus[2].addItem('/ssw/Hosting/','', 17, 'left','.NET Hostinge',0);
  
  	menus[3] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");

	 menus[3].addItem('/ssw/events/Events.aspx','', 17, 'left', 'Events',0 );
     menus[3].addItem('/ssw/events/SSWTechBreakfast.aspx','', 17, 'left','SSW Tech Breakfast',0);
     menus[3].addItem('/ssw/NETUG/Default.aspx','', 17, 'left', 'Sydney .NET Users Group',0);
     menus[3].addItem('/ssw/events/conference.aspx','', 17, 'left', 'Conferences and Roadshows',0 );

    	menus[4] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");

	 menus[4].addItem('/ssw/Products/ProdCategoryList.aspx','', 17, 'left', '-All SSW Products-',0 );
     menus[4].addItem('/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=1SQL','', 17, 'left','--SQL Server--',0);
     menus[4].addItem('/ssw/SQLAuditor/','', 17, 'left', 'SQL Auditor',0);
     menus[4].addItem('/ssw/SQLDeploy','', 17, 'left', 'SQL Deploy',0 );
	 menus[4].addItem('/ssw/SQLTotalCompare/','', 17, 'left', 'SQL Total Compare',0 );
     menus[4].addItem('/ssw/Alerts/Default.aspx','', 17, 'left','SSW Alerts',0);
     menus[4].addItem('/ssw/LogExplorer/','', 17, 'left', 'Lumigent Log Explorer',0);
     menus[4].addItem('/ssw/Entegra/default.aspx','', 17, 'left', 'Lumigent Entegra',0);
     menus[4].addItem('/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=2ACCESS','', 17, 'left', '---Access---',0);
     menus[4].addItem('/ssw/UpsizingPRO/','', 17, 'left', 'Upsizing PRO!',0);
     menus[4].addItem('/ssw/PerformancePRO/','', 17, 'left', 'Performance PRO!',0);
     menus[4].addItem('/ssw/DataPRO/','', 17, 'left', 'Data PRO!',0);
     menus[4].addItem('/ssw/datarenovator/','', 17, 'left', 'Data Renovator',0);
     menus[4].addItem('/ssw/PropertyAndEventPRO/','', 17, 'left', 'Property and Event PRO!',0);
     menus[4].addItem('/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=3WEB','', 17, 'left', '-- Web --',0);
     menus[4].addItem('/ssw/codeauditor/default.aspx','', 17, 'left', 'Code Auditor',0);
     menus[4].addItem('/ssw/AccessReporterForIIS/','', 17, 'left', 'Access Reporter .NET for IIS',0);
    
     menus[4].addItem('/ssw/LinkAuditor/default.aspx','', 17, 'left', 'Link Auditor',0);
     
     menus[4].addItem('/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=4EXOUT','', 17, 'left', '-- Exchange/Outlook --',0);
     menus[4].addItem('/ssw/LookOut/default.aspx','', 17, 'left', 'LookOut! for Outlook',0);
     menus[4].addItem('/ssw/ExchangeReporter/','', 17, 'left', 'Exchange Reporter',0);
     menus[4].addItem('/ssw/eXtremeEmails','', 17, 'left', 'eXtreme Emails',0);
     menus[4].addItem('/ssw/EmailMergePRO/','', 17, 'left', 'Email Merge PRO',0);
     menus[4].addItem('/ssw/TeamCalendar/','', 17, 'left', 'Team Calendar',0);
     menus[4].addItem('/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=5BUS','', 17, 'left', '--- Business ---',0);
     menus[4].addItem('/ssw/postcodewebservice/','', 17, 'left', 'Australian Postcode Web Service',0);
     menus[4].addItem('/ssw/Diagnostics','', 17, 'left', 'Diagnostics',0);
     menus[4].addItem('/ssw/TimePROSmartTags/','', 17, 'left', 'Time PRO! Smart Tags',0);
     menus[4].addItem('/ssw/Timepro/','', 17, 'left', 'Time PRO!',0);
     menus[4].addItem('/Tennispro/','', 17, 'left', 'Tennis PRO!',0);
     menus[4].addItem('/ssw/DataMergePRO/','', 17, 'left', 'Data Merge PRO!',0);
     menus[4].addItem('/ssw/Products/3rdPartySoftware.aspx','', 17, 'left', '3rd Party Software',0);

    
    menus[5] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");
     
    menus[5].addItem('https://help.ssw.com.au', '', 17, 'left', 'Knowledge Base', 0);
     menus[5].addItem('/ssw/Database/DatabaseDocsLinks.aspx','', 17, 'left', 'Database FAQ',0);
     menus[5].addItem('/ssw/Database/LinksSoftwareUpdates.aspx','', 17, 'left', 'Links to Software Updates',0);
     menus[5].addItem('/ssw/Products/ProdCategory.aspx?CategoryID=8SUPP','', 17, 'left', 'Support Rates',0);
     menus[5].addItem('/ssw/Company/UsedHardware/UsedHardware.aspx','', 17, 'left', 'Used Hardware for sale',0);
     menus[5].addItem('/ssw/Standards/Support/BugReportOrEnhancement.aspx','', 17, 'left', 'Report Bug/Enhancement',0);
     menus[5].addItem('/ssw/ExcelProductList/default.aspx','', 17, 'left', 'SSW Product and Price List',0);
     menus[5].addItem('/ssw/humanclick.aspx','', 17, 'left', 'Speak to someone now',0);
     menus[5].addItem('/ssw/MenuMap.aspx','', 17, 'left', 'Site Map',0);
   
   	menus[6] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");
   
   
     menus[6].addItem('/ssw/NETUG/default.aspx','', 17, 'left', 'Sydney .NET Users Group',0);
     menus[6].addItem('http://blogs.ssw.com.au/UserGroup/','', 17, 'left', 'User Group Blog',0);
     menus[6].addItem('/ssw/netug/sswupdateprevious.aspx','', 17, 'left', 'Past SSW Newsletters',0);
     menus[6].addItem('/ssw/Shop/Login.aspx?ReturnUrl=/ssw/AccessUG/default.asp','', 17, 'left', 'Logon/Join',0);
     menus[6].addItem('/ssw/NETUG/DeveloperLinks.aspx','', 17, 'left', 'Developer Links',0);
     menus[6].addItem('/ssw/Standards/Default.aspx','', 17, 'left', 'SSW Rules to Better ...',0);
     menus[6].addItem('/ssw/Standards/BetterSoftwareSuggestions','', 17, 'left', 'SSW Ideas for Better Software',0);
     menus[6].addItem('/ssw/Database/DatabaseDocsLinks.aspx','', 17, 'left', 'Database FAQ',0);
     
     menus[7] = new menu(225, "vertical", 0, 0, -5, -5, "#F0F0F0", "#F0F0F0", "Verdana,Helvetica", 7, "bold", 
		"bold", "black", "red", 1, "#CCCCCC", 2, 62, false, true, false, true, 6, true, 0, 0, "black");

     menus[7].addItem('/ssw/Shop/Login.aspx','', 17, 'left', 'Logon/Join',0);
     menus[7].addItem('/ssw/shop/ClientDetail.aspx','', 17, 'left', 'Your Details',0);
     menus[7].addItem('/ssw/shop/ClientInterests.aspx', '', 17, 'left', 'Your Interests', 0);
     /* 2009-08-17 Brite
     * the Reporting Service control is not working on US server
     * hide the link in order to avoid the complaint from clients
     */
     //menus[7].addItem('/ssw/shop/ClientRegisteredProducts.aspx','', 17, 'left', 'Your Registered Products',0);
     menus[7].addItem('/ssw/shop/Basket.aspx','', 17, 'left', 'Your Shopping Cart',0);
     menus[7].addItem('/ssw/remindermanager/Subscription.aspx','', 17, 'left', 'Your "SSW Alerts"',0);
     menus[7].addItem('/ssw/TimePRO/CurrentStatus.aspx','', 17, 'left', 'Current Status',0);
 
     /* 
     */


     

} //OUTER CLOSING BRACKET. EVERYTHING ADDED MUST BE ABOVE THIS LINE.

init();