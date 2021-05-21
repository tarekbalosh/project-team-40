<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add-Vacancy.aspx.cs" Inherits="HireMe.Pages_Ministry.Add_Vacancy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">

<head runat="server">

    <title>Add-Vacancy</title>

    <link href="CSS/Style2-Ministry.css" rel="stylesheet" />

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body class="body">

    <form id="form_Add_Vacancy" runat="server">
        <div>

                <!--HEADER-->
                <header class="mainHeader">
                    <nav><ul>
                        <li><a href="Sign-in.aspx"> <i class="fa fa-home"></i> الصفحة الرئيسية </a></li>
                        <li><a href="#"> <i class="fas fa-list-alt"></i> قائمة </a></li>
                        <li><a href="#"> <i class="fa fa-question-circle"></i> حول </a></li>
                        <li><a href="#"><i class="fas fa-phone"></i> اتصل بنا </a></li>  
                    </ul></nav>
                </header>

            <!--DOCUMENT-->
            <div class="mainContent">

                <section class="top-Content" >

                    <header>
                        <h1 class="title-post"><i class="fa fa-chevron-left icon" ></i> إضافة الشاغر</h1>
                        <img src="../image/logo-hire-me.png" />
                    </header>
                    <br />
                    <br />

                    <section class="post-document">

                        <div class="post-form">                            
                            <span class="title-input">الأختصاص : </span>
                            <asp:DropDownList ID="name_specialization_new" CssClass="drop_type" runat="server" OnSelectedIndexChanged="name_specialization_new_SelectedIndexChanged"></asp:DropDownList>                                
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input" style="padding-left:50px;">النوع : </span>
                            <asp:DropDownList ID="type_specialization_new" CssClass="drop_type" runat="server">
                                <asp:ListItem Value="educational">تدريسي</asp:ListItem>
                                <asp:ListItem Value="Administration"> إداري</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input">المعدل : </span>
                            <asp:TextBox ID="avg_specialization_new" CssClass="input" AutoCompleteType="Disabled" MaxLength="15" runat="server"></asp:TextBox>                                
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input">العدد : </span>
                            <asp:TextBox ID="count_specialization_new" TextMode="Number" CssClass="input" AutoCompleteType="Disabled" MaxLength="15" runat="server"></asp:TextBox>                                
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="btn">
                                <button runat="server" class="button" id="btn_add_vac" onserverclick="function_btn_Add_Vacancy" title="Add_Vacancy" ><i class="fas fa-plus icon-btn"></i> إضافة </button>
                                <br/>
                                <br/>
                                <%--<button runat="server" class="button" id="btn_back_signin" onserverclick="function_btn_Back_To_Signin" title="Back_to sigin" ><i class="fas fa-arrow-circle-left icon-btn"></i> عودة </button>--%>
                            </div>

                    </section>

                </section>

            </div>

            <!--SIDE-->
            <div class="mainSide">

                <aside class="sidebar">

                    <header>
                        <h2 class="title-side">إدارة الوزارات</h2>
                    </header>

                    <ul style="list-style: none;">
                        <li><a runat="server" onserverclick="function_link_add_vacany">إضافة الشاغر</a></li>
                        <li><a runat="server" onserverclick="function_link_update_vacany">تعديل الشاغر</a></li>
                        <li><a runat="server" onserverclick="function_link_add_condition">إضافة الشرط</a></li>
                        <li><a runat="server" onserverclick="function_link_update_condition">تعديل الشرط</a></li>
                        <li><a runat="server" onserverclick="function_link_view_cond_vac">استعراض الشواغر و الشروط</a></li>
                    </ul>

                </aside>

            </div>

            <!--FOOTER-->
            <footer class="footer">
                    <div class="post-footer">
                        <p class="title-footer">جميع حقوق محفوظة لموقع مفاضلة المهندسين الالكترونية - 2021</p>
                    </div>
            </footer>

            <script src="../js/icons.js"></script>

        </div>
    </form>

</body>
</html>
