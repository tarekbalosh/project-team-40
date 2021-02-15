<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_student.aspx.cs" Inherits="HireMe.display_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Student</title>
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
.but{
   margin-top:10px;
    
}
.but:hover
{
    
   
    animation:moves 2s ease ;
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
            <li> <i class="fa fa-home"></i>
                <asp:Button ID="Button1" runat="server" Text="Home" BackColor="#192A56" BorderColor="#192A56" BorderStyle="Solid"  ForeColor="White" CssClass="but" OnClick="Button1_Click" /></li>          
        </ul></nav>
    </header>
             <!--DOCUMENT-->
    <div class="mainContent">
        <section class="top-Content">
           
            <asp:GridView ID="GV_dis_stu" style="text-align:center;margin:auto;width:500px;" runat="server" Width="500px"></asp:GridView>
        </section>
    </div>

        </div>
    </form>
</body>
</html>
