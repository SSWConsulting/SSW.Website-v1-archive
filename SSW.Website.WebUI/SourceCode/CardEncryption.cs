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
using System.Security.Cryptography;

public class CardEncryption
{

	private const string sswPublicKey = "<RSAKeyValue>" + "<Modulus>" + "sb94FJYvvkMJpy8KUZj0+QCj7VTCZnuD6YL9Ba6iktTmDW4lrOJDPWmoCgDyYmZnBZisczG6A3HS7aco1tGtNOCw9wfUTusIglLXajAFYwpsOF13Rxbb0XL++ZxqWqBCQB8al8m0JpfYEkkSJYFZZyzZqSwevYKGRdf9QAaIWAM=" + "</Modulus>" + "<Exponent>" + "AQAB" + "</Exponent>" + "</RSAKeyValue>";
	public static string Encrypt(string messageToEncrypt)
	{
		RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
		rsa.FromXmlString(sswPublicKey);

		byte[] plainTextByteArray = Encoding.ASCII.GetBytes(messageToEncrypt);
		byte[] cypherTextByteArray = rsa.Encrypt(plainTextByteArray, false);

		string s = Convert.ToBase64String(cypherTextByteArray);
		return s;
	}
}
