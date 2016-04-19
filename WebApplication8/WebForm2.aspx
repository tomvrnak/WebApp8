<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication8.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <script src = "/Scripts/jquery-2.1.4.js" type = "text/javascript"> </script>
    
<script type="text/javascript">

    /*Sleeker way of doing things,
    OnReady(),. and OnBUttonClick() are not needed here, bc these events are expected*/
    $(document).ready(function ()
    {
        $("#Button7").click(function (evt)
        {
            //test here
            //This change was made on the HP laptop at honme!
            var font = $("#TextBox5").val();
            var fontSize = $("#TextBox6").val();
            var foreColor = $("#DropDownList1").val();
            var backColor = $("#DropDownList2").val();
            var text = $("#TextBox2").val();

             $("#container").css("font-family", font)
                            .css("font-size", fontSize)
                            .css("color", foreColor)
                            .css("background-color", backColor)
                            .html(text);

            evt.preventDefault();
        }
        );
    }
    );

    /*Newby, conservative way of doing things:
    
    jQuery(document).ready(OnReady);

    function OnReady()
    {
        $("#Button7").click(OnButtonClick);
    }

    function OnButtonClick(evt) {
        var font = $("#TextBox5").val();
        var fontSize = $("#TextBox6").val();
        var foreColor = $("#DropDownList1").val();
        var backColor = $("#DropDownList2").val();
        var text = $("#TextBox2").val();
        $("#container").css("font-family", font);
        $("#container").css("font-size", fontSize);
        $("#container").css("color", foreColor);
        $("#container").css("background-color", backColor);
        $("#container").html(text);
        evt.preventDefault();
    }*/

</script>

<head>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">





         <asp:Table ID="Table1" runat="server">
  
                        <asp:TableRow><asp:TableCell>Font:</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                        <asp:TableRow><asp:TableCell>Font Size:</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                        <asp:TableRow><asp:TableCell>Fore Color :</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Blue</asp:ListItem>
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                        </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                        <asp:TableRow><asp:TableCell>Back Color:</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Blue</asp:ListItem>
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
        </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                                    <asp:TableRow><asp:TableCell>Show result:</asp:TableCell>
                        <asp:TableCell> <asp:Button ID="Button7" runat="server" Text="Show Result Button" /></asp:TableCell>
                </asp:TableRow>


                                      <asp:TableRow><asp:TableCell>Result:</asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </asp:TableCell>
                </asp:TableRow>
            
        </asp:Table>
        <div id="container"></div>
    
    </form>


</body>
</html>
