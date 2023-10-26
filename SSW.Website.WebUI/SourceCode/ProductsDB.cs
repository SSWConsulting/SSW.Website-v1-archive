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
using System.Data.SqlClient;

namespace SSW.SSWMT
{

	public class ProductsDB
	{

		//*******************************************************
		//
		// ShoppingCartDB.GetItems()
		//
		// The GetItems method returns a DataView containing
		// a forward-only, read-only DataView.  This displays a list of all
		// items within a shopping cart. 
		//
		//*******************************************************
		public DataView GetDownloadList()
		{

			// Create Instance of Connection and Command Object
			SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));
			SqlCommand myCommand = new SqlCommand("procwwwDownloadSelect", myConnection);

			// Mark the Command as a SPROC
			myCommand.CommandType = CommandType.StoredProcedure;

			// Execute the command
			myConnection.Open();
			SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);

			DataSet result = new DataSet();
			sqlDA.Fill(result, "Table");

			myConnection.Close();

			// Return the dataset result
			return result.Tables["Table"].DefaultView;


		}
		//Public Function GetDownloadList() As DataSet

		//    ' Create Instance of Connection and Command Object
		//    Dim myConnection As New SqlConnection(SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))
		//    Dim myCommand As New SqlCommand("procwwwDownloadSelect2", myConnection)

		//    ' Mark the Command as a SPROC
		//    myCommand.CommandType = CommandType.StoredProcedure

		//    ' Execute the command
		//    myConnection.Open()
		//    Dim sqlDA As New SqlDataAdapter(myCommand)

		//    Dim result As New DataSet()
		//    sqlDA.Fill(result)
		//    result.Tables(0).TableName = "Orders"
		//    result.Tables(1).TableName = "OrderDetail"

		//    ' Return the dataset result
		//    Return result

		//End Function


		//Public Overloads Function ProductCategorySelect(ByVal pCategoryID As String) As DataSet
		//    Dim result As New DataSet()

		//    ' Create Instance of Connection and Command Object
		//    Dim myConnection As New SqlConnection(SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))
		//    Dim myCommand As New SqlCommand("procwwwProductCategorySelect", myConnection)

		//    ' Mark the Command as a SPROC
		//    myCommand.CommandType = CommandType.StoredProcedure

		//    If pCategoryID <> "" Then
		//        ' Add Parameters to SPROC
		//        Dim parameterCategoryID As New SqlParameter("@pCategoryID", SqlDbType.NVarChar, 50)
		//        parameterCategoryID.Value = pCategoryID
		//        myCommand.Parameters.Add(parameterCategoryID)
		//    End If

		//    ' Execute the command
		//    myConnection.Open()
		//    Dim sqlDA As New SqlDataAdapter(myCommand)  'SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

		//    sqlDA.Fill(result, "Table")

		//    ' Return the dataset result
		//    Return result

		//End Function
		//Public Overloads Function ProductCategorySelect() As DataSet
		//    Return ProductCategorySelect("")
		//End Function

		//    Public Function ProductSummarySelect(ByVal pCategoryID As String) As DataSet
		//        Dim result As New DataSet()

		//        ' Create Instance of Connection and Command Object
		//        Dim myConnection As New SqlConnection(SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))
		//        Dim myCommand As New SqlCommand("procwwwProductSummarySelect", myConnection)

		//        ' Mark the Command as a SPROC
		//        myCommand.CommandType = CommandType.StoredProcedure

		//        ' Add Parameters to SPROC
		//        Dim parameterCategoryID As New SqlParameter("@pCategoryID", SqlDbType.NVarChar, 50)
		//        parameterCategoryID.Value = pCategoryID
		//        myCommand.Parameters.Add(parameterCategoryID)

		//        ' Execute the command
		//        myConnection.Open()
		//        Dim sqlDA As New SqlDataAdapter(myCommand)  'SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

		//        sqlDA.Fill(result, "Table")

		//        ' Return the dataset result
		//        Return result
		//    End Function

	}

}
