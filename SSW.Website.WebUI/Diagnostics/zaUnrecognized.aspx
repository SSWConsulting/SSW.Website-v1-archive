<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Unrecognized.aspx.cs" Inherits=".Unrecognized" EnableEventValidation="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Diagnostics Unrecognized Version Log"%>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
   <div class="pagecontent">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" CssClass="clsSSWTableForDiagnostics">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="FileVersion" HeaderText="File Version" 
                    SortExpression="FileVersion" />
                <asp:BoundField DataField="FileDefinitionName" HeaderText="File Definition Name" 
                    SortExpression="FileDefinitionName" />
                <asp:BoundField DataField="FilePath" HeaderText="File Path" 
                    SortExpression="FilePath" />
                <asp:BoundField DataField="SendUserName" HeaderText="Send UserName" 
                    SortExpression="SendUserName" />
                <asp:BoundField DataField="SendComputerName" HeaderText="Send ComputerName" 
                    SortExpression="SendComputerName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>" 
            
            SelectCommand="SELECT [ProductName], [FileVersion], [FileDefinitionName], [FilePath], [SendUserName], [SendComputerName] FROM [UnrecognizedVersionLog] WHERE [SendDate] = @SendDate">
            <SelectParameters>
                <asp:QueryStringParameter Name="SendDate" QueryStringField="Date" Type="string" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
