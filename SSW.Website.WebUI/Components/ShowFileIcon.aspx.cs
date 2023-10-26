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
using SSW.Website.Common;

namespace SSW.Website.WebUI.Components
{

	partial class ShowFileIcon : System.Web.UI.Page
	{


		protected void Page_Load(object sender, System.EventArgs e)
		{

			if (Request["FileFullName"] != string.Empty) {
				string FileFullName = string.Format("{0}", Request["FileFullName"]);

				if (!System.IO.File.Exists(FileFullName)) {
					if (FileFullName.IndexOf(":") > 0) {
						FileFullName = this.Server.MapPath("\\ssw\\images\\blank.gif");
					} else {
						FileFullName = this.Server.MapPath(FileFullName);
					}
					if (!System.IO.File.Exists(FileFullName)) {
						return;



					}
				}
				//If Not System.IO.File.Exists(FileFullName) Then
				//    FileFullName = Me.Server.MapPath(FileFullName)
				//    If Not System.IO.File.Exists(FileFullName) Then
				//        Return
				//    End If
				//End If

				string Size = string.Format("{0}", Request["Size"]);
				IconSize IconSizeUsed = (IconSize)Interaction.IIf(Size.ToLower() == "large" || Size == string.Empty, IconSize.Large, IconSize.Small);
				Response.ClearHeaders();
				Response.ClearContent();
				System.Drawing.Icon icon = null;

				System.IO.FileInfo fileinfo = new System.IO.FileInfo(FileFullName);
				try {
					icon = IconHandler.GetAssociatedIcon(fileinfo.FullName, IconSizeUsed);

				} catch (HttpUnhandledException ex) {
					//System.Web.HttpUnhandledException' was thrown. ---> System.ArgumentException: Win32 handle that was passed to Icon is not valid or is the wrong type.
					string filePath = Server.MapPath("~/images/file.gif");
					//Request.ServerVariables("APPL_PHYSICAL_PATH") & "\data\" & Request("path")
					byte[] data = null;
					System.IO.FileStream strm = null;
					int length = 0;

					if (System.IO.File.Exists(filePath)) {
						strm = System.IO.File.OpenRead(filePath);
						length = System.Convert.ToInt32(strm.Length);
						data = new byte[length + 1];
						strm.Read(data, 0, length);
						strm.Close();
					} else {
						return;
					}
					Response.Clear();
					Response.ContentType = "image/gif";
					Response.AddHeader("Content-Disposition", "inline; filename=" + filePath);
					Response.OutputStream.Write(data, 0, length);
					Response.End();

				}


				if ((icon != null)) {
					Response.ContentType = "image/x-icon";
					string TempFileName = Interaction.IIf(!(fileinfo.Extension == string.Empty), fileinfo.Name.Replace(fileinfo.Extension, ".ico"), fileinfo.Name + ".ico").ToString();
					
					Response.AppendHeader("Content-Disposition", string.Format("inline;filename=\"{0}\"", TempFileName));
					icon.Save(Response.OutputStream);
					icon.Dispose();
				}


			}
		}
		public ShowFileIcon()
		{
			Load += Page_Load;
		}

		//Private Function ConvertIconToBitmap(ByVal icon As Icon, ByVal transparant As Boolean) As Bitmap
		//    If Not icon Is Nothing Then
		//        Dim bmp As Bitmap
		//        bmp = CreateBitmap(icon)
		//        bmp.MakeTransparent()
		//        Return bmp
		//    End If
		//End Function
		//Private Function CreateBitmap(ByVal icon As Icon) As Bitmap
		//    Dim gDest As Graphics
		//    Dim hdcDest As IntPtr
		//    Dim hdcSrc As Integer
		//    Dim hWnd As Integer = icon.Handle.ToInt32
		//    CreateBitmap = New Bitmap(icon.Width, icon.Height)
		//    gDest = gDest.FromImage(CreateBitmap)
		//    hdcSrc = icon.Handle.ToInt32
		//    hdcDest = gDest.GetHdc
		//    Win32.BitBlt(hdcDest.ToInt32, 0, 0, icon.Width, icon.Height, hdcSrc, 0, 0, Win32.SRCCOPY)
		//    gDest.ReleaseHdc(hdcDest)
		//    Win32.ReleaseDC(hWnd, hdcSrc)
		//End Function
	}

}
