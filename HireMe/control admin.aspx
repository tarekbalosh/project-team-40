<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="control admin.aspx.cs" Inherits="HireMe.control_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contrl admin</title>
    <link href="css/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/css/bootstrap.min.css" rel="stylesheet" />
  <style>
     
  </style>
</head>
 <body class="body">
    <form id="form1" runat="server">
        <div>
           
    <!--HEADER-->
            
                
    <header class="mainHeader" style="width:1050px">
        <img src="css/casing.jpg" class="img-responsive" />
        <nav><ul >
            <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
            <li><a href="#"> <i class="fas fa-list-alt"></i> Portfolio</a></li>
            <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
            <li><a href="#" class="contact"><i class="fas fa-phone "></i> Contact</a></li>  
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent text-center" >
        
            <asp:Button class="btn" ID="btn_add_ministry" runat="server" Text="add ministry" OnClick="btn_add_ministry_Click" />
            <asp:Button class="btn" ID="btn_display_ministry" runat="server" Text="display ministry" OnClick="btn_display_ministry_Click" /><br />  
            <asp:Button class="btn" ID="btn_add_university" runat="server" Text="add university" />
            <asp:Button class="btn" ID="btn_display_nuiversity" runat="server" Text="display nuiversity" /><br />
            <asp:Button class="btn" ID="btn_add_condition" runat="server" Text="add condition" OnClick="btn_add_condition_Click" />
            <asp:Button class="btn" ID="btn_display_condition" runat="server" Text="display condition" /><br />
            <asp:Button class="btn" ID="btn_add_vacancy" runat="server" Text="add vacancy" />
            <asp:Button class="btn" ID="btn_display_vacancy" runat="server" Text="display vacancy" /><br />
            <asp:Button class="btn" ID="btn_add_student" runat="server" Text="add student" OnClick="btn_add_student_Click" />
            <asp:Button class="btn" ID="btn_display_student" runat="server" Text="display student" OnClick="btn_display_student_Click" /><br />

       </div>
    </div>

    </form>
     <script src="css/icons.js"></script>
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     
</body>
</html>
