<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" AutoEventWireup="false"
    CodeBehind="ProductDetails.aspx.cs" Inherits="SSW.Website.WebUI.Diagnostics.ProductDetails"
    Title="Diagnostics - Update Your Product" %>

<%@ Register TagPrefix="ssw" TagName="DiagnosticsVoteBox" Src="~/Components/DiagnosticsVoteBox.ascx" %>
<%@ Register TagPrefix="sswct" TagName="InfoBoxLink" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <h1>Diagnostics - Update Your Product</h1>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="div_InvalidHint" runat="server" visible="false" style="color: Red; margin: 20px 0;">
        Invalid Product Input. Please recheck and try again.
    </div>
    <div id="divContent" runat="server">
        <br />
        <br />
        <sswct:InfoBoxLink runat="server" Width="25%" Css="interInfoBoxSide" Text="<h1>Internal Notes</h1><b>Page Owner: </b><a href='http://intranet.ssw.com.au/Employees/ProductManagers.aspx?FilterField1=LinkTitle&FilterValue1=Diagnostics'>Wilson, David</a><br/><br/><b>Note:</b> As per <a href='/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#ReportOwner'>Report/Page Owner rule</a><br/><b>Note:</b> As per <a href='/ssw/Standards/templates/SSWWebTemplate.aspx'>SSW Web Template rule</a> "></sswct:InfoBoxLink>
        <br />
        <asp:UpdatePanel ID="BasketPanel" runat="server">
            <ContentTemplate>
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource3" Width="379px" CellPadding="0">
                    <EmptyDataTemplate>
                    </EmptyDataTemplate>

                    <ItemTemplate>
                        <h3>Your Version Details</h3>
                        <table class="product-details" width="650">

                            <tr>
                                <th scope="row">Product Name</th>
                                <td colspan="2">
                                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <th scope="row">Version Number</th>
                                <td>
                                    <asp:Label ID="VersionNumberLabel" runat="server" Text='<%# Bind("VersionNumber") %>'></asp:Label></td>
                                <td align="right">
                                    <asp:Label ID="UpdateRecommendation" Style="color: Red;" runat="server" Visible="true" /><asp:Image ID="VersionIndicator1" runat="server" Width="16" /></td>
                            </tr>
                            <tr>
                                <th scope="row">Version Description</th>
                                <td colspan="2">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("VersionDescription") %>'></asp:Label></td>
                            </tr>

                            <tr>
                                <th scope="row">Manufacturer Name</th>
                                <td colspan="2">
                                    <asp:Label ID="ManufacturerNameLabel" runat="server" Text='<%# Bind("ManufacturerName") %>'></asp:Label></td>
                            </tr>

                        </table>
                    </ItemTemplate>

                </asp:FormView>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
                    SelectCommand="SELECT     Product.ProductName, Product.ProductDescription, ProductVersion.VersionDescription, ProductVersion.VersionNumber, 
        ProductVersion.VersionRequiredOS, Manufacturer.ManufacturerName, Product.ProductLatest FROM Manufacturer INNER JOIN  
        ProductGroup ON Manufacturer.ManufacturerID = ProductGroup.ManufacturerID INNER JOIN 
        Product ON ProductGroup.GroupID = Product.GroupID INNER JOIN 
        ProductVersion ON Product.ProductID = ProductVersion.ProductID 
        WHERE (ProductVersion.VersionNumber like @VersionID+'%') and (Product.ProductID=@ProductID)">
                    <SelectParameters>
                        <%--<asp:QueryStringParameter DefaultValue="22" Name="VersionID" QueryStringField="VID" Type="String" />--%>
                        <asp:ControlParameter ControlID="HiddenFieldVID" DefaultValue="22" Name="VersionID" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID" PropertyName="Value" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp;&nbsp;     
           <br />
                <asp:HiddenField ID="HiddenFieldPIDCount" runat="server" />
                <asp:HiddenField ID="HiddenFieldUIfoldStatus" runat="server" />
                <asp:HiddenField ID="HiddenFieldDownloadfoldStatus" runat="server" />
                <asp:HiddenField ID="HiddenFieldPID" runat="server" Value="22" />
                <asp:HiddenField ID="HiddenFieldVID" runat="server" Value="22" />

                <asp:Panel ID="PanelCount" runat="server">
                    <p>Two Options for you to update it:</p>
                    <div style="margin-bottom: 20px;">
                        <asp:ImageButton ID="ImgBtnUI" runat="server" ImageUrl="Images\UpdateUI\expand.jpg" />
                        <asp:LinkButton ID="LinkButtonUI" runat="server" Text=" Use the applications UI (Show Details...)"></asp:LinkButton>
                        [<asp:Label ID="LabelUI" runat="server" Text='LabelUI'></asp:Label>](Recommended)
               
               <dl class="image">
                   <dt>
                       <asp:Image ID="ImageUI" runat="server" Visible='false' /></dt>
               </dl>
                    </div>

                    <asp:ImageButton ID="ImgBtnDownload" runat="server" ImageUrl="Images\UpdateUI\expand.jpg" />
                    <asp:LinkButton ID="LinkButtonDownload" runat="server" Text="Download and install (Show Details...)"></asp:LinkButton>
                    [<asp:Label ID="LabelDownload" runat="server" Text='LabelDownload'></asp:Label>]    
                </asp:Panel>

                <asp:FormView ID="FormView2" runat="server" Caption="<b>Update your product</b>" CaptionAlign="Left" DataSourceID="SqlDataSource1" Width="463px" Height="0px" CellPadding="0">

                    <EmptyDataTemplate>

                        <asp:Label ID="lblEmptyUpdate" runat="server" Text=""></asp:Label>

                    </EmptyDataTemplate>

                    <ItemTemplate>
                        <table class="product-update" width="500">
                            <tr>
                                <th colspan="2">This is a new update - Update Your Product</th>
                            </tr>
                            <tr>
                                <th scope="row">Product Name</td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                    <b><%# GetWarningString(DataBinder.Eval(Container.DataItem, "ProductDescription"), DataBinder.Eval(Container.DataItem, "VersionDescription"))%></b>
                </td>
                            </tr>
                            <tr>
                                <th scope="row">Latest Version</th>
                                <td>
                                    <asp:Label ID="VersionLatestLabel" runat="server" Text='<%# Bind("VersionLatest") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <%--<asp:BoundField DataField="VersionDescription" HeaderText="Version Description" SortExpression="VersionDescription" />--%>
                 Latest Version Description</th>
                                <td>
                                    <asp:Label ID="VersionDescriptionLabel" runat="server" Text='<%# Bind("VersionDescription") %>'></asp:Label>
                                    <%--<strong>Version Description</strong></td><td>
                 Text='<%# Bind("VersionDescription") %>' TextMode="MultiLine" Width="500px"></asp:TextBox>--%>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Update Url</th>
                                <td>
                                    <asp:HyperLink ID="VersionUpdateUrlLabel" runat="server" ImageUrl="Images\FreeDownload.gif" NavigateUrl='<%#Bind("VersionUpdateUrl")%>' /></td>
                            </tr>
                            <tr>
                                <th scope="row">Date Updated</th>
                                <td>
                                    <asp:Label ID="DateUpdatedLabel" runat="server" Text='<%# Bind("DateCreated") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <th scope="row">Submitted By</th>
                                <td>
                                    <asp:Label ID="SubmittedByLabel" runat="server" Text='<%# Bind("CreatedBy") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </ItemTemplate>

                </asp:FormView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
                    SelectCommand="SELECT Product.ProductName, 
    ProductVersion.VersionNumber,Product.ProductDescription, ProductVersion.VersionLatest, B.VersionDescription, B.VersionUpdateUrl,B.DateCreated,B.CreatedBy 
    FROM Product INNER JOIN ProductVersion ON Product.ProductID = ProductVersion.ProductID INNER JOIN ProductVersion AS B
		ON ProductVersion.VersionLatest= B.VersionNumber AND ProductVersion.ProductID=B.ProductID AND ProductVersion.FileDefinitionID=B.FileDefinitionID
    WHERE (ProductVersion.VersionNumber LIKE @VersionID + '%') and (Product.ProductID=@ProductID)">
                    <SelectParameters>
                        <%--<asp:QueryStringParameter DefaultValue="" Name="VersionID" QueryStringField="VID" Type="String" />--%>
                        <asp:ControlParameter ControlID="HiddenFieldVID" DefaultValue="22" Name="VersionID" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID" PropertyName="Value" Type="Int32" />
                    </SelectParameters>

                </asp:SqlDataSource>
                &nbsp;
        <br />

                <asp:FormView ID="FormView3" runat="server" Caption="<b>New Release Update</b>" CaptionAlign="Left"
                    DataSourceID="SqlDataSource2" Width="500px" Height="0px" CellPadding="0">

                    <EmptyDataTemplate>

                        <asp:Label ID="lblEmptyUpdate" runat="server" Text=""></asp:Label>

                    </EmptyDataTemplate>

                    <ItemTemplate>

                        <asp:Label ID="newReleaseLabel" runat="server" Text="New Release Available (major update) " />

                        <table class="product-update" width="500">
                            <tr>
                                <th colspan="2">This is a new release - Update Your Product</th>
                            </tr>
                            <tr>
                                <th scope="row">Product Name</th>
                                <td>
                                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                    <!-- add warning string, by Luke Chou, 25/08/2010 -->
                                    <b><%# GetWarningString(DataBinder.Eval(Container.DataItem, "ProductDescription"), DataBinder.Eval(Container.DataItem, "VersionDescription"))%></b></td>
                            </tr>
                            <tr>
                                <th scope="row">Version Number</th>
                                <td>
                                    <asp:Label ID="VersionNumberLabel" runat="server" Text='<%# Bind("VersionNumber") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <th scope="row">Latest Version</th>
                                <td>
                                    <asp:Label ID="VersionLatestLabel" runat="server" Text='<%# Bind("VersionLatest") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <th scope="row">Version Description</th>
                                <td>
                                    <asp:Label ID="VersionDescriptionLabel" runat="server" Text='<%# Bind("VersionDescription") %>'></asp:Label></td>
                            </tr>

                            <tr>
                                <th scope="row">Update Url</th>
                                <td>
                                    <asp:HyperLink ID="VersionUpdateUrlLabel" runat="server" ImageUrl="Images\FreeDownload.gif" NavigateUrl='<%#Bind("VersionUpdateUrl")%>' /></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
                    SelectCommand="&#13;&#10;&#13;&#10;SELECT TOP 1 Product.ProductID,Product.ProductName,Product.ProductDescription, ProductVersion.VersionDescription, &#13;&#10;&#9;ProductVersion.VersionNumber,Product.ProductLatest, ProductVersion.VersionLatest,&#13;&#10;&#9;ProductVersion.VersionUpdateUrl&#13;&#10;FROM Product INNER JOIN &#13;&#10;        ProductVersion ON Product.ProductID = ProductVersion.ProductID INNER JOIN&#13;&#10;     (SELECT P.GroupID, PV.VersionID, P.ProductID&#13;&#10;&#9;&#9;FROM Product AS P INNER JOIN ProductVersion AS PV ON P.ProductID=PV.ProductID &#13;&#10;&#9;&#9;WHERE (PV.VersionNumber LIKE @VersionID+'%') AND (P.ProductID=@ProductID)) AS A&#13;&#10;     ON Product.GroupID = A.GroupID&#13;&#10;WHERE Product.ProductLatest='Yes' AND ProductVersion.VersionLatest='Yes' AND Product.ProductID <> A.ProductID&#13;&#10;ORDER BY ProductVersion.VersionNumber DESC, ProductVersion.VersionID DESC&#13;&#10;">
                    <SelectParameters>
                        <%--<asp:QueryStringParameter DefaultValue="" Name="VersionID" QueryStringField="VID"
                    Type="String" />--%>
                        <asp:ControlParameter ControlID="HiddenFieldVID" DefaultValue="22" Name="VersionID" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID"
                            PropertyName="Value" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <br />
                <h3>Version History</h3>
                <asp:Label ID="lblUpdateWindows" runat="server" Text="[Notice: This is a Microsoft software. You may get the latest version from <a href='http://update.microsoft.com/update'>Microsoft Update</a>.]">
        
                </asp:Label>

                <table class="product-history" width="650">
                    <tr>
                        <td>
                            <asp:GridView ID="gridHistory" runat="server" GridLines="Horizontal" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                                <Columns>
                                    <asp:BoundField HeaderText="Date (SSW Informed)" DataField="DateCreated" DataFormatString="{0:dd-MM-yyyy}" />
                                    <%-- <asp:BoundField HeaderText="Product Name" DataField="VersionDescription" />--%>
                                    <asp:TemplateField HeaderText="Product Name">
                                        <ItemTemplate>
                                            <span><%#Eval("VersionDescription")%></span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Product Version" DataField="VersionNumber" ItemStyle-Width="300px" HeaderStyle-Width="300px" />
                                    <%-- added Submitted by column, by LukeChou, 08/09/2010 --%>
                                    <asp:BoundField HeaderText="Number of installed" DataField="InstalledNumber" ItemStyle-Width="300px" HeaderStyle-Width="300px" />
                                    <%-- added Submitted by column, by LukeChou, 27/08/2010 --%>
                                    <asp:BoundField HeaderText="Submitted By" DataField="Createdby" ItemStyle-Width="300px" HeaderStyle-Width="300px" />

                                    <%--<asp:TemplateField HeaderText="Number Installed">
                        <ItemTemplate>
                            <asp:Label ID="numberInstalled" runat="server" Text="" />
                        </ItemTemplate>
                  </asp:TemplateField>--%>

                                    <asp:TemplateField ItemStyle-Width="200px">
                                        <ItemTemplate>
                                            <span style='display: <%# IIf( Boolean.Parse(Eval("LocalLatest").ToString()) AND (Not Boolean.Parse(Eval("VersionLatest").ToString())), "" , "none")%>; color: Red;'>Your version is out-of-date. Download above.</span>
                                            <span style='display: <%# IIf( Boolean.Parse(Eval("LocalLatest").ToString()) AND (Boolean.Parse(Eval("VersionLatest").ToString())), "" , "none")%>; color: Red;'>Your version is already latest.</span>
                                            <img src="Images/tick.png" alt="Your Version" width="16" style='display: <%# IIf((Boolean.Parse(Eval("LocalLatest").ToString()) And Boolean.Parse(Eval("VersionLatest").ToString())), "", "none") %>' />
                                            <span style='display: <%# IIf(((Boolean.Parse(Eval("VersionLatest").ToString())) AND (Not Boolean.Parse(Eval("LocalLatest").ToString()) AND (Container.DataItemIndex = 0))),"","none") %>; color: Red;'></span>
                                            <img src="Images/cross.png" alt="Lastest Version" width="16" style='display: <%# IIf((Boolean.Parse(Eval("LocalLatest").ToString()) AND NOT Boolean.Parse(Eval("VersionLatest").ToString())) , "" , "none")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <!-- add column createdby, by LukeChou, 27/08/2010 -->
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
                                SelectCommand="SELECT DateCreated, CreatedBy,ISNULL( View_ProductVersionInstalledCount.InstalledCount ,0)+1 as InstalledNumber, VersionDescription, VersionNumber, &#13;&#10;&#9;CASE VersionNumber WHEN @VersionID THEN 'true' ELSE 'false' END AS LocalLatest, &#13;&#10;&#9;CASE VersionLatest WHEN 'Yes' THEN 'True' ELSE 'False' END AS VersionLatest&#13;&#10;FROM ProductVersion left join View_ProductVersionInstalledCount on ProductVersion.VersionID = View_ProductVersionInstalledCount.VersionID &#13;&#10;WHERE ProductID=@ProductID &#13;&#10;ORDER BY VersionInternalNumber DESC, ProductVersion.VersionID DESC, VersionNumber DESC">
                                <SelectParameters>
                                    <%--<asp:QueryStringParameter DefaultValue="22" Name="VersionID" QueryStringField="VID"
                       Type="String" />--%>
                                    <asp:ControlParameter ControlID="HiddenFieldVID" DefaultValue="22" Name="VersionID" PropertyName="Value" Type="String" />
                                    <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID"
                                        PropertyName="Value" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </td>
                    </tr>
                </table>

                <br />

                <%--Show Other Product Version, by Luke Chou,27/08/2010--%>
                <div runat="server" id="DivOtherVersion">
                    <h3>Other Major Versions</h3>
                    <table class="product-history" width="650">
                        <tr id="TrLatestProducts" runat="server">
                            <td>Latest Products:</td>
                            <td>
                                <asp:Label ID="lblLatestProducts" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr id="TrPriorProducts" runat="server">
                            <td>Prior Products:</td>
                            <td>
                                <asp:Label ID="lblPriorProducts" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                </div>

                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <div style="display: none;">
            <!--<asp:GridView ID="seriesProductsList" runat="server" AutoGenerateColumns="False" Caption="<b>Upgrade your product by choosing one of the following links</b>" CaptionAlign="Left" CssClass="clsSSWTable clsSSWTableProduct" DataSourceID="SqlDataSource5" GridLines="Horizontal" Width="600px"  AllowPaging="true" PageSize="6">
            <EmptyDataTemplate>
            <p>
                The upgrade location for this product is unknown...<a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info, e4='?Subject=Employment';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">Please 
                let us know</a>

            </p>
        </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="SoftwareName" HeaderText="Software Name" SortExpression="SoftwareName" />
                
                <asp:BoundField DataField="SoftwareDescription" HeaderText="Software Description" SortExpression="SoftwareDescription" />
               

              <asp:ImageField DataImageUrlField="SoftwareImage" HeaderText="Software Image" NullImageUrl="/Images/WhitePix.gif" ControlStyle-CssClass="img">
                <ControlStyle Height="192px" Width="192px" />
              </asp:ImageField>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageBtn1" runat="server" PostBackUrl='<%# Bind("AffiliatedSoftwareUrl") %>' ImageUrl="Images/purchasenow.GIF" />
                    </ItemTemplate> 
                </asp:TemplateField>
                
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
            SelectCommand="SELECT     AffiliateSoftware.SoftwareName, AffiliateSoftware.SoftwareDescription, AffiliateSoftware.AffiliatedSoftwareUrl, 
            AffiliateSoftware.SoftwareImage&#13;&#10;FROM         AffiliateSoftware INNER JOIN&#13;&#10; 
            ProductAffiliateSoftware ON AffiliateSoftware.SoftwareID = ProductAffiliateSoftware.SoftwareID INNER JOIN&#13;&#10;
             ProductGroup ON ProductAffiliateSoftware.GroupID = ProductGroup.GroupID INNER JOIN&#13;&#10;    
             Product ON ProductGroup.GroupID = Product.GroupID INNER JOIN&#13;&#10;
             ProductVersion ON Product.ProductID = ProductVersion.ProductID&#13;&#10;
             WHERE     (ProductVersion.VersionNumber like @VersionID+'%') and (Product.ProductID=@ProductID)">
             <SelectParameters>
                <asp:QueryStringParameter DefaultValue="22" Name="VersionID" QueryStringField="VID" Type="String" />
                <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID" PropertyName="Value" Type="Int32" />
            </SelectParameters>
            
            
        </asp:SqlDataSource>
           &nbsp;
        <br />
        <asp:GridView ID="GridView2" runat="server" Caption="<b>Read books to learn more about your product</b>" CaptionAlign="Left"
            CssClass="clsSSWTable" DataSourceID="SqlDataSource4" GridLines="Horizontal" Width="800px" AutoGenerateColumns="False"  AllowPaging="true" PageSize="6" >
            
            <EmptyDataTemplate>
            <p>
            
                Books for this product are unknown...<a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info, e4='?Subject=Employment';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">Please let 
                us know</a>

            </p>
        </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" >
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="BookName" HeaderText="Book Name" SortExpression="BookName" >
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                </asp:BoundField>
                
                <asp:BoundField DataField="BookDescription" HeaderText="Book Description" SortExpression="BookDescription" />


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageBtn2" runat="server" PostBackUrl='<%# Bind("AffiliateBookUrl") %>' ImageUrl="Images/purchasenow.GIF" />
                    </ItemTemplate> 
                </asp:TemplateField>
                
           </Columns>
        </asp:GridView>   
        
        <%--</ContentTemplate> </asp:UpdatePanel>--%>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SSWDiagnosticsConnectionString %>"
        SelectCommand="SELECT     ProductGroup.GroupName as ProductName, AffiliateBook.BookName, AffiliateBook.BookDescription, AffiliateBook.AffiliateBookUrl
         FROM         ProductGroup INNER JOIN
                      AffiliateBook INNER JOIN
                      ProductAffiliateBook ON AffiliateBook.BookID = ProductAffiliateBook.BookID INNER JOIN
                      Product ON ProductAffiliateBook.ProductID = Product.ProductID ON ProductGroup.GroupID = Product.GroupID INNER JOIN
                      Product AS Product_1 INNER JOIN
                      ProductVersion ON Product_1.ProductID = ProductVersion.ProductID ON ProductGroup.GroupID = Product_1.GroupID
        WHERE     (ProductVersion.VersionNumber like @VersionID+'%') and (Product.ProductID=@ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="22" Name="VersionID" QueryStringField="VID" Type="String" />
            <asp:ControlParameter ControlID="HiddenFieldPID" DefaultValue="22" Name="ProductID" PropertyName="Value" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    -->
        </div>
    </div>
</asp:Content>
