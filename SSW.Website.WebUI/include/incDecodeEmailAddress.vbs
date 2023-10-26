'This is for item no. 18 avoid mailto spam in Rules to Better Websites Administration
Sub Page_Load(Src As Object, E As EventArgs)
	Dim email As String = ConfigurationSettings.AppSettings("SampleEncodedEmailAddress")
	If Not email Is Nothing Then
		email = BitConverter.ToString(ASCIIEncoding.ASCII.GetBytes(email)).Replace("-", "")
	End If
	linkContact.Visible = True
	linkContact.NavigateUrl = String.Format("javascript:sendEmail('{0}')", email)
End Sub
