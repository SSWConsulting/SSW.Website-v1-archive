<%@ Page Language="c#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="SSW Employees" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">

<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Employees.aspx");
  }
</script>

</asp:Content>

<%--<%
on error resume next
Dim sourceFile,styleFile
	Dim XmlDoc
	Dim xsldoc
	 sourceFile = Server.MapPath("employees.xml")
	styleFile = Server.MapPath("employees.xsl")
	' Response.Write sourceFile
	XmlDoc= server.createObject("MSXML.DOMDocument")
	xsldoc= server.CreateObject("MSXML.DOMDocument")	
	xmldoc.async=false
	xmldoc.load (sourceFile)
	xsldoc.async=false
	xsldoc.load (styleFile)

	If instr(xmldoc.transformnode(xsldoc),"<?xml")> 0 then 'bad formed returns <?xml version="1.0" encoding="UTF-16"?>
		Response.write("Not well formed xml and xsl")
		'response.write(":" & ASC(left(xmldoc.transformnode(xsldoc),1)) & ":")
		'response.write(Chr(60))
	Else 'returns html format - well formed
		Response.Write(xmldoc.transformnode(xsldoc))
	End if

%>

</p>
		</asp:content>--%>