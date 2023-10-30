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
using System.Xml.Xsl;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Serialization;

namespace SSW.Website.WebUI.Employees
{

	partial class EmployeesProfile : System.Web.UI.Page
	{

		private const string employeeXMLFileName = "employees.xml";
		private const string employeesProfileXSLFileName = "employeesProfile.xls";
		private const string employeesXSLFileName = "employees.xls";
		private const string employeeBackupXMLFileName = "employeesBackup.xml";
		private const string employeesProfileBackupXSLFileName = "employeesProfileBackup.xls";

		private const string employeesBackupXSLFileName = "employeesBackup.xls";

		protected void Page_Load(object sender, System.EventArgs e)
		{
			//Previous code.
			//If Not IsPostBack Then

			//    If Request.QueryString("EmpID") <> Nothing Then
			//        XmlEmployees.TransformSource = MapPath("employeesProfile.xsl")
			//        Dim tal As New System.Xml.Xsl.XsltArgumentList()
			//        tal.AddParam("EmpID", "", UCase(Request.QueryString("EmpID")))

			//        Dim id As String = Request.QueryString("EmpID")
			//        Dim emp As XmlNode = XmlEmployees.Document.SelectSingleNode("//employee[EmpID='" + id + "']")

			//        Page.Title = (emp.Item("FirstName").InnerText) + " " + (emp.Item("Surname").InnerText)
			//        XmlEmployees.TransformArgumentList = tal

			//    End If
			//End If

			if (!IsPostBack) {
				try {
					XmlEmployees.DocumentSource = employeeXMLFileName;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					// if failed, then load from cache;
					XmlEmployees.Document = mCachedEmployeesXmlDocument;
				}
				object empID = Request.QueryString["EmpID"];
				if ((empID != null)) {
					string empIDString = empID.ToString().Replace("'", "");
					XmlNode emp = XmlEmployees.Document.SelectSingleNode("//employee[EmpID='" + empIDString + "']");

					if ((emp != null)) {
						if ((emp["SharePointURL"] != null)) {
							//Response.Redirect(emp.Item("SharePointURL").InnerText)
							Response.StatusCode = 301;
							Response.AddHeader("Location", emp["SharePointURL"].InnerText);
							return;
						}
					}

					try {
						XmlEmployees.TransformSource = MapPath("employees.xsl");
						//SSW Code Auditor - Ignore next line
					} catch (Exception ex) {
						// if failed, then load from cache;
						XmlEmployees.Transform = mEmployeesXSLTransform;
					}

					//'Redirect to SharePoint Employee Profile

					//Dim empIDString As String = empID.ToString().Replace("'", "")
					//Try
					//    XmlEmployees.TransformSource = MapPath("employeesProfile.xsl")
					//Catch ex As Exception
					//    ' if failed, then load from cache;
					//    XmlEmployees.Transform = mCachedEmployeesProfileXSLTransform
					//End Try

					//Dim tal As New System.Xml.Xsl.XsltArgumentList()
					//tal.AddParam("EmpID", "", UCase(empIDString))

					//Dim emp As XmlNode = XmlEmployees.Document.SelectSingleNode("//employee[EmpID='" + empIDString + "']")
					//If Not emp Is Nothing Then
					//    Page.Title = IIf(emp.Item("FirstName") Is Nothing, empIDString, emp.Item("FirstName").InnerText).ToString() + " " + IIf(emp.Item("Surname") Is Nothing, String.Empty, emp.Item("Surname").InnerText).ToString()
					//End If
					//XmlEmployees.TransformArgumentList = tal
				} else {
					try {
						XmlEmployees.TransformSource = MapPath("employees.xsl");
						//SSW Code Auditor - Ignore next line
					} catch (Exception ex) {
						// if failed, then load from cache;
						XmlEmployees.Transform = mEmployeesXSLTransform;
					}
				}
			}

		}

		#region "Caches for xml/xsl"
		private static System.Xml.XmlDocument mCachedEmployeesXmlDocument = null;
		private static System.Xml.Xsl.XslTransform mCachedEmployeesProfileXSLTransform = null;

		private static System.Xml.Xsl.XslTransform mEmployeesXSLTransform = null;
		private static bool mIsLoadingEmployeeBackupXmlDocument = false;
		private static bool mIsLoadingEmployeeProfileXSLTransform = false;
		private static bool mIsLoadingEmployeeXSLTransform = false;
		private System.Xml.XmlDocument BackupEmployeesXMLDocument {
			get {
				if (mCachedEmployeesXmlDocument == null) {
					LoadEmployeesXmlDocument();
				}
				return mCachedEmployeesXmlDocument;
			}
		}

		private System.Xml.Xsl.XslTransform BackupEmployeesProfileXSLTransform {
			get {
				if (mCachedEmployeesProfileXSLTransform == null) {
					LoadEmployeesProfileXSLTransform();
				}
				
				return mCachedEmployeesProfileXSLTransform;
			}
		}

		private System.Xml.Xsl.XslTransform BackupEmployeesXSLTransform {
			
			get {
				if (mEmployeesXSLTransform == null) {
					LoadEmployeesXSLTransform();
				}
				return mEmployeesXSLTransform;
			}
		}

		private void LoadEmployeesXmlDocument()
		{
			
			if (mIsLoadingEmployeeBackupXmlDocument) {
				return;
			}
			try {
				mIsLoadingEmployeeBackupXmlDocument = true;
				
				mCachedEmployeesXmlDocument.Load(Server.MapPath(employeeXMLFileName));
				//SSW Code Auditor - Ignore next line
			} catch (Exception ex) {
				mCachedEmployeesXmlDocument.Load(Server.MapPath(employeeBackupXMLFileName));
			} finally {
				mIsLoadingEmployeeBackupXmlDocument = false;
			}
		}

		
		private void LoadEmployeesProfileXSLTransform()
		{
			if (mIsLoadingEmployeeProfileXSLTransform) {
				return;
			}
			try {
				
				mIsLoadingEmployeeProfileXSLTransform = true;
				
				mCachedEmployeesProfileXSLTransform.Load(Server.MapPath(employeesProfileXSLFileName));
				//SSW Code Auditor - Ignore next line
			} catch (Exception ex) {
				mCachedEmployeesProfileXSLTransform.Load(Server.MapPath(employeesProfileBackupXSLFileName));
			} finally {
				mIsLoadingEmployeeProfileXSLTransform = false;
			}
		}

		private void LoadEmployeesXSLTransform()
		{
			if (mIsLoadingEmployeeXSLTransform) {
				return;
			}
			try {
				mIsLoadingEmployeeXSLTransform = true;
				mEmployeesXSLTransform.Load(Server.MapPath(employeesXSLFileName));
				//SSW Code Auditor - Ignore next line
			} catch (Exception ex) {
				mEmployeesXSLTransform.Load(Server.MapPath(employeesBackupXSLFileName));
			} finally {
				mIsLoadingEmployeeXSLTransform = false;
			}
		}
		public EmployeesProfile()
		{
			Load += Page_Load;
		}

		#endregion

	}

}
