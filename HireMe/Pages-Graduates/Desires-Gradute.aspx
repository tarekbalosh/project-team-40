<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Desires-Gradute.aspx.cs" Inherits="HireMe.Pages_Graduates.Desires_Gradute" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Desires-Gradute</title>

    <link href="CSS/Style1-Gradute.css" rel="stylesheet" />

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body class="body">

    <form id="form_Desires_Gradute" runat="server">
        <div>

            <!--HEADER-->
            <header class="mainHeader" dir="rtl">
                <img src="../image/casing.jpg" width="900"/>
                <nav><ul>
                    <li><a href="#"> <i class="fa fa-home"></i> الصفحة الرئيسية </a></li>
                    <li><a href="#"> <i class="fas fa-list-alt"></i> قائمة </a></li>
                    <li><a href="#"> <i class="fa fa-question-circle"></i> حول </a></li>
                    <li><a href="#"><i class="fas fa-phone"></i> اتصل بنا </a></li>  
                </ul></nav>
            </header>

            <!--DOCUMENT-->
            <div class="mainContent">
                <section class="top-Content" dir="rtl" >

                    <header>
                       <h1 class="title-post">اختيار الرغبات</h1>
                   </header>                

                     <div class="post-document">

                         <h3 class="title-login"><i class="fa fa-chevron-left icon" ></i>  رغبات المتاحة </h3>

                         <asp:DropDownList ID="desires_available" CssClass="drop-desire" runat="server"></asp:DropDownList>

                         <div class="btn">
                                <button runat="server" class="button" id="btn_add_desire" onserverclick="function_btn_Add_Desire" style="float:right;margin-right:20%;" ><i class="fas fa-angle-double-down icon-btn"></i> إضافة</button>
                                <button runat="server" class="button" id="btn_remove_desire" onserverclick="function_btn_Remove_Desire" style="float:left; margin-left:10%;" ><i class="fas fa-angle-double-up icon-btn"></i> حذف </button>
                         </div>

                         <br /> 
                         <br /> 
                         <br /> 

                         <h3 class="title-login"><i class="fa fa-chevron-left icon" ></i>  رغبات التي تم اختيارها </h3>

                         <asp:DropDownList ID="desires_selected" CssClass="drop-desire" runat="server"></asp:DropDownList>

                     </div>


                        

                </section>
            </div>

            <!--FOOTER-->
            <footer class="footer">
                <div class="post-footer">
                    <p class="title-footer">جميع حقوق محفوظة لموقع مفاضلة المهندسين الالكترونية - 2021</p>
                </div>
            </footer>

        </div>
    </form>

    <script src="../js/icons.js"></script>

</body>
</html>
