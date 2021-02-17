<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_vacancy.aspx.cs" Inherits="HireMe.display_vacancy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display vacancy</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        
    <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
        <nav><ul>
            <li><a href="control admin.aspx"> <i class="fa fa-home"></i> Home</a></li>
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent"  style="direction:rtl;width:100%;background-color:white; direction:ltr ">
        <section class="top-Content" style="text-align:center">

              <h1> Display VACANCY </h1>
            <asp:GridView ID="GridView1" runat="server" style="text-align:center; margin-left:33%"></asp:GridView>

            </section>
         </div>

        </div>
    </form>
</body>
</html>
