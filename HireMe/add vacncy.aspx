<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add vacncy.aspx.cs" Inherits="HireMe.add_vacncy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         
    <title></title>
  <link href="css/style.css" rel="stylesheet" />
    <style>
         @keyframes next
{
    0% {
        width: 0%;
    }

    100% {
        width: 900px;
    }
}
.mainHeader 
{
    animation: next 1s ease-in-out;
}
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            
            /////////////////////////////////
             
    <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
        <nav><ul>
            <li><a href="control admin.aspx"> <i class="fa fa-home"></i> Home</a></li>
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent"  style="direction:rtl;width:100%;background-color:white">
        <section class="top-Content" style="text-align:center">

              <h1> ADD VACANCY </h1>
              
            <asp:Label ID="Label1" runat="server" Text=" الاختصاص" CssClass="lab"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="id_spec" runat="server" CssClass="tex"></asp:TextBox >&nbsp;&nbsp;
            <asp:Label ID="Label_spec" runat="server" Text="Label" CssClass="lab2"></asp:Label>
            
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text=" النوع" CssClass="lab"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="id_type" runat="server" Width="132px">
                <asp:ListItem Value="teach" id="teach">تدريسي</asp:ListItem>
                <asp:ListItem Value="admin">اداري</asp:ListItem>
              </asp:DropDownList>&nbsp;&nbsp;
            <asp:Label ID="Label_type" runat="server" Text="Label" CssClass="lab2"></asp:Label>
            <br />
            <br />

             <asp:Label ID="Label3" runat="server" Text=" المعدل" CssClass="lab"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="id_avg" runat="server" CssClass="tex"></asp:TextBox>&nbsp;&nbsp;
             <asp:Label ID="Label_avg" runat="server" Text="Label" CssClass="lab2"></asp:Label>
            <br />
            <br />

             <asp:Label ID="Label4" runat="server" Text=" العدد" CssClass="lab"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="id_count" runat="server" CssClass="tex"></asp:TextBox>&nbsp;&nbsp;
             <asp:Label ID="Label_count" runat="server" Text="Label" CssClass="lab2"></asp:Label>
            <br />
            <br />

            <asp:Button ID="id_btn_add" runat="server" Text="ADD" OnClick="id_btn_add_Click" />

    </section>
         </div>

        </div>
    </form>
</body>
</html>
