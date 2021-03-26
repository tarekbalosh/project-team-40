<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update-Vacancy.aspx.cs" Inherits="HireMe.Pages_Ministry.Update_Vacancy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Update-Vacancy</title>
    <link href="../Css/Style2-Ahmed.css" rel="stylesheet" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body class="body">

    <form id="form_Update_Vacancy" runat="server">
        <div>

            <!--HEADER-->
                <header class="mainHeader">
                    <nav><ul>
                        <li><a href="#"> <i class="fa fa-home"></i> الصفحة الرئيسية </a></li>
                        <li><a href="#"> <i class="fas fa-list-alt"></i> قائمة </a></li>
                        <li><a href="#"> <i class="fa fa-question-circle"></i> حول </a></li>
                        <li><a href="#"><i class="fas fa-phone"></i> اتصل بنا </a></li>  
                    </ul></nav>
                </header>

            <!--DOCUMENT-->
            <div class="mainContent">

                <section class="top-Content" >

                    <header>
                        <h1 class="title-post"><i class="fa fa-chevron-left icon" ></i> تعديل الشاغر</h1>
                        <img src="../image/logo-hire-me.png" />
                    </header>
                    <br />
                    <br />

                    <section class="post-document">

                        <div class="post-form">
                            <%--<span class="icon"><i class="fas fa-user"></i></span>--%>
                            <span class="title-input">الأختصاص : </span>
                            <asp:DropDownList ID="name_specialization" CssClass="drop_type" Width="50%" runat="server"></asp:DropDownList>
                            <%--<asp:TextBox ID="name_specialization_new" CssClass="input" AutoCompleteType="Disabled" MaxLength="30" runat="server"></asp:TextBox>--%>
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <asp:GridView ID="GridView_Vacancy" CssClass="gridview" runat="server" Width="260px"></asp:GridView>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input">النوع : </span>
                            <asp:DropDownList ID="type_specialization" CssClass="drop_type" runat="server"></asp:DropDownList>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input">المعدل : </span>
                            <asp:TextBox ID="avg_specialization" CssClass="input" AutoCompleteType="Disabled" MaxLength="15" runat="server"></asp:TextBox>                                
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="post-form">
                            <span class="title-input">العدد : </span>
                            <asp:TextBox ID="count_specialization" TextMode="Number" CssClass="input" AutoCompleteType="Disabled" MaxLength="15" runat="server"></asp:TextBox>                                
                            <span class="span-bottom"></span>
                        </div>
                        <br />
                        <br />

                        <div class="btn">
                                <button runat="server" class="button" id="btn_save_vac" onserverclick="function_btn_Save_Vacancy" title="Save_Vacancy" ><i class="fas fa-save icon-btn"></i> حفظ </button>
                                <br/>
                                <br/>
                                <button runat="server" class="button" id="btn_remove_vac" onserverclick="function_btn_Remove_Vacancy" title="Remove_Vacancy" ><i class="fa fa-trash icon-btn"></i> إزالة </button>
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
