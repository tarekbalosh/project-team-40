<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main page.aspx.cs" Inherits="HireMe.main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/style.css" rel="stylesheet" />
    <link href="Css/tarek_css.css" rel="stylesheet" />
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>

        .jump {
    padding-bottom: 20px;
    background: linear-gradient(to left top,rgb(235 240 241), #95afc0);
    text-align: center;
    width: 600px;
    margin: auto;
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
    border-bottom: solid double 2px;
}

        .form input:focus + .label-name .content-name,
.form input:valid + .label-name .content-name
{
    transform: translateY(-100%);
    font-size: 14px;
    color:#3274b7;
}
        .content-name{
    position: absolute;
    bottom: 5px;
    left: 0px;
    transition: all 0.3s ease;
    color:black;
}
        .form label::after{
    content: "";
    position: absolute;
    left: 0px;
    bottom: -1px;
    width: 100%;
    height: 100%;
    border-bottom: 2px solid #ffffff;
    transform: translateX(-100%);
    transition: all 0.3s ease;
}


    </style>

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
           <div class="mainContent"/>
        <section class="top-Content">
             <div class="container">
             <div class="jump" style="border:solid #a3a3a3 4px;">
                  <div style="width:60%;height:100%; margin:0 auto;">
                 
                  <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">Name</span>
                   </label>
               </div><br />

                          <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">pass</span>
                   </label>
               </div><br />

                         <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">pass</span>
                   </label>
               </div>   <br />
                     
                      <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">date</span>
                   </label>
               </div>  <br />
                      <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">email</span>
                   </label>
               </div><br />
                         <div class="form">
                   <input type="text" name="name" autocomplete="off" required="required"/>
                   <label for="name" class="label-name">
                       <span class="content-name">AVG</span>
                   </label>
               </div><br />

             </div>                
                 </--div>     
                  <br />
                  <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                  <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
                  </div>    
        </section>
             </div>
            <footer>     
            </footer>

       
    </form>
    <script src="js/icons.js"></script>
</body>
</html>
