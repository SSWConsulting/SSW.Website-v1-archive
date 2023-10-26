using Microsoft.VisualBasic;
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

[Serializable()]
public class MembershipStatistics
{

	private int mTotalMembers;
	private int mNewThisWeek;

	private int mNewToday;
	public MembershipStatistics(int[] webserviceOutput)
	{
		mTotalMembers = webserviceOutput[1];
		mNewThisWeek = webserviceOutput[2];
		mNewToday = webserviceOutput[3];
	}

	public int TotalMembers {
		get { return mTotalMembers; }
	}

	public int NewThisWeek {
		get { return mNewThisWeek; }
	}

	public int NewToday {
		get { return mNewToday; }
	}

}
