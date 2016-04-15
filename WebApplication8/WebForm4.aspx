<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication8.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src = "/Scripts/jquery-2.1.4.js" type = "text/javascript"> </script>
    
<script type="text/javascript">
    $(document).ready(function () {
    $("#Button1").click(function (evt) {
    switch ($("#DropDownList1").val()) {
        case "A":
        $("#GridView1 tr a").parent().css("display", "block");
        break;
        case "P":
        $("#GridView1 tr a[href *= 'products/']").parent().css("display", "block");
        $("#GridView1 tr a[href |= 'Paper']").parent().css("display", "none");
        $("#GridView1 tr a[href $= '-comp.aspx']").parent().css("display", "none");
        break;
        case "WP":
        $("#GridView1 tr a[href *= 'products/']").parent().css("display", "none");
        $("#GridView1 tr a[href |= 'Paper']").parent().css("display", "block");
        $("#GridView1 tr a[href $= '-comp.aspx']").parent().css("display", "none");
        break;
        case "C":
            $("#GridView1 tr a[href *= 'products/']").parent().css("display", "none");
            $("#GridView1 tr a[href |= 'Paper']").parent().css("display", "none");
            $("#GridView1 tr a[href $= '-comp.aspx']").parent().css("display", "block");
            break;
    }
        evt.preventDefault();
    })
    })
</script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="A">All Downloads</asp:ListItem>
            <asp:ListItem Value="P">Products</asp:ListItem>
            <asp:ListItem Value="WP">White Papers</asp:ListItem>
            <asp:ListItem Value="C">Components</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="Button1" runat="server" Text="Button" />

        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="URL" DataTextField="Title" HeaderText="Downloads" />

            </Columns>

        </asp:GridView>
    </div>
    </form>
</body>
</html>
