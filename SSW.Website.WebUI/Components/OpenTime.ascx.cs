using SSW;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Collections.Specialized;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.SessionState;
using System.Web.Security;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


namespace SSW.Website.WebUI.Components
{


	partial class OpenTime : System.Web.UI.UserControl
	{


		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}

		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion


		// Identifies current row in the table:
		// true - row about SSW opening hours
		// false - row about SSW after hours support

		//private bool mIsOfficeHours;
		//public bool IsOfficeHours {
		//	get { return mIsOfficeHours; }
		//	set { mIsOfficeHours = value; }
		//}



		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			DateTime CurrentTime = default(DateTime); // Current time
			DateTime OpenTime = default(DateTime); // Opening time for SSW
			DateTime CloseTime = default(DateTime); // Closing time for SSW


			// Get the current time
			CurrentTime = DateTime.UtcNow;

			bool bOpeningHours = false;
			
			string outputString = "<span class=\"office {1}\">{2}</span><br />";


			//if (IsOfficeHours) {
				// Identify whether current time falls within opening hours

				bOpeningHours = OpenHours(CurrentTime.Hour, CurrentTime.Minute, CurrentTime.DayOfWeek);

				if (bOpeningHours) {
					outputString = string.Format(outputString, "Office", "Open", "Open");
				} else {
					outputString = string.Format(outputString, "Office", "Closed", "Closed");
				}

				// UTC Opening time, 8:30am SYDNEY
				OpenTime = new DateTime(CurrentTime.Date.Year, CurrentTime.Month, CurrentTime.Day, 22, 30, 0);

				// UTC Closing time, 6:30pm SYDNEY
				CloseTime = new DateTime(CurrentTime.Date.Year, CurrentTime.Month, CurrentTime.Day, 8, 30, 0);

			//} 
			
			//else {
			//	bool bAfterHours = false;
			//	bAfterHours = AfterHours(DateAndTime.Hour(DateAndTime.Now), DateAndTime.Minute(DateAndTime.Now), DateAndTime.Weekday(DateAndTime.Now), bOpeningHours);

			//	if (bAfterHours) {
			//		outputString = string.Format(outputString, "After Hours Support", "Open", "Open");
			//	} else {
			//		outputString = string.Format(outputString, "After Hours Support", "Closed", "Closed");
			//	}

			//	// Opening time, 7:00am
			//	OpenTime = new DateTime(DateTime.Now.Date.Year, DateTime.Now.Month, DateTime.Now.Day, 7, 0, 0);

			//	// Closing time, 11:30pm
			//	CloseTime = new DateTime(DateTime.Now.Date.Year, DateTime.Now.Month, DateTime.Now.Day, 23, 30, 0);
			//}

			//If CurrentTime < OpenTime Then

			//    ' If earlier than opening time
			//    ' Subtract current time from opening time.
			//    ' Example: Opening time is 7:30am. If current time is 6:00am, we will be
			//    '          opening in exactly 1 hour and 30 minutes. 7:30 - 6:00 = 1:30.
			//    TimeResult = OpenTime.Subtract(CurrentTime)

			//    ' Print the result to the label
			//    outputString = outputString & _
			//                    "<p>SSW will be available for contact again in " & _
			//                    TimeResult.Hours.ToString() & " hours " & _
			//                    TimeResult.Minutes.ToString() & " minutes.</p>"

			//ElseIf CurrentTime > CloseTime Then

			//    'OpenTime = OpenTime.AddDays(HowManyDaysToAdd(CurrentTime.Date))

			//    If CurrentTime > OpenTime Then
			//        OpenTime = OpenTime.AddDays(1)
			//    End If
			//    TimeResult = OpenTime.Subtract(CurrentTime)

			//    outputString = outputString & _
			//                    "<p>Open in  " & _
			//                    TimeResult.Hours.ToString() & " hrs " & _
			//                    TimeResult.Minutes.ToString() & " mins.</p>"

			//Else
			//    ' do nothing
			//End If

			this.labelOpenTime.Text = outputString;

		}


		// Name:			OpenHours
		// Description:	Calculates whether or not specified time is opening hours for SSW
		// Inputs:		Hour - Current hour; int
		//				Minute - Current minute; int
		//				Weekday - Day of the week (1-7); int
		// Outputs:		Boolean; True - Is opening hours, False - Isn't opening hours

		private bool OpenHours(int Hour, int Min, DayOfWeek Weekday)
		{
			bool functionReturnValue = false;


			if ((!(Weekday == DayOfWeek.Saturday) & !(Weekday == DayOfWeek.Sunday)) & ((Hour == 22 & Min >= 30) | (Hour > 22 | Hour < 8) | (Hour == 8 & Min <= 30))) {
				functionReturnValue = true;
			} else {
				functionReturnValue = false;
			}
			return functionReturnValue;

		}


		// Name:			AfterHours
		// Description:	Calculates whether or not specified time is after hours for SSW
		// Inputs:		Hour - Current hour; int
		//				Minute - Current minute; int
		//				Weekday - Day of the week (1-7); int
		//				IsOfficeHours - Is is currently office hours?
		// Outputs:		Boolean; True - Is after hours, False - Isn't after hours

		//private bool AfterHours(int Hour, int Min, int Weekday, bool IsOfficeHours)
		//{
		//	bool functionReturnValue = false;

		//	//If (Not IsOfficeHours) And _
		//	//(Hour >= 7) And ((Hour < 23) Or (Hour = 23 And Min <= 30)) Then
		//	//
		//	//	AfterHours = True
		//	//Else
		//	//	AfterHours = False
		//	//End If

		//	// *** JAC. 18/06/03 - Office hours should also be after hours

		//	if (IsOfficeHours) {
		//		functionReturnValue = true;
		//	} else {
		//		if ((Hour >= 7) & ((Hour < 23) | (Hour == 23 & Min <= 30))) {
		//			functionReturnValue = true;
		//		} else {
		//			functionReturnValue = false;
		//		}
		//	}
		//	return functionReturnValue;

		//}
		public OpenTime()
		{
			Load += Page_Load;
			Init += Page_Init;
		}


		// Name:			FormatTime
		// Description:	Formats a time correctly, in 12-hour AM/PM format
		// Inputs:		iHour - Hour
		//				iMinute - Minute
		// Outputs:		String containing the formatted time

		//Function FormatTime(ByVal iHour As Integer, ByVal iMinute As Integer)

		//    Dim iH As Integer ' Hour
		//    Dim iM As String ' Minute
		//    Dim iP As String ' AM/PM

		//    ' Convert hour to 12-hour AM/PM time format
		//    Select Case iHour
		//        Case 0
		//            iH = 12
		//            iP = "AM"
		//        Case 12
		//            iH = 12
		//            iP = "PM"
		//        Case Is > 12
		//            iH = iHour - 12
		//            iP = "PM"
		//        Case Else
		//            iH = iHour
		//            iP = "AM"
		//    End Select

		//    ' Fill in minute value
		//    If iMinute < 10 Then
		//        iM = CStr("0" & iMinute)
		//    Else
		//        iM = iMinute.ToString
		//    End If

		//    ' Concatenate values to form time
		//    FormatTime = iH & ":" & iM & " " & iP

		//End Function


	}

}
