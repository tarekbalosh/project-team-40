<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign-in-Ministry.aspx.cs" Inherits="HireMe.Pages_Ministry.Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">

    <title>Sign-in-Ministry</title>

    <link href="CSS/Style1-Ministry.css" rel="stylesheet" />
    <link href="CSS/StyleMob1-M.css" rel="stylesheet" media="screen and (max-width:780px)" />
    <link href="CSS/StyleMob2-M.css" rel="stylesheet" media="screen and (max-width:580px)" />
    <link href="CSS/StyleMob3-M.css" rel="stylesheet" media="screen and (max-width:380px)" />
   
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
</head>

<body class="body">

    <form id="form_sign_in" runat="server">
        <div>

            <!--HEADER-->
            <header class="mainHeader" dir="rtl">
                <img src="../image/casing.jpg" width="900"/>
                <nav><ul>
                    <li><a href="#"> <i class="fa fa-home"></i> الصفحة الرئيسية 
                    </a></li>
                    <li><a href="#"> <i class="fas fa-list-alt"></i> قائمة </a></li>
                    <li><a href="#"> <i class="fa fa-question-circle"></i> حول </a></li>
                    <li><a href="#"><i class="fas fa-phone"></i> اتصل بنا </a></li>  
                </ul></nav>
            </header>

            <!--DOCUMENT-->
            <div class="mainContent">
                <section class="top-Content" dir="rtl">
            
                   <header>
                       <h1 class="title-post">خاص بالوزارات</h1>
                   </header> 
            
                   <h3 class="title-login"><i class="fa fa-chevron-left icon" ></i>  تسجيل الدخول </h3>  
                    
                    <section class="post-document">

                        <div class="post-login">
                            <span class="icon"><i class="fas fa-envelope"></i></span>
                            <span class="title-input">البريد الالكتروني</span>
                            <asp:TextBox ID="email_ministry" CssClass="input" TextMode="Email" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                            <%--<input type="text" class="input" id="email-ministry" placeholder="e-mail" autocomplete="off" />--%>
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="post-login">
                            <span class="icon"><i class="fas fa-lock"></i></span>
                            <span class="title-input">كلمة المرور</span>
                            <asp:TextBox ID="password_ministry" CssClass="input" TextMode="Password" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                            <%--<input type="password" runat="server" class="input" id="pass_ministry" placeholder="password" autocomplete="off" maxlength="30"  />--%>
                            <span class="span-bottom"></span>                            
                        </div>
                        <br />

                        <div class="btn">

                            <%--<i class="fas fa-sign-in-alt icon-btn"></i><asp:Button ID="btn_sign_in" CssClass="button" runat="server"  Text="تسجيل"/>--%>
                            <button runat="server" id="btn_sign_in" class="button" onserverclick="function_SignUp" title="Sign_in"><i class="fas fa-sign-in-alt icon-btn"></i>تسجيل</button>

                        </div>
                    </section>
            
                    <h3 class="title-login"><i class="fa fa-chevron-left icon" ></i>  إنشاء حساب </h3>
            
                    <div class="post-document">
                        <p> هل تريد إنشاء حساب <i class="fa fa-question-circle icon" style=""></i></p>
                        <div class="btn">
                            <%--<asp:Button ID="btn_create" CssClass="button" runat="server" Text=" إنشاء " /><i class="fas fa-plus icon-btn"></i>--%>
                            <button runat="server" id="btn_to_create" class="button" onserverclick="function_Create_Account" title="Creare_Account" ><i class="fas fa-plus icon-btn"></i> إنشاء </button>
                        </div>
                    </div>
            
                </section>
            </div>

            <!--SIDE-->
            <div class="mainSide">
                <aside>
                    <article class="sidebar1" dir="rtl">
                        <h2 class="title-side">تسجيل الدخول</h2>
                        <p class="post-side">
                            -  إذا كان لديك حساب
                            الوزارتك الحالية يمكن تسجيل
                            أو إدخال الأسم المستخدم
                            أو البريد الالكتروني وكلمة المرور.
                        </p>
                    </article>
                </aside>
                <aside>
                    <article class="sidebar1" dir="rtl">
                        <h2 class="title-side">إنشاء حساب</h2>
                        <p class="post-side">
                            - إن لم يكن لديك حساب للتسجيل الدخول
                            يمكن إنشاء حساب جديد خاص بالوزارتك الحالية
                            و يجب إدخال معلومات المطلوبة والتحقق من البيانات المدخلة.
                        </p>
                    </article>
                </aside>
                <aside>
                    <article class="sidebar1" dir="rtl" style="margin-bottom: 0%;">
                        <h2 class="title-side">تنبيه خاص </h2>
                        <p class="post-side">
                            - عند إنشاء حساب جديد الوزارة
                            سيتم عرض معلوات والشواغر والشروط إضافة
                            خاصة بالوزارة على الصفحة المسؤول .
                        </p>
                    </article>
                </aside>
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
