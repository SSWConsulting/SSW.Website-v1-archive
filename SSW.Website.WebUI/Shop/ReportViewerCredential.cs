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
using System.Net;
using System.Security.Principal;
using Microsoft.Reporting.WebForms;


//<Serializable()> _
//Public NotInheritable Class ReportViewerCredential
//Implements IReportServerCredentials

//Private _userName, _password, _domain As String

//Private Sub New()
//    'does not allow construte without crendentical information provided
//End Sub

//Public Sub New(ByVal userName As String, ByVal password As String, ByVal domain As String)
//    _userName = userName
//    _password = password
//    _domain = domain
//End Sub

//    Public ReadOnly Property ImpersonationUser() As WindowsIdentity _
//            Implements IReportServerCredentials.ImpersonationUser

//    Get
//        'Use the default windows user.  Credentials will be
//        'provided by the NetworkCredentials property.
//        Return Nothing
//    End Get

//    End Property

//    Public ReadOnly Property NetworkCredentials() As ICredentials _
//            Implements IReportServerCredentials.NetworkCredentials

//    Get
//        Return New NetworkCredential(_userName, _password, _domain)
//    End Get
//    End Property

//    Public Function GetFormsCredentials(ByRef authCookie As Cookie, _
//                                        ByRef userName As String, _
//                                        ByRef password As String, _
//                                        ByRef authority As String) _
//                                        As Boolean _
//            Implements IReportServerCredentials.GetFormsCredentials

//        authCookie = Nothing
//        userName = Nothing
//        password = Nothing
//        authority = Nothing

//        'Not using form credentials
//        Return False

//    End Function

//End Class

