<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="Newsletter.ascx.cs" Inherits=".Newsletter" %>
<script type="text/javascript" language="javascript">
    $(function () {
        $(document).ready(function () {
            $("").click(function () {
                location = "herpderp" + $("").val();
            });
        });
    });
</script>

<div id="Newsletter">
    <h6>Newsletter</h6>
    <div class="section">
        Join our newsletter and receive updates, tips, and special deals on SSW events.<br />

    <div class="input-group">
        <asp:TextBox ID="newsletterEmailTextBox" runat="Server" CssClass="form-control" Type="Email" value="Your Email"
            onblur="if (value == '') {value = 'Your Email'}" onfocus="if (value == 'Your Email') {value =''}"></asp:TextBox>
      <span class="input-group-btn">
          <asp:Button ID="newsletterSignUpButton" runat="Server" Text="Go" CssClass="btn btn-primary" ValidationGroup="Newsletter"></asp:Button>
      </span>
    </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="newsletterEmailTextBox"
            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Invalid email address"
            Font-Size="X-Small" ValidationGroup="Newsletter"></asp:RegularExpressionValidator><br />
        <a href="/ssw/netug/sswupdateprevious.aspx">View Newsletter Archive</a>
    </div>
</div>
