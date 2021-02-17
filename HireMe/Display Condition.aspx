<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display Condition.aspx.cs" Inherits="HireMe.Display_Condition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Condition</title>
    <link href="css/StyleDn.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
             <!--HEADER-->
             <header class="mainHeader">
                 <img src="css/casing.jpg" />
                 <nav><ul>
                     <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
                     <li><a href="#"> <i class="fas fa-list-alt"></i> Portfolio</a></li>
                     <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
                     <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
                 </ul></nav>
            </header>

            <!--DOCUMENT-->
             <div class="mainContent">
                 <section class="top-Content">
                     <div class="login-Content">
                         <div class="login">

                             <h1 style="text-align:center;font-size:20px;color:#2f4274">Conditions for Ministries</h1>
                            
                             <asp:GridView ID="GridView_cond" runat="server" Width="100%" Height="100%"></asp:GridView>

                             <asp:Button ID="btn_to_control" runat="server" OnClick="Button1_Click" Text="Back" />

                         </div>
                     </div>
                  </section>
             </div>

             <!--SIDE-->
              <aside></aside>

             <!--FOOTER-->
              <footer></footer>

            <script src="css/icons.js"></script>
        </div>
    </form>
</body>
</html>
