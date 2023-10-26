<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Websites - Rules to Booking Better Flights" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content id="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<asp:SiteMapPath id="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
        <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" /> 
        
            <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426F6F6B696E67253230426574746572253230466C6967687473')">
    Let us know</a> what you think.</p> 
        
        <div class="TableOfContents">
            <h3>Rules to Booking Better Flights</h3>
            
            <ol>
                <li><a href="#tip">Do you know the general tips for booking flights?</a></li>
                <li><a href="#appointment">Do you know how to create an appointment in the Outlook calendar for flights?</a></li>
                <li><a href="#bookbetter">Do you know how to booking better flights?</a></li>
                <li><a href="#AUtoUS">Do you know how to booking better flights from Australia to the US?</a></li>
                <li><a href="#withinAU">Do you know how to booking better flights within Australia?</a></li>
                <li><a href="#withinUS">Do you know how to booking better flights within the US?</a></li>            
                <li><a href="#accomodation">Do you know the best online accommodation websites?</a></li>
                <li><a href="#itinerary">Do you create an online itinerary?</a></li>    
                <li><a href="#invoices">Do you keep your finance manager in the loop?</a></li>                                    
            </ol>
        </div>
        
        <ol>
        <li>
            <a name="tip"></a><h2>Do you know the general tips for booking flights?</h2>
            <ul>
                    <li>Wherever possible, book direct flights, and try to minimize connection times. </li>
                    <li>Wherever possible, try to get flexible flights in case they need to be changed. </li>
                    <li>Appointments - If accomodation is also required then enter the accomodation details into another appointment</li>
                    <li>When booking flights, know the preferred time <br />
                    eg. Some people prefer 10am flights, some are not keen on overnight flights </li>
                    <li>When booking, always ask for an exit row or a window seat. <br />
                    eg. Some people have 19" laptops and it is hard to open in other seating. </li>
                    <li>Avoid Paper tickets - they are hard to change. Go for E-tickets </li>
                    <li>When booking, leave an option to upgrade to business class <br />
                    Note: On Qantas this can only happen if you have avoided the evil fare types of N, O, or Q  (aka ReadyDeal fare) </li>
                    <li> Before finalising the booking always get written confirmation by having you boss sign a print-out of the itinerary or via email or IM. </li>
                    <li>Depending on where you are traveling, you may need to take extra precautions when it comes to protecting your luggage. If you will be visiting an unsafe airport or location, it might be worth upgrading to a more secure suitcase such as the type suggested in this YouTube video, "<a href="https://www.youtube.com/watch?v=tbpKhHwwtiY&feature=share">Defeat Dishonest Baggage Handlers</a>"</li>
            </ul>
        </li>
        <li>
            <a name="appointment"></a><h2>Do you know how to create an appointment in the Outlook calendar for flights?</h2>
            <ul>
                    <li>When creating the appointment, make sure to invite any relevant parties even though they may not be flying<br />
                        e.g. the Boss's wife would like to know when he is flying out and coming home.</li>
                    <li>Enter all of the flight details into the appointment - include both the departure time (for the person flying) and the arrival time (for the people picking up the passenger)</li>
                    <li>Make sure to include any unusual information about the flight. <br />
                        e.g. You are not flying with your preferred airline because xxx... <br />
                        OR<br />
                        As per our conversation, you are flying via Melbourne, because xxx...</li>
                    <li>Always include the price of the ticket in the message.</li>
                    <li><b>Do not forget to categorize the appointment as CONFIRMED RED so it cannot be overlooked.</b></li>
                    <li>When possible, always include the terminal number in the Location feild and if a non standard terminal eg. Jetstar flights highlight it with a warning </br>
                        Eg. <FONT style="BACKGROUND-COLOR: yellow">WARNING: Different terminal. Allow more time</FONT></li>
                    <li>Include the duration of the flight in the message of the appointment.</li>
            </ul>
        </li>

        <li><a name="bookbetter"></a>
            <h2>Do you know how to book better flights?</h2>
            <h3>STEPS:</h3>
            <ol>
            <li>Visit the sites below</li>
            <li>Enter the destinations with corresponding dates to receive a quote from each site</li>
            <li>Use the quotes to locate the best price or deal.</li>
            
            These are the best sites to check in order of preference:
            <ul>
            <li><a href="/SSW/Redirect/Zuji.htm">www.zuji.com.au</a>   (10/10)</li>
            <li><a href="/SSW/Redirect/Jetbroad.htm">www.jetabroad.com.au</a> (9/10)</li>
            <li><a href="/SSW/Redirect/Travel.htm">www.travel.com.au</a>  (8/10)</li>
            <li><a href="/SSW/Redirect/Edreams.htm">www.edreams.com</a>  (8/10)</li>
            <li><a href="/SSW/Redirect/Webjet.htm">www.webjet.com.au</a>  (7/10)</li>
            <li><a href="/SSW/Redirect/Qantas.htm">www.qantas.com.au </a>   (7/10)</li>
            <li><a href="/SSW/Redirect/Flightcentre.htm">www.flightcentre.com.au</a> <b>OR</b> <a href="/SSW/Redirect/Escapetravel.htm">www.escapetravel.com.au</a> (6/10)
            <br />(both owned by same company)</li>
            </ul>
            These are the best sites for flights within the US
            <ul>
            <li><a href="/SSW/Redirect/Expedia.htm">www.expedia.com</a>  (10/10)</li>
            <li><a href="/SSW/Redirect/VirginAmerica.htm">www.virginamerica.com</a>  (8/10)</li>
            <li><a href="/SSW/Redirect/Cheaptickets.htm">www.Cheaptickets.com</a>  (7/10)</li>
            <li><a href="/SSW/Redirect/AmericanAirlines.htm">www.AmericanAirlines.com</a>  (5/10)</li>
            <li><a href="/SSW/Redirect/Cheapseats.htm">www.Cheapseats.com</a>  (4/10)</li>
            </ul>
            <li>As a further step, give the planned itinerary to a travel agent to investigate flights. In many cases, they are able to provide <a href="http://aussietraveladvice.com/cheap-fares-travel-agents/">better deals</a> and are aware of specials and discounts for the planned travel. Be sure to do your own research first 
            Be sure to let the travel agent know about the preferences of the traveller e.g. preferred airline, travel times, etc. as per <a href="#tip">Do you know the general tips for booking flights?</a></li>
            <li>Compare all alternatives researched and select 3 of the best options to choose from. Make a reccomendation for the option you feel is best (with reasons) and give to your boss to get his/her approval and initial before booking.</li>
            </ol>
            <h3>NOTE:</h3>
            <ul>
            <li>Some travel companies, such as Flight Centre, are able to match or beat the prices quoted by thier competitors so be sure to ask them for a competetive fare. See <a href="http://aussietraveladvice.com/travel-advice-travel-tips/booking-a-holiday-online-versus-travel-agent/">Booking Online Versus Using a Travel Agent</a></li>
            <li>Make sure that before comparing the prices the quotes include all the taxes/ surcharges/fees</li>
            <li>Ensure that the quotes you receive are &#8216;flexible&#8217; ( i.e. they provide an option to alter the travelling dates once the tickets are purchased)</li>
            <li>Remember to convert all prices to Australian dollars when comparing quotes, by using the <a href="/ssw/Shop/OtherCurrency.asp">SSW Currency Converter</a>.</li>
            <li>Avoid Paper tickets - they are hard to change.  Go for E-tickets</li>
            <li>We would recommend Google Flight and Bing travel but neither work for Australia - see <a href="https://twitter.com/AdamCogan/status/413225774192537600">this</a> tweet.</li>
            </ul>
            
        <li>
        <a name="AUtoUS"></a>
        <h2>Do you know how to booking better flights from Australia to US?</h2>
            <ol>
                <li>Follow the steps 1-3 above to receive quotes for the destinations required from every site e.g. Sydney to Seattle</li>
                <li>Then repeat the steps 1-3 again, with the following changes:              
                    <ul type="square">
                        <li>Create a first quote to travel from Sydney to Honolulu (return)</li>
                        <li>Create a second quote to travel from Honolulu to any US domestic destination required</li>
                        <li>e.g. Honolulu to Seattle</li>
                        <li>Add the two quotes together to receive a final quote</li>
                    </ul>
                </li>
            </ol>
                          
            
            Compare the quotes generated from points A and B and select the cheapest one.
        
        
        </li>
        <li><a name="withinAU"></a>
            <h2>
                Do you know how to booking better flights within Australia?</h2>
            Follow the steps 1-3 above. </li>

        <li><a name="withinUS"></a>
            <h2>
                Do you know how to booking better flights within US?</h2>
            Follow the steps 1-3 above. Focus primarily on the US websites. </li>


                <li>
                <a name="accomodation"></a><h2>Do you know the best online accommodation websites?</h2>
                <p>You don't get a good deal booking directly on the hotels website. The best accommodation websites allow for price comparisons. They are:</p>
                <ul>
                    <li><a href="http://www.lastminute.com/" target="_blank">lastminute.com</a></li>
                    <li><a href="http://www.stayz.com.au/" target="_blank">stayz.com.au</a></li>
                </ul>
                <p>As with flights, book the accommodation details as a separate appointment in your calendar (or if for the accomodation is for someone else, in the calendar for the person who is travelling).</p>
            </li>

                            <li>
                <a name="itinerary"></a><h2>Do you create an online itinerary?</h2>
                <p>As well as sending details of bookings to the traveller’s outlook calendar, we also use tripit.com to consolidate the details of bookings for flights, hotels, car rentals, etc. TripIt can make a 
                    single, easy-to-read online itinerary that can be viewed by anyone you choose to share the link with, making it easy to keep co-travellers, spouses, co-workers, etc. in the loop. </p>

                <p>After joining tripit.com, forward a copy of each booking confirmation to plans@tripit.com to store the details of upcoming journeys. 
                    Multiple items can then be merged to form one master itinerary that covers the whole trip. </p>

                <p>For more information or to join, visit <a href="https://www.tripit.com/">tripit.com</a></p>

            </li>

                <li>
                <a name="invoices"></a><h2>Do you keep your finance manager in the loop?</h2>
                <p>Save your finance manager the trouble of chasing you for the purchasing records by forwarding them a copy of the flight (or accommodation) invoice as soon as you receive it.</p>
            </li>

    </ol>

    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
