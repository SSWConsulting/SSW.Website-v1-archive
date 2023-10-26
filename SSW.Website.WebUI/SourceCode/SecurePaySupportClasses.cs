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
using System.Xml.Serialization;

namespace SSW.SecurePay
{
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = ""), System.Xml.Serialization.XmlRootAttribute("SecurePayMessage")]
	public class SecurePayRequest
	{
		private MessageInfo messageInfoField;
		private MerchantInfo merchantInfoField;
		private string requestTypeField;

		private Payment paymentField;
		public SecurePayRequest()
		{
			this.messageInfoField = new MessageInfo();
			this.merchantInfoField = new MerchantInfo();
			this.requestTypeField = "Payment";
			this.paymentField = new Payment();
		}

		public MessageInfo MessageInfo {
			get { return this.messageInfoField; }
			set { this.messageInfoField = value; }
		}

		public MerchantInfo MerchantInfo {
			get { return this.merchantInfoField; }
			set { this.merchantInfoField = value; }
		}

		public string RequestType {
			get { return this.requestTypeField; }
			set { this.requestTypeField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public Payment Payment {
			get { return this.paymentField; }
			set { this.paymentField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class MessageInfo
	{
		private string messageIDField;
		private string messageTimestampField;
		private string timeoutValueField;

		private string apiVersionField;
		public MessageInfo() : base()
		{
			this.timeoutValueField = "60";
			this.apiVersionField = "xml-4.2";
		}

		public string messageID {
			get { return this.messageIDField; }
			set { this.messageIDField = value; }
		}

		public string messageTimestamp {
			get { return this.messageTimestampField; }
			set { this.messageTimestampField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string timeoutValue {
			get { return this.timeoutValueField; }
			set { this.timeoutValueField = value; }
		}

		public string apiVersion {
			get { return this.apiVersionField; }
			set { this.apiVersionField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class Status
	{
		private string statusCodeField;

		private string statusDescriptionField;
		public string statusCode {
			get { return this.statusCodeField; }
			set { this.statusCodeField = value; }
		}

		public string statusDescription {
			get { return this.statusDescriptionField; }
			set { this.statusDescriptionField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = ""), System.Xml.Serialization.XmlRootAttribute("SecurePayMessage", Namespace = "", IsNullable = false)]
	public class SecurePayResponse
	{
		private MessageInfo messageInfoField;
		private MerchantInfo merchantInfoField;
		private string requestTypeField;
		private Status statusField;

		private Payment paymentField;
		public virtual MessageInfo MessageInfo {
			get { return this.messageInfoField; }
			set { this.messageInfoField = value; }
		}

		public virtual MerchantInfo MerchantInfo {
			get { return this.merchantInfoField; }
			set { this.merchantInfoField = value; }
		}

		public virtual string RequestType {
			get { return this.requestTypeField; }
			set { this.requestTypeField = value; }
		}

		public virtual Status Status {
			get { return this.statusField; }
			set { this.statusField = value; }
		}

		public virtual Payment Payment {
			get { return this.paymentField; }
			set { this.paymentField = value; }
		}
	}

	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class MerchantInfo
	{
		private string merchantIDField;

		private string passwordField;
		public string merchantID {
			get { return this.merchantIDField; }
			set { this.merchantIDField = value; }
		}

		public string password {
			get { return this.passwordField; }
			set { this.passwordField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class Payment
	{

		private PaymentTxnList txnListField;
		public PaymentTxnList TxnList {
			get { return this.txnListField; }
			set { this.txnListField = value; }
		}
	}

	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
	public class PaymentTxnList
	{
		private Txn txnField;

		private string countField;
		public PaymentTxnList() : base()
		{
			this.countField = "1";
		}

		public Txn Txn {
			get { return this.txnField; }
			set { this.txnField = value; }
		}

		[System.Xml.Serialization.XmlAttributeAttribute(DataType = "integer")]
		public string count {
			get { return this.countField; }
			set { this.countField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class Txn
	{
		private string txnTypeField;
		private string txnSourceField;
		private string amountField;
		private string currencyField;
		private string purchaseOrderNoField;
		private string approvedField;
		private string responseCodeField;
		private string responseTextField;
		private string settlementDateField;
		private string txnIDField;
		private CreditCardInfo creditCardInfoField;

		private string idField;
		public Txn() : base()
		{
			this.txnTypeField = "0";
			this.txnSourceField = "23";
			this.currencyField = "AUD";
			this.idField = "1";
		}

		[System.Xml.Serialization.XmlElementAttribute(DataType = "integer")]
		public string txnType {
			get { return this.txnTypeField; }
			set { this.txnTypeField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(DataType = "integer")]
		public string txnSource {
			get { return this.txnSourceField; }
			set { this.txnSourceField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(DataType = "integer")]
		public string amount {
			get { return this.amountField; }
			set { this.amountField = value; }
		}

		public string currency {
			get { return this.currencyField; }
			set { this.currencyField = value; }
		}

		public string purchaseOrderNo {
			get { return this.purchaseOrderNoField; }
			set { this.purchaseOrderNoField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string approved {
			get { return this.approvedField; }
			set { this.approvedField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string responseCode {
			get { return this.responseCodeField; }
			set { this.responseCodeField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string responseText {
			get { return this.responseTextField; }
			set { this.responseTextField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string settlementDate {
			get { return this.settlementDateField; }
			set { this.settlementDateField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string txnID {
			get { return this.txnIDField; }
			set { this.txnIDField = value; }
		}

		public CreditCardInfo CreditCardInfo {
			get { return this.creditCardInfoField; }
			set { this.creditCardInfoField = value; }
		}

		[System.Xml.Serialization.XmlAttributeAttribute(DataType = "integer")]
		public string ID {
			get { return this.idField; }
			set { this.idField = value; }
		}
	}
	//SSW Code Auditor - Ignore next line 
	[System.SerializableAttribute(), System.Xml.Serialization.XmlTypeAttribute(Namespace = "")]
	public class CreditCardInfo
	{
		private string cardNumberField;
		private string cvvField;
		private string panField;
		private string expiryDateField;
		private string cardTypeField;

		private string cardDescriptionField;
		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string cardNumber {
			get { return this.cardNumberField; }
			set { this.cardNumberField = value; }
		}

		///<remarks/>
		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string cvv {
			get { return this.cvvField; }
			set { this.cvvField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string pan {
			get { return this.panField; }
			set { this.panField = value; }
		}

		public string expiryDate {
			get { return this.expiryDateField; }
			set { this.expiryDateField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string cardType {
			get { return this.cardTypeField; }
			set { this.cardTypeField = value; }
		}

		[System.Xml.Serialization.XmlElementAttribute(IsNullable = false)]
		public string cardDescription {
			get { return this.cardDescriptionField; }
			set { this.cardDescriptionField = value; }
		}
	}
}
