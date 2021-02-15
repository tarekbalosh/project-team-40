<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display Universities.aspx.cs" Inherits="Add_University.Display_Universities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add University</title>
    <link rel="stylesheet" href="css/style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style type="text/css">
        #uniCountry {
            width: 362px;
            height: 50px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
   <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
        <nav><ul>
            <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
            <li><a href="#"> <i class="fas fa-list-alt"></i> Profile</a></li>
            <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
            <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent">
         <div class="login-Content">
                <div class="login">
            <header>
                <h2>Create University Account</h2>
            </header>
        <section class="top-Content">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </section>
                    </div>
             </div>
    </div>

    <!--SIDE-->
    <aside></aside>

    <!--FOOTER-->
    <footer></footer>
    
    <script src="icons.js"></script>
    </form>
</body>

</html>
