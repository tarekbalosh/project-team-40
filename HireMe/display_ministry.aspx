<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_ministry.aspx.cs" Inherits="HireMe.display_ministry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>display ministry</title>
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
 <body class="body">
    <form id="form1" runat="server">
        <div>
           
    <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
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
           
            <asp:GridView ID="GridView1" style="text-align:center;margin:auto;width:600px;" runat="server"></asp:GridView>




        </section>
    </div>


    <!--SIDE-->
    <aside></aside>

    <!--FOOTER-->
    <footer></footer>
    
    <script src="icons.js"></script>


        </div>
    </form>
     <script src="css/icons.js"></script>
</body>

</html>
