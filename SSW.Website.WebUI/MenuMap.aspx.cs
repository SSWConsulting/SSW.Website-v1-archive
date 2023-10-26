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



namespace SSW.Website.WebUI
{


	partial class MenuMap : System.Web.UI.Page
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

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			//Dim connection As New SqlConnection(SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))

			//Dim sqlStr As String
			//sqlStr = "SELECT wwwMenugroup.text, wwwMenuPages.text, wwwMenuPages.Location  "
			//sqlStr &= "FROM wwwMenuGroup INNER JOIN wwwMenuPages ON wwwMenuGroup.id = wwwMenuPages.GroupID "
			//sqlStr &= "WHERE (wwwMenuPages.TimePROOnline = 0) "
			//sqlStr &= "ORDER BY wwwMenuGroup.sequence, wwwMenuPages.SortSequence "
			//sqlStr &= "for xml auto"

			//'connection.Open()

			//'Dim command As New SqlCommand(sqlStr, connection)
			//'Dim xmlReader As System.Xml.XmlReader
			//'Dim sxml As String
			//'xmlReader = command.ExecuteXmlReader()
			//'xmlReader.Close()
			//'Console.Write(sxml)

			//'Dim doc As System.Xml.XmlDocument = New System.Xml.XmlDocument()
			//'doc.Load(XmlReader)

			//'Dim trans As System.Xml.Xsl.XslTransform = New System.Xml.Xsl.XslTransform()
			//'trans.Load(Server.MapPath("menuMapStyle.xsl"))
			//'Xml1.Document = doc
			//'Xml1.Transform = trans

			//'connection.Close()

			//Try
			//    connection.Open()
			//    Dim command As New SqlCommand(sqlStr, connection)
			//    Dim myDataReader As SqlDataReader
			//    myDataReader = command.ExecuteReader()
			//    Dim sb As New StringBuilder

			//    sb.Append("<root>")
			//    Do While myDataReader.Read()
			//        sb.Append(myDataReader.GetString(0))
			//    Loop
			//    sb.Append("</root>")

			//    Dim doc As System.Xml.XmlDocument = New System.Xml.XmlDocument
			//    doc.LoadXml(sb.ToString)
			//    myDataReader.Close()
			//    doc.LoadXml("ssw.sitemap")
			//    Dim trans As System.Xml.Xsl.XslTransform = New System.Xml.Xsl.XslTransform
			//    trans.Load(Server.MapPath("menuMapStyle.xsl"))

			//    'Commented by FW, 17/08/2006 - Error Code.
			//    Xml1.Document = doc
			//    Xml1.Transform = trans

			//Catch ex As Exception
			//    ' Please handle this exception
			//    Throw ex
			//Finally

			//    connection.Close()

			//End Try




		}
		public MenuMap()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
