<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SQL Server 2008 for Developers and BI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<%--    <div id="content-container" style="display:block;height:100%;">--%>
        <div id="container" style="height:450px;">
            <div id="content">
                <h1>
                    Course resources for students</h1>
                <p>
                    Welcome! This page will be updated with the latest course materials, as you progress
                    through the sessions.</p>
                <table width="100%" cellspacing="1" cellpadding="4" bgcolor="#000000">
                    <tr bgcolor="#D9D9D9">
                        <td>
                            <b>Part</b>
                        </td>
                        <td>
                            <b>Session</b>
                        </td>
                        <td>
                            <b>Hands-on Lab</b>
                        </td>
                        <td>
                            <b>Slides</b>
                        </td>
                        <td>
                            <b>Resources</b>
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            A
                        </td>
                        <td>
                            1: SQL Server 2008 Management Studio
                        </td>
                        <td align="center"><img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="01_ManagementStudio_Lab.doc"/></td>
                        <td align="center"><img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="01_ManagementStudio_v6.ppt"/></td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            2: T-SQL Enhancements
                        </td>
                        <td align="center"><img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="02_TSQL_Enhancements.doc"/>
                        </td>
                        <td align="center"><img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="02_TSQL_v7.ppt"/>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            3: High Availability
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="03_SQL2008_HighAvailability_Lab_v2-13.doc"/>
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="03_SQL2008_HighAvailability_v3.ppt"/>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            4: CLR Integration
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="04_SQLCLR_Lab_v3-1.doc"/>
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="04_SQLCLR_v5.ppt"/>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            5: Full Text Search
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="05_SQLFullTextSearch_Lab_v2.docx"/>
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16"  alt="05_SQLFullTextSearch_v3.ppt"/>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td rowspan="5">
                            B
                        </td>
                        <td>
                            1: SSIS and Creating a Data Warehouse
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="01_SSIS_Lab_v3.doc"/>
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="01_SSIS_v3.ppt"/>
                        </td>
                        <td>
                            01_DWCreateScript.sql
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            2: OLAP - Creating Cubes and Cube Issues
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" alt="02_OLAP_Lab_v4.doc"/>
                        </td>
                        <td align="center">
                           
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" alt="02_OLAP_v2.ppt"/>
                        </td>
                        <td>
                           PopulateDW.zip
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            3: Reporting Services
                        </td>
                        <td align="center">
                            <a href="/ssw/redirect/Events/2009UTSSQL_03RS_DOC.htm">
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" /></a>
                        </td>
                        <td align="center">
                            <a href="/ssw/redirect/Events/2009UTSSQL_03RS_PPT.htm">
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" /></a>
                        </td>
                        <td>
                           ReportingServices_Module2_Query1_v1.txt
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            4: Alternative Cube Browsers
                        </td>
                        <td align="center">
                            <%--<a href="resources/BI/04_Other/04_Other_v1.doc">
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" /></a>--%>
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td>
                            5: Data Mining
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconDoc.gif" width="16" height="16" />
                        </td>
                        <td align="center">
                          
                                <img border="0" src="/ssw/Images/IconPPT.gif" width="16" height="16" />
                        </td>
                        <td>
                           Movie Sample
                        </td>
                    </tr>
                </table>
                <h2>
                    Acknowledgements</h2>
                <ul>
                    <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></li>
                    <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a></li>
                    <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a></li>
                    <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a></li>
                     <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Peter Gfader</a></li>
                </ul>
            </div>
        </div>
<%--    </div>--%>
</asp:Content>
