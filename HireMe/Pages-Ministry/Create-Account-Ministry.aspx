<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create-Account-Ministry.aspx.cs" Inherits="HireMe.Pages_Ministry.Create_Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">

    <title>Create-Account-Ministry</title>

<<<<<<< HEAD
    <link href="CSS/Style1-Ministry.css" rel="stylesheet" />
    <link href="CSS/StyleMob1-M.css" rel="stylesheet" media="screen and (max-width:780px)" />
    <link href="CSS/StyleMob2-M.css" rel="stylesheet" media="screen and (max-width:580px)" />
    <link href="CSS/StyleMob3-M.css" rel="stylesheet" media="screen and (max-width:380px)" />
=======
<<<<<<< HEAD:HireMe/Pages-Ministry/Create-Account.aspx

    <link href="../Css/AhmedBasic%20-%20Copy.css" rel="stylesheet" />

    <link href="../Css/Style-Ahmed.css" rel="stylesheet" />
    <link href="../Css/StyleMob1.css" rel="stylesheet" media="screen and (max-width:780px)" />
    <link href="../Css/StyleMob2.css" rel="stylesheet" media="screen and (max-width:580px)" />
    <link href="../Css/StyleMob3.css" rel="stylesheet" media="screen and (max-width:380px)" />

=======
   <link href="CSS/Style1-Ahmed.css" rel="stylesheet" />
    <link href="CSS/StyleMob1.css" rel="stylesheet" media="screen and (max-width:780px)" />
    <link href="CSS/StyleMob2.css" rel="stylesheet" media="screen and (max-width:580px)" />
    <link href="CSS/StyleMob3.css" rel="stylesheet" media="screen and (max-width:380px)" />
>>>>>>> 809aa6b3b4cdedb6a36b94901f37d335c8e49228:HireMe/Pages-Ministry/Create-Account-Ministry.aspx
>>>>>>> 24f260845b4033a501fd2b59a8945232d509656f

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body class="body">

    <form id="form_Create_Account" runat="server">
        <div>

                <!--HEADER-->
                <header class="mainHeader" dir="rtl">
                    <img src="../image/casing.jpg" width="900" />
                    <nav><ul>
                        <li><a href="#"> <i class="fa fa-home"></i> الصفحة الرئيسية </a></li>
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

                        <h3 class="title-login"><i class="fa fa-chevron-left icon"></i>  إنشاء حساب </h3>

                        <section class="post-document">

                            <div class="post-login">
                                <span class="icon"><i class="fas fa-user"></i></span>
                                <span class="title-input">الأسم الوزارة</span>
                                <asp:TextBox ID="name_ministry_new" CssClass="input" AutoCompleteType="Disabled" MaxLength="15" runat="server"></asp:TextBox>
                                <%--<input type="text" class="input" id="name-ministry" placeholder="Name" autocomplete="off" maxlength="15">--%>
                                <span class="span-bottom"></span>
                            </div>
                            <br/>
                            <br/>

                            <div class="post-login">
                                <span class="icon"><i class="fas fa-envelope"></i></span>
                                <span class="title-input">البريد الالكتروني</span>
                                <asp:TextBox ID="email_ministry_new" CssClass="input" TextMode="Email" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                <%--<input type="email" class="input" id="email-ministry" placeholder="e-mail" autocomplete="off">--%>
                                <span class="span-bottom"></span>
                            </div>
                            <br/>
                            <br/>

                            <div class="post-login">
                                <span class="icon"><i class="fas fa-lock"></i></span>
                                <span class="title-input">كلمة المرور</span>
                                <asp:TextBox ID="pass_ministry_new" CssClass="input" TextMode="Password" AutoCompleteType="Disabled" MaxLength="30" runat="server"></asp:TextBox>
                                <%--<input type="password" class="input" id="pass-ministry" placeholder="password" autocomplete="off" maxlength="30">--%>
                                <span class="span-bottom"></span>
                            </div>
                            <br/>
                            <br/>

                            <div class="post-login">
                                <span class="icon"><i class="fas fa-lock"></i></span>
                                <span class="title-input">تأكيد كلمة المرور</span>
                                <asp:TextBox ID="confirm_pass_ministry_new" CssClass="input" TextMode="Password" AutoCompleteType="Disabled" MaxLength="30" runat="server"></asp:TextBox>
                                <%--<input type="password" class="input" id="confirm-pass-ministry" placeholder="confirm password" autocomplete="off" maxlength="30">--%>
                                <span class="span-bottom"></span>
                            </div>
                            <br/>
                            <br/>

                            <div class="post-login">
                                <span class="icon"><i class="fas fa-phone"></i></span>
                                <span class="title-input">هاتف </span>
                                <asp:TextBox ID="phone_ministry_new" CssClass="input" TextMode="Number" AutoCompleteType="Disabled" MaxLength="10" runat="server"></asp:TextBox>
                                <%--<input type="number" class="input" id="phone-ministry" placeholder="phone" autocomplete="off" maxlength="7">--%>
                                <span class="span-bottom"></span>
                            </div>

                            <div class="btn">
                                <button runat="server"  class="button" id="btn_create_new" onserverclick="function_btn_Create_Account_new" title="Creare_Account_new" ><i class="fas fa-sign-in-alt icon-btn"></i> تأكيد </button>
                                <br/>
                                <br/>
                                <button runat="server" class="button" id="btn_back_signin" onserverclick="function_btn_Back_To_Signin" title="Back_to sigin" ><i class="fas fa-arrow-circle-left icon-btn"></i> عودة </button>
                            </div>

                        </section>

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
