<%-- 
Note:
- When deploy to SharePoint, you need to enable the following code to load assembly from GAC
- When you updated the Version in AssemblyInfo, make sure you update the Version=X.XX.X.X accordingly 
- If you want to debug, you need to disable the 1st line 
--%>
<%@ Assembly Name=" SSW.TFSSmashingBarrier.UserControls.TFSQuery, Version=2.19.0.0, Culture=neutral, PublicKeyToken=bb7aec6a692a93e6" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TfsQuery.ascx.cs" Inherits="SSW.TFSSmashingBarrier.UserControls.TfsQuery"  Debug="true" %>    

<link rel="Stylesheet" href="/ssw/components/TFSSB/style/TFSQuery.css" />
<%--<script src="/ssw/components/TFSSB/scripts/TFSQuery.js" type="text/javascript"></script> --%>

<script type="text/javascript">
    function getClientId() {

        var paraId2 = '<%= newItemLink.ClientID %>';
        var paraId3 = '<%= ActiveTasksPersonA.ClientID %>';
        var paraId4 = '<%= CompletedTasksPersonA.ClientID %>';

        return { NewLinkClientID: paraId2, ActiveTasksId: paraId3, CompletedTasksId: paraId4 }; 

    }
</script>

<script runat="server">
    public override bool Visible
    {
        get
        {
            return base.Visible;
        }
        set
        {
            base.Visible = value;
            this.divContainer.Visible = value;    
        }
    }
   
</script>
<div id="divContainer" runat="server">
    <div id="tfssb_area">
        <div id="tfssb_Bar">
         <span><a href="https://sharepoint.ssw.com.au/Products/TFSSmashingBarrier/">SSW TFS Smashing Barrier</a></span>
                    <span id="tfssb_btnControl" class="tfssb_btn_restore" onclick="HideShowBox();">
                    </span>
        </div>
        <div id="tfssb_box">

        </div>
    </div>
</div>


