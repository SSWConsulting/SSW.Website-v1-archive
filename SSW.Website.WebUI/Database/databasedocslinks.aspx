<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Database FAQ & Links"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
</p>
    <ul>
        <li><a href="#HowGood">How good is Microsoft Access and the Internet?</a></li>
        <li><a href="/ssw/Standards/Rules/RulestoBetterAccessApplications.aspx#DecompileFeature">Do you know the feature of decompile switch?</a></li>
        <li><a href="#WhatIs">What is client/server?</a></li>
        <li> <a href="/ssw/Standards/Rules/RulesToUpsizingAccess.aspx#whichisappropriate">Do you know which is appropriate for you, Access or SQL Server?</a></li>
        <li> <a href="#Headaches">Microsoft Access Server Headaches</a></li>
        <li> <a href="#Y2K">The Year 2000 is all over....</a></li>
        <li> <a href="#SSWConsultingServices">How do I find out if SSW Consulting Services will fit my needs?</a></li>
        <li> <a href="#SizeOfConsultingProjects">What is the typical size of SSW Consulting Services?</a></li>
        <li> <a href="WhatToDoAfterCrash.htm">What to do after a crash in Windows 95</a></li>
        <!---<li> <a href="/ssw/Standards/DeveloperAccess/MakeMoreResponsiveScreensinMicrosoftAccess.aspx">Make More Responsive Screens in Microsoft Access</a></li>--->
        <li> <a href="/ssw/Standards/DeveloperAccess/HowtoImproveAccessPerformance.aspx">How to Improve Access Performance</a></li>
        <li> <a href="/ssw/Standards/DeveloperAccess/HowToDoMailMergeinWordusingAccessdata.aspx">How to Do a Mail Merge in Microsoft Word</a></li>
        <li> <a href="/ssw/KB/KB.asp?KBID=Q693456">What server hardware do I need for SQL Server?</a></li>
        <li> <a href="/ssw/Standards/DeveloperAccess/AttachmentManagerOverview.aspx">How to link your SSW Access database to an Access or SQL backend </a></li>
        <li> <a href="SSWDataRenovatorInfo.aspx"> Propagating Changes to Live Databases with SSW Data Renovator</a></li>
        <li> <a href="/ssw/Redirect/Access/accessstatus.htm" target="_blank">What the Access Status Bar Messages Mean</a> 
        <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" > </li>
	    <li> <a href="/ssw/Redirect/Access/accessquery.htm" target="_blank">Microsoft Access Query Tips and Techniques</a> 
        <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" > </li>
	    <li> <a href="DLLHell.aspx">DLL HELL The Inside Story.htm </a></li>
	    <li> <a href="/ssw/Standards/Rules/RulestoBetterEmail.aspx#LargeAttachment">How to Report an Error Using Screen Shots</a></li>
	    <li> <a href="/ssw/KB/KB.asp?KBID=Q999885">What is the best way of adding a record in SQL Server?</a></li>
	    <li> <a href="xpsendmail.htm">Can SQL Server send an email if a job fails?</a></li>
	    <li><a href="DatabaseConnection.aspx">Need to know more about Dynamic Websites?</a></li>
    </ul>
	  
     <%--<p><a href="/ssw/Internet/InternetDocsLinks.aspx">Internet 
        FAQ and Links</a></p>--%>
      <p><a href="/ssw/NETUG/DeveloperLinks.aspx">Related 
        Developer Links</a></p>
      <p><a href="/ssw/Database/LinksSoftwareUpdates.aspx">Links 
        to Software Updates</a></p>
        
	<h2><a name="HowGood"></a> How good is Microsoft Access and the Internet? </h2>
	      <p><b>Debbie 
        wrote:</b></p>
      <p>Hello Adam,</p>
      <p>I was looking 
        for info on ACCESS and HTML, I had no luck on www.microsoft.com, and saw 
        a message you had posted to comp.databases.ms-access about .idc files. 
        I've also tried calling Microsoft (nobody was there!!), so I'm not getting 
        very far.</p>
      <p>Basically, 
        our company wants to configure some home pages where the data is stored in 
        a database (most probably Access) and people will visit the pages and 
        get data pulled out of the database and displayed using HTML files. This 
        sounds reasonable to me, the question is, can Access handle it?</p>
      <p>How do you 
        like Access? We're thinking about getting it.... if we can get any info 
        on it, such as can well on portables, can it run on Unix, can it handle 
        HTML, can it connect to other databases?</p>
      <p>Well, thanks 
        in advance for any advice you can give.</p>
      <p>Debbie.</p>
      <p> 
      <hr width="100%">
      <br>
       
      <p><b>Adam Answered:</b></p>
      <p>Yes, there 
        is very little information about Access and HTML. It is very new technology 
        and very little has been written about it. I spent many hours gleaning 
        the information I needed to finally get a web site/access system running 
        for Magna Data an Internet Service Provider in Sydney.</p>
      <p>Access works 
        very well with Microsoft NT Server, Internet Information Server and .asp 
        (Active Server Pages with SQL in them). I am very impressed at the speed 
        and ease of use, once it is setup. The nice thing about Access is it is 
        user friendly and fairly easy for non-programmers to maintain.</p>
      <p>For that 
        job Internet users can visit their site, ask to see information on specific 
        products. Then they can even register online using the registration form.</p>
      <p>This is just 
        a little application I wrote to demonstrate a sample use of Access, hinting 
        at much bigger uses. Access works great at taking Internet user input, 
        processing it and returning information in an html document.</p>
      <p>Selecting 
        Access versus SQL Server depends on how much traffic you expect to get 
        at your site. Access is not as robust as SQL Server, but easier to use 
        and maintain (cheaper). SQL Server is the database that Microsoft uses 
        for its giant web site (BIG BUCKS).</p>
      <p>The nice 
        thing is that with Access you can start small, with a Pentium 266 64 MB 
        RAM and 4 gig hard drive, maybe a $5,000 investment in hardware and software. 
        Then, as your site develops over the next few months, you can simply add 
        another 64 MB of RAM and then maybe a file server via ethernet with as 
        many hard drives as you want, etc. Then if your site gets really hot, 
        you can move to a DEC Alpha with SQL Server, etc. I guess the point I 
        am trying to make is that Microsoft has provided upgrade paths for you, 
        so if you select Access you can later move up as it makes sense, to bigger 
        equipment and SQL Server.</p>
      <p>Access is 
        a Windows product which means it will not run on Unix. I have used both 
        Unix and Windows. Unless you have a Unix engineer in your office now, 
        don't use Unix. It will soon be a dead language, because Windows NT is 
        SOOOOOOO easy to use. It is Windows, you know. Bill Gates announced Wednesday 
        that all of their software is going to be Internet aware. However, if 
        you like a DOS-like prompt and know what this command means i1 ,then Unix 
        might just be your language of choice.</p>
      <p>Access can 
        connect to many other databases. If a database has an ODBC driver, Access 
        can connect to it. By the way, I am using Access 2000 for the Internet 
        work. However, Access may not be able to connect to a proprietary database 
        of custom design.</p>
      <p>Access will 
        run on any Windows capable computer with at least 16MB of RAM, including 
        laptops. WARNING! You will be very unhappy running Access 2000 on any 
        computer less than a Pentium 200 with 64MB. This is true with all Win 
        95 products.</p>
      <p>Well, that 
        should give you some idea, I hope I got you excited about using Access 
        for your project. If you need some help, please call on us. Our expertise 
        includes:</p>
      <p style="LINE-HEIGHT: 100%; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" 
     >1. Active Server 
        Pages (ASP) development</p>
      <p style="LINE-HEIGHT: 100%; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" 
     >2. Internet 
        Information Server (IIS) setup and maintenance and</p>
      <p style="LINE-HEIGHT: 100%; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" 
     >3. SQL Server 
        7 database development</p>
      <p style="LINE-HEIGHT: 100%; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" 
     >4. SQL Server 
        7 setup and maintenance</p>
      <p><b>Adam Cogan<br>
        </b>Sydney, Australia<br>
        SSW<br>
        <a href="mailto:AdamCogan@s*w.com.au?subject=Database%20Document">adamcogan@s*w.com.au</a></p>
	<h2><a name="WhatIs"></a> What is client/server? </h2>	
      <p>Client/Server 
        database systems are different from traditional database systems in that 
        the database exists on a dedicated server machine. Instead of network 
        machines "fighting" each other for the information needed, a dedicated 
        server processes requests from network "clients". This greatly increases 
        reliability, since access to data is controlled entirely by the host machine. 
        Security is much more easily enforced since authentication is done by 
        the server machine.</p>
      <p>If a client/server 
        system has been properly designed, the overall system speed will be increased 
        and network traffic decreased, since workstations only receive the data 
        they asked for. </p>
	<h2><a name="Headaches"></a> Microsoft Access Server Headaches </h2>
	      <p>As a consultant, 
        I am often called into projects that are running behind schedule and require 
        additional resources. This year, a stock broking corporation called me 
        in to convert a mainframe application to PC environment. The majority 
        of the company's income was generated from the application I was converting. 
        Not only was I converting their money maker, the system was required to 
        be up and running within six weeks. The project manager decided that I 
        should build the system using the Microsoft Access database product.</p>
      <p>The application 
        design specified a maximum of three concurrent users. Based on the type 
        of queries that were to be performed, I felt comfortable in stating that 
        the performance would be acceptable for the users. After rushing to meet 
        my deadline, the system was implemented. Everything went smoothly until 
        this company's business skyrocketed and more loans than anticipated had 
        to be processed. Before I knew it, the number of users had increased to 
        fifteen.</p>
      <p>With fifteen 
        users on the system, the network came to a standstill. The reason the 
        application brought the network to standstill is simple: in a Microsoft 
        Access server architecture, all database processing occurs on the local 
        PC. Therefore, when the users issued complicated queries to the server, 
        the network jammed with data being sent back to the local workstations. 
        Often, the queries being issued from the applications required thousands 
        of rows to be returned to the local PCs.</p>
      <p>In the Microsoft 
        Access server environment, this is the equivalent of calling a car dealership 
        and asking how many blue pickup trucks they have in stock. To get the 
        answer, the dealer drives every car to your house and you count the number 
        of blue pickup trucks. Obviously, this is not very efficient. In the Client/Server 
        database computing environment (ie. Microsoft SQL Server), a different 
        approach is taken. Someone at the dealership counts the number of blue 
        pickup trucks and passes the information back to the caller.</p>
      <p>Eventually, 
        the mortgage banking system was rewritten using a Microsoft SQL Server 
        as the backend. Performance was improved, network bottlenecks were decreased, 
        and users were happy.</p>
	<h2><a name="Y2K"></a> The Year 2000 is all over.... </h2>
	      <p>It's all 
        over now and all SSW escaped unscathed but invalid dates in databases 
        still cause problems from time to time. All versions of Access and SQL 
        Server internally store dates using four digit years. (Actually it is 
        stored as a number). Hence the reason why valid dates stored in time/date 
        fields were not be affected when the century ticked over. The main problem 
        lies in the initial entry of dates, either manually or from imported data. 
        Access 2.0 will interpret any two digit year as starting with an implicit 
        19. Access 95 varies depending upon which .dll's are on your system. Access 
        97 assumes all two digit years below 30 are in the 21st Century and all 
        other two digit years are in the 20th Century. Access 2000 does the same 
        but gives you options in Tools - Options to configure this.</p>
      <p>At SSW we 
        feel that it is best to subject all incoming dates to a custom date validation 
        routine. (For example we prevent data entry errors such as 1/1/199). This 
        has the added advantage that you can modify a single function to change 
        the rules for date validation easily as time progresses or your internal 
        business rules alter. </p>
      <p>At a PC level 
        we also have had problems. Some of the built-in date functions, such as 
        Now(), read the date from the Windows system clock. If this is correct, 
        then the Now() function should work okay. However some users accidently 
        change the date, resulting in invalid dates being passed to the Now() 
        function. This is a system wide problem and, as such, we feel that it 
        should not be corrected inside Access (since all sorts of other dates 
        on your system will be wrong). Instead at SSW we include a test in the 
        start-up routine of all of our databases applications that tests the Now() 
        function and makes sure that it is later than 1 April 2000 (or whatever 
        the date is when you program the routine). If it is less than this date, 
        then the BIOS is reporting an incorrect date, a warning message to that 
        effect is shown so you can get the problem resolved. This also solves 
        problems caused by CMOS battery failure, so it's a good routine to use 
        anyway. </p>
      <p>PS Windows 
        2000, Windows NT 4.0 and Windows '98 will apparently trap and correct 
        these BIOS date problems.</p>
      <p>A related 
        matter is the display of date information. As a rule we advise that all 
        date information is displayed using a custom format such as d mmm yyyy 
        (move the fields around to suit your own country format) rather than using 
        the Short or Medium Date formats which only show two digit years. Using 
        a four digit year display format gives added re-assurance to the user 
        that the date information in the database is correct.</p>

	<h2><a name="SSWConsultingServices"></a> How do I find out if SSW Consulting Services will fit my needs? </h2>
      <p> Contact us, and we will discuss your project 
        with you. After understanding your situation and identifying your needs, 
        we will make a proposal for you. At this point, it's entirely up to you 
        whether you want to go ahead with the project, seek alternative solution 
        or adjust the proposal to your needs. Call SSW to organize time to discuss 
        your situation. </p>
	<h2><a name="SizeOfConsultingProjects"></a> What is the typical size of SSW Consulting Services? </h2>
	      <p>SSW projects can range from a few hours to 
        several months, depending on your needs. If you are interested in discussing 
        a particular problem or your application's architecture for a very short 
        time with a SSW consultant, check our web page <a href="../Products/ProdCategory.aspx?CategoryID=5CONS">SSW 
        Consulting Services</a> for the rates. Whether you require a Database, 
        a Web Site, or both, we can provide your business with a customised solution.</p>
								</p>
		</asp:content>