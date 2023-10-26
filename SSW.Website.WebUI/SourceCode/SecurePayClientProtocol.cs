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
using System.IO;
using System.Net;
using System.Xml;
using System.Xml.Serialization;

namespace SSW.SecurePay
{
	/// <summary>
	/// 
	/// </summary>
	/// <remarks></remarks>
	public class SecurePayClientProtocol
	{
		//SecurePay provided values
		private string serviceURI;
		private string mMerchantID;
		private string password;
		private string mProxyUrl = "http://redback:8080";
		//timeout value for the request in seconds
			//default 60 sec value will be used
		private int timeout = -1;

		public enum CreditCardType : int
		{
			Unknown = 0,
			Jcb = 1,
			Amex = 2,
			DinersClub = 3,
			Bankcard = 4,
			MasterCard = 5,
			Visa = 6
		}

		public SecurePayClientProtocol()
		{
		}

		public SecurePayClientProtocol(string pMerchantID, string pPassword, string pSecureURI)
		{
			mMerchantID = pMerchantID;
			password = pPassword;
			serviceURI = pSecureURI;
		}

		public string MerchantID {
			get { return this.mMerchantID; }
			set { this.mMerchantID = value; }
		}

		public string MerchantPassword {
			get { return this.password; }
			set { this.password = value; }
		}

		public string ProcessingServiceUrl {
			get { return this.serviceURI; }
			set { this.serviceURI = value; }
		}

		public int RequestTimeout {
			get { return this.timeout; }
			set {
				if (value == -1) {
					timeout = value;
					return;
				}
				if (value <= 0) {
					throw new ApplicationException("Timeout setting exception: incorrect value");
				} else {
					timeout = value;
				}
			}
		}
		public string ProxyUrl {
			get { return this.mProxyUrl; }
			set { this.mProxyUrl = value; }
		}
		private SecurePayRequest RequestMessageTemplate()
		{
			SecurePayRequest message = new SecurePayRequest();
			message.MessageInfo.messageID = GenerateMessageId();
			message.MessageInfo.messageTimestamp = GenerateMessageTimeStamp();
			message.MerchantInfo.merchantID = this.MerchantID;
			message.MerchantInfo.password = this.password;
			if (timeout != -1) {
				message.MessageInfo.timeoutValue = this.timeout.ToString();
			}
			return message;
		}

		//Unique identifier for the xml message
		private string GenerateMessageId()
		{
			//should be not more than 30 chars in length
			return (System.Guid.NewGuid().ToString("N")).Substring(2);
		}

		//Time of the request
		private string GenerateMessageTimeStamp()
		{
			DateTime msgTime = DateTime.Now;
			System.Text.StringBuilder builder = new System.Text.StringBuilder();
			builder.Append(msgTime.Year.ToString("0000"));
			builder.Append(msgTime.Day.ToString("00"));
			builder.Append(msgTime.Month.ToString("00"));
			builder.Append(msgTime.Hour.ToString("00"));
			builder.Append(msgTime.Minute.ToString("00"));
			builder.Append(msgTime.Second.ToString("00"));
			builder.Append(msgTime.Millisecond.ToString("000"));
			builder.Append("000+600");
			return builder.ToString();
		}

		private System.String SerializeToXmlString(SecurePayRequest request)
		{
			System.String content = null;
			XmlSerializer serializer = new XmlSerializer(typeof(SecurePayRequest), string.Empty);

			//Create an XmlSerializerNamespaces object.
			System.Xml.Serialization.XmlSerializerNamespaces ns = new System.Xml.Serialization.XmlSerializerNamespaces();
			//Add empty prefix-namespace pairs.
			ns.Add(string.Empty, string.Empty);

			System.IO.MemoryStream buffer = new System.IO.MemoryStream();
			System.Xml.XmlTextWriter writer = new System.Xml.XmlTextWriter(buffer, System.Text.Encoding.UTF8);
			StreamReader reader = null;
			try {
				serializer.Serialize(writer, request, ns);
				writer.Flush();

				buffer.Position = 0;
				reader = new StreamReader(buffer, System.Text.Encoding.UTF8);
				content = reader.ReadToEnd();

				//This is for debugging only
				StreamWriter test = new StreamWriter(Path.Combine("C:\\DataSergeyIshutin\\My_IIS_VirtualFolder\\SecurePay", "Request.xml"));
				test.Write(content);
				test.Flush();
				test.Close();
			} finally {
				buffer.Close();
				writer.Close();
				reader.Close();
			}
			return content;
		}

		public SecurePayResponse ProcessPayment(string purchaseOrderNumber, int amount, CreditCardInfo cardinfo)
		{
			SecurePayRequest requestMessage = RequestMessageTemplate();
			requestMessage.Payment.TxnList = new PaymentTxnList();

			Txn txn = new Txn();
			//transaction amount in cents, purchase order #, credit card details
			txn.amount = amount.ToString();
			txn.purchaseOrderNo = purchaseOrderNumber;
			txn.CreditCardInfo = cardinfo;
			requestMessage.Payment.TxnList.Txn = txn;

			//send request to the service endpoint and reseive xml-response
			SecurePayResponse response = null;
			response = SendServiceRequest((this.SerializeToXmlString(requestMessage)));

			//Response received and schema -ok
			//validates the echo-response
			if (((response.Status.statusCode != null)) & Int32.Parse(response.Status.statusCode) == 0) {
				if (this.ValidateMessages(requestMessage, response, "payment")) {
					//Response received, schema - ok, match the request fields, StatusCode - normal, request message processed correctly
					//and crucial fields in Response and Request objects match each other
					//SO: The no errors in SSW and SecurePay communication logical task but Transacion can be declined because of
					//problems with user. Please analyse the return value no know if transaction approved/declined and why.
					return response;
				} else {
					//Some fields in the response mismatch the request - sth wrong received
					throw new ApplicationException(string.Format("Response validation Error"));
				}
			} else {
				//this Exception in presence of SecurePayResponse indicates that physical communications was OK everything was sent 
				//and received but there are problems on logical level:
				//StatusCode is not normal (000) - message processing error - sth wrong in initial communication data which were sent
				//SO: The errors - because of SSW or SecurePay communication logical problems 
				throw new ApplicationException(string.Format("Status Error: {0}. Description: {1}.", response.Status.statusCode, response.Status.statusDescription));
			}
		}

		//Call this to verify that SecurePay Payment Server is available
		public bool CallForEcho()
		{
			SecurePayRequest requestMessage = RequestMessageTemplate();
			requestMessage.RequestType = "Echo";
			requestMessage.Payment = null;

			//send request to the service endpoint and reseive xml-response
			SecurePayResponse response = null;
			try {
				response = SendServiceRequest((this.SerializeToXmlString(requestMessage)));
			} catch (ApplicationException ex) {
				//presense of ApplicationException having the WebException as inner exception
				//has the same meaning as the unavailable service. No needs to bubble ex further
				if ((ex.InnerException != null)) {
					WebException innex = ex.InnerException as System.Net.WebException;
					if ((innex != null)) {
						return false;
					}
				}
				//bubble ex
				throw ex;
			}

			//validates the echo-response
			if (((response.Status.statusCode != null)) & Int32.Parse(response.Status.statusCode) == 0) {
				if (this.ValidateMessages(requestMessage, response, "echo")) {
					//Response received, schema - ok, matchs the request fields, StatusCode - normal
					return true;
				} else {
					//Some fields in the response xml mismatch the request - sth wrong received, StatusCode - normal.
					return false;
				}
			} else {
				//Response received but StatusCode is not normal
				throw new ApplicationException(string.Format("Status Error: {0}. Description: {1}.", response.Status.statusCode, response.Status.statusDescription));
			}
		}

		private bool ValidateMessages(SecurePayRequest request, SecurePayResponse response, string typeMessage)
		{
			if (response.RequestType == null | Strings.Trim(response.RequestType).ToLower() != typeMessage) {
				return false;
			}
			if (response.MessageInfo.messageID == null | request.MessageInfo.messageID != response.MessageInfo.messageID) {
				return false;
			}
			if (typeMessage == "payment") {
				if (response.MerchantInfo.merchantID == null | request.MerchantInfo.merchantID != response.MerchantInfo.merchantID) {
					return false;
				}
				if ((response.Payment.TxnList.Txn.amount != null) & response.Payment.TxnList.Txn.amount != string.Empty) {
					if (request.Payment.TxnList.Txn.amount != response.Payment.TxnList.Txn.amount) {
						return false;
					}
				}
				if (response.Payment.TxnList.Txn.purchaseOrderNo == null | request.Payment.TxnList.Txn.purchaseOrderNo != response.Payment.TxnList.Txn.purchaseOrderNo) {
					return false;
				}
			}
			return true;
		}

		public bool ProcessRefund()
		{
			//stub
			return false;
		}

		//This function is to send request to service and to receive the response.
		//It returns message body in the form of array of bytes received from service 
		//Also this function checks that process of communication was OK - but no checking the data received.
		private SecurePayResponse SendServiceRequest(string strRequestContent)
		{
			SecurePayResponse responseContent = null;
			HttpWebRequest request = null;
			HttpWebResponse response = null;
			try {
				request = (HttpWebRequest)WebRequest.Create(serviceURI);
			} catch (NotSupportedException ex) {
				throw new ApplicationException("The request scheme specified in requestUriString has not been registered.", ex);
			} catch (ArgumentNullException ex) {
				throw new ApplicationException("requestUriString is a null reference", ex);
			} catch (UriFormatException ex) {
				//something wrong with serviceURI from the application settings
				throw new ApplicationException("The URI specified in requestUriString is not a valid URI.", ex);
			}

			//Length of request message content
			byte[] bytesContent = System.Text.Encoding.UTF8.GetBytes(strRequestContent);
			//Generate headers of request message
			request.Method = "POST";
			request.KeepAlive = false;
			request.ProtocolVersion = HttpVersion.Version11;
			request.ContentType = "text/xml";
			request.ContentLength = bytesContent.Length;
			request.Proxy = new WebProxy(new Uri(this.ProxyUrl));
			request.Proxy.Credentials = CredentialCache.DefaultCredentials;
			request.Credentials = CredentialCache.DefaultCredentials;
			if (timeout != -1) {
				request.Timeout = timeout * 1000;
			} else {
				request.Timeout = 60000;
			}

			try {
				//filling the message content
				Stream dataStream = request.GetRequestStream();
				dataStream.Write(bytesContent, 0, bytesContent.Length);
				dataStream.Close();
				//Send request to service (synchronically) and wait for response
				response = (HttpWebResponse)request.GetResponse();
			} catch (WebException ex) {
				switch (ex.Status) {
					//If status is WebExceptionStatus.ProtocolError, there has been a protocol error
					// and a WebResponse should exist.
					case WebExceptionStatus.ProtocolError:
						// Get HttpWebResponse so that you can check the HTTP status code.
						HttpWebResponse httpResponse = (HttpWebResponse)ex.Response;
						throw new ApplicationException(string.Format("WebException Protocol error. Status Code: {0}. Description: {1}", Convert.ToInt32(httpResponse.StatusCode).ToString(), httpResponse.StatusDescription), ex);
					case WebExceptionStatus.Timeout:
						//timeout. We will be able to resolve this by re-sending the request, if we want
						throw new ApplicationException("Timeout", ex);
					default:
						throw new ApplicationException("WebException Occured", ex);
				}
			}
			//Process the HttpWebResponse object for results of network communications
			if (response.StatusCode != HttpStatusCode.OK) {
				//some problems occured during the process of sending-receiving
				throw new ApplicationException(string.Format("WebException error. Status Code: {0}. Description: {1}", Enum.GetName(typeof(System.Net.HttpStatusCode), response.StatusCode), response.StatusDescription), new WebException());
			} else {
				//Receiving the content of response message
				StreamReader reader = null;
				Stream respStream = null;
				try {
					respStream = response.GetResponseStream();
					reader = new StreamReader(respStream, Encoding.UTF8);
					XmlSerializer serializer = new XmlSerializer(typeof(SecurePayResponse), string.Empty);
					responseContent = (SecurePayResponse)serializer.Deserialize(reader);
				} catch (ProtocolViolationException ex) {
					//There is no response stream.
					responseContent = null;
				} catch (InvalidOperationException ex) {
					throw new ApplicationException("Deserialization error.", ex);
				} finally {
					respStream.Close();
					response.Close();
					reader.Close();
				}
				return responseContent;
			}
		}
	}
}
