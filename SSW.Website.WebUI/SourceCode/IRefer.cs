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
//James Zhou 5/03/2008

public interface IRefer
{
	string ParseReferrerInfo(Uri refererUrl);
	string ParsePaidAdInfo(Uri refererUrl);
	string ReferrerName { get; }
}

public class ReferrerFactory
{
	public static IRefer BuildReferrer(Uri refererUrl)
	{
		if (refererUrl == null) {
			return null;
		}
		Regex referrerHostRegx = new Regex("www\\.google\\.[a-zA-Z]{2,3}(?:\\.[a-zA-Z]{2}){0,1}");
		if (referrerHostRegx.IsMatch(refererUrl.Host)) {
			return new GoogleReferrer();
		}
		referrerHostRegx = new Regex("[a-zA-z]+\\.yahoo\\.[a-zA-Z]{2,3}(?:\\.[a-zA-Z]{2}){0,1}");
		if (referrerHostRegx.IsMatch(refererUrl.Host)) {
			return new YahooReferrer();
		}
		referrerHostRegx = new Regex("search\\.live\\.[a-zA-Z]{2,3}(?:\\.[a-zA-Z]{2}){0,1}");
		if (referrerHostRegx.IsMatch(refererUrl.Host)) {
			return new LiveReferrer();
		}
		return null;
	}
}

public class GoogleReferrer : IRefer
{

	public string ParsePaidAdInfo(Uri refererUrl)
	{
		//We use a redirection url so track the redirection url - NOTE: NOT WORKING!!!
		//Dim googleReg As Regex = New Regex("http://www\.google\.[a-zA-Z]{2,3}(?:\.[a-zA-Z]{2}/|/)[^&]+&ai=[^&]+.*(?:&q=(?<info1>[^&]+)|&adurl=(?<info2>[^&]+))")
		Regex googleReg = new Regex("http://www\\.ssw\\.com\\.au/ssw/Redirect/GoogleAds/(?<info1>[^\\.]+)\\.htm");
		Match referMatch = googleReg.Match(refererUrl.OriginalString);
		if (referMatch.Success && referMatch.Groups.Count > 0) {
			Group matchedGroup = referMatch.Groups["info1"];
			if ((matchedGroup != null)) {
				return HttpUtility.HtmlDecode(matchedGroup.Value);
				//Else
				//    matchedGroup = referMatch.Groups.Item("info2")
				//    If Not matchedGroup Is Nothing Then
				//        Return HttpUtility.HtmlDecode(matchedGroup.Value)
				//    End If
			}
		}
		return null;
	}

	public string ParseReferrerInfo(Uri refererUrl)
	{
		Regex googleReg = new Regex("http://www\\.google\\.[a-zA-Z]{2,3}(?:\\.[a-zA-Z]{2}/|/)search\\?(?:.*&q=|q=)(?<info>[^&]+)");
		Match referMatch = googleReg.Match(refererUrl.OriginalString);
		if (referMatch.Success && referMatch.Groups.Count > 0) {
			Group matchedGroup = referMatch.Groups["info"];
			if ((matchedGroup != null)) {
				return HttpUtility.HtmlDecode(matchedGroup.Value);
			}
		}
		return null;
	}

	public string ReferrerName {
		get { return "Google"; }
	}

}

public class LiveReferrer : IRefer
{

	public string ParsePaidAdInfo(System.Uri refererUrl)
	{
		//unable to determine referer from Live Paid Ad
		return null;
	}

	public string ParseReferrerInfo(System.Uri refererUrl)
	{
		Regex referReg = new Regex("http://search\\.live\\.com(?:\\.[a-zA-Z]{2}/|/)results.aspx\\?q=(?<info>[^&]+)");
		Match referMatch = referReg.Match(refererUrl.OriginalString);
		if (referMatch.Success && referMatch.Groups.Count > 0) {
			Group matchedGroup = referMatch.Groups["info"];
			if ((matchedGroup != null)) {
				return HttpUtility.HtmlDecode(matchedGroup.Value);
			}
		}
		return null;
	}

	public string ReferrerName {
		get { return "Live"; }
	}
}

public class YahooReferrer : IRefer
{


	public string ParsePaidAdInfo(System.Uri refererUrl)
	{
		Regex referReg = new Regex("http://[a-zA-Z]+\\.yahoo\\.com(?:\\.[a-zA-Z]{2}/|/).*xargs=.*");
		Match referMatch = referReg.Match(refererUrl.OriginalString);
		if (referMatch.Success) {
			//unable to parse Ad info from Yahoo Paid Ad url, so always returns a general info
			return "Paid Ad";
		}
		return null;
	}

	public string ParseReferrerInfo(System.Uri refererUrl)
	{
		Regex referReg = new Regex("http://search\\.yahoo\\.com(?:\\.[a-zA-Z]{2}/|/)search[^\\?]*\\?p=(?<info>[^&]+)");
		Match referMatch = referReg.Match(refererUrl.OriginalString);
		if (referMatch.Success && referMatch.Groups.Count > 0) {
			Group matchedGroup = referMatch.Groups["info"];
			if ((matchedGroup != null)) {
				return HttpUtility.HtmlDecode(matchedGroup.Value);
			}
		}
		return null;
	}

	public string ReferrerName {
		get { return "Yahoo"; }
	}
}
