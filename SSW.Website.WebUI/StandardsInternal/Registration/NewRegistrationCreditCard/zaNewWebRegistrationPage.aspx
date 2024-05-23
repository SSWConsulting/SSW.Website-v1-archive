
<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Unlock Key Generation Page"   %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<br />
<br />
<br />

<body>
 <h2>Please fill in the missing information and click "Generate Key"</h2><br />

        <table style="border-bottom-width:0px; margin-top:50px;" cellpadding="2" cellspacing="0" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
            <tr>
                <td style="width: 170px; height: 26px;"><asp:Label ID="Label1" runat="server" Text="Your PC ID:"></asp:Label></td>
                <td style="height: 26px"><asp:TextBox ID="TextBox1" runat="server" text="24344556" Width=160px></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 170px"><asp:Label ID="Label2" runat="server" Text="Product:" ></asp:Label></td>
                <td><asp:DropDownList ID="DropDown" runat="server" Width=160px> 
                    <asp:ListItem Text="SSW eXtreme Emails!" Value="0" Selected=false></asp:ListItem>
                    <asp:ListItem Text="SSW eXtreme Emails!" Value="1" Selected=true></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 170px"><asp:Label ID="Label3" runat="server" Text="Version:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" Text="14.51" Width=160px></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 170px"><asp:Label ID="Label5" runat="server" text="      "></asp:Label></td>
                <td style="width: 170px"><asp:Label ID="Label6" runat="server" text="      "></asp:Label></td>
            </tr>
        
            <tr>
                <td></td>
                <td align="right"><asp:Button ID="Button1" runat="server" Text="Generate Key" /></td>
            </tr>        
            <tr>
                <td style="width: 170px"><asp:Label ID="Label4" runat="server" Text="Your Unlock Key is:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width=160px BackColor="lightGray"></asp:TextBox></td>
            </tr>
        
        </table>
</body>				

		
			
</asp:content>