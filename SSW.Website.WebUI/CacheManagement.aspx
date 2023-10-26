<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master"
    Title="jStorage Cache Management" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <%--<img class="icon" src="images/thumbs/thumb-web-mvc.jpg" alt="Web and MVC" />--%>
    <h1>Cache Management</h1>
    <h2>Use this page to clear jStorage cache</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <style type="text/css">
        #clearallcache div{
            border: 1px solid #ccc;
        }
        #clearallcache div span {
            display: table-cell;
            max-width:720px;
            padding: 8px;
        }
        #clearallcache .cacheDescription {
            border-right:1px dotted #ccc;
        }
        #clearallcache .buttonContainer {
            vertical-align:middle;            
        }
    </style>
    <script type="text/javascript">
        $(function () {
            //var index = $.jStorage.index();
            //$('#test').text(index);

            $('#clearallcachebtn').click(function () {
                $.jStorage.flush();
                $('#clearallcachebtn').text('Cleared cache!');
                $('#clearallcachebtn').css({'color':'white', 'background-color':'green'});                

                //var index = $.jStorage.index();
                //$('#test').text(index);
                return false;
            });
        });
    </script>
    <div class="section" id="clearallcache">
        <h2><a name="clearallcache"></a>Clear all jStorage cache</h2>
        <div>
            <span class="cacheDescription">Click the button to clear all jStorage cache <br />
                            (including Events data on "Live Stream Banner",  "Home Calendar", "User Group Events", "Further Events" and "Past Events")</span>
            <span class="buttonContainer"><button type="button" id="clearallcachebtn">Clear cache</button></span>
            <%--<span id="test"></span>--%>
        </div>
    </div>
</asp:Content>
 
