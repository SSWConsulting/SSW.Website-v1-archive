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

using SSW.Website.Common;

public class Core
{

	public static UserStatisticsModule UserStatistics {
		get {
			if ((Context.ApplicationInstance.Modules["UserStatisticsModule"] != null) && (Context.ApplicationInstance.Modules["UserStatisticsModule"]) is UserStatisticsModule) {
				return (UserStatisticsModule)Context.ApplicationInstance.Modules["UserStatisticsModule"];
			}
			return null;
		}
	}

	public static MembershipStatistics MembershipStatistics {
		get {
			// Use the cache to only retrieve values every hour...
			if (Context.Cache.Get(MembershipStatisticsCacheKey) == null) {
				// Get Total subscribers from the web service.
				SSWWebServiceSubscribers.Subscribers subscribers = new SSWWebServiceSubscribers.Subscribers();

				MembershipStatistics stats = new MembershipStatistics(subscribers.TotalSubscribers());
				Context.Cache.Insert(MembershipStatisticsCacheKey, stats, null, DateTime.MaxValue, new TimeSpan(1, 0, 0));
			}

			return (MembershipStatistics)Context.Cache[MembershipStatisticsCacheKey];
		}
	}

	public static bool IsInternalServer()
	{
		string internalMachineName = ConfigurationManager.AppSettings["InternalMachineName"];
		return (internalMachineName != null) && Context.Server.MachineName.ToLower() == internalMachineName.ToLower();
	}

	private static HttpContext Context {
		get { return HttpContext.Current; }
	}

	//Private Shared ReadOnly Property Page() As Page
	//    Get
	//        'Retur()
	//    End Get
	//End Property

	private static string MembershipStatisticsCacheKey {
		get { return "MembershipStatistics"; }
	}

}
