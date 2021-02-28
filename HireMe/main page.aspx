<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main page.aspx.cs" Inherits="HireMe.main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/style.css" rel="stylesheet" />
      <link href="css/css/ministry.css" rel="stylesheet" />
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head >
<body class="body">
    <form id="form1" runat="server">
        <div>
            <!--HEADER-->
    <header class="mainHeader">
        <img src="image/casing.jpg" />
        <nav><ul>
            <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
            <li><a href="#"> <i class="fas fa-list-alt"></i> Portfolio</a></li>
            <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
            <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
        </ul></nav>
    </header>
           <div class="mainContent">
        <section class="top-Content">
               <div class="row">
                      <div class="jump">
                       <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">Name</span>
                   </label>
               </div>
                 </div>
                   </div>
        </section>
             </div>
            <footer>     
            </footer>

        </div>
    </form>
    <script src="js/icons.js"></script>
</body>
</html>
