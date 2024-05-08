
<!- SSW Code Auditor - Ignore this file ->
<%@Page Language="C#"%>
<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlClient"%>
<%@Import Namespace="System.Configuration"%>

<script runat="server">

    public void Page_Load(object sender,EventArgs args)
    {
		string keyword=Request["k"];
		if(keyword!=null && keyword.Trim()!="")
		{
            string sql = string.Empty;
            sql="SELECT TOP 10 Suburb, State, Postcode FROM Postcode ";
            sql += " WHERE ";

            sql += "  Suburb LIKE '" + keyword.Trim().Replace("'", "''") + "%'";
            
            String strConnection = ConfigurationManager.AppSettings[Environment.MachineName + "_LocalWebDatabase"].Replace("SSWData2005Web","PostCode").Replace("SSWData2005","PostCode");

            //Response.Write(strConnection);
            //Response.End();
            SqlConnection conn = new SqlConnection(strConnection);
			conn.Open();
			DataTable dt=new DataTable();
			SqlCommand command=new SqlCommand(sql,conn);
			SqlDataAdapter adapter=new SqlDataAdapter(command);
			adapter.Fill(dt);
			conn.Close();
			
			foreach(DataRow row in dt.Rows)
			{
                string Suburb = row["Suburb"].ToString();
                string State = row["State"].ToString();
                string PostCode = row["Postcode"].ToString();
			   Response.Write(@"<a href=""#objectgraph"" onclick=""OnClickSelectedID('" + Suburb + @"');OnClickHideMe('" + Suburb + @"');""><strong>" + row["Suburb"].ToString() + "</strong> :" + State + " " + PostCode + "</a> <br>");

			}
        }

		
    }

</script>

