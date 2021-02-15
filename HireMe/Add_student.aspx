<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_student.aspx.cs" Inherits="monta.Add_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style>
        .tex{
            margin:7px;
            font-size:15px;
        }
        .select
        {
            width:200px;
              border-radius:20px;
              border:solid 2px black;

        }
        h1
        {
            color:darkred;
            font-family:Tahoma;
            font-size:30px;
         
        }
        input
        {
            border-radius:20px;
              width:200px;
        }
        .top-Content
        {
            text-align:center;
        }
        .but{
            margin:10px;
            margin-right:100px;
            width:20%;
            height:30px;
            background-color:#4d6cb9;
            color:white;
            font-size:20px;
           
        }
        
        .lab{
            font-size:18px;
            font-weight:bold;
            color:olivedrab;
        }
        .lab2{
            font-size:15px;
            font-weight:500;
            color:red;
        }
        .lab3{
             font-size:18px;
            font-weight:bold;
            color:olivedrab;
            position:relative;
            left:30px;

        }
        @media(max-width:760px)
        {
            .lab3
            {
                position:relative;
                display:block;
                left:25px;
            }
            .lab2{
                 position:relative;
                display:block;

            }
            .select
            {
                position:relative;
                left:20px;
            }
            .but{
                position:relative;
                left:40px;
                width:120px;

            }
        }
        
    </style>
      <title>add student</title>
    <link href="css/style.css" rel="stylesheet" />
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body class="body">
    <form id="form1" runat="server">
        <div>
    <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
        <nav><ul>
            <li><a href="control admin.aspx"> <i class="fa fa-home"></i> Home</a></li>
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent" style="direction:rtl;width:100%" >
        <section class="top-Content">
            <h1> اضافة طالب</h1>
              
            <asp:Label ID="Label1" runat="server" Text=" الرقم الوطني" CssClass="lab"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="num_idh" runat="server" CssClass="tex"></asp:TextBox >
                    <asp:Label ID="Lab_ck_idh" runat="server" Text="Label" CssClass="lab2"></asp:Label>
                    <br />

            <asp:Label ID="Label2" runat="server" Text="الاسم الاول" CssClass="lab"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="n_first" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_nfirst" runat="server" Text="Label" CssClass="lab2"></asp:Label>
                    <br />

<asp:Label ID="Label3" runat="server" Text=" الأسم الأخير" CssClass="lab"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="n_last" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_nlast" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

<asp:Label ID="Label4" runat="server" Text="اسم الأب" CssClass="lab"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="n_father" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_nfather" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

<asp:Label ID="Label5" runat="server" Text="اسم الأم " CssClass="lab"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="n_mather" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_cma" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

<asp:Label ID="Label6" runat="server" Text="تاريخ الولادة " CssClass="lab"></asp:Label>
            &nbsp;
            &nbsp;&nbsp;
            <asp:TextBox ID="date_porn" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_datep" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

                    <asp:Label ID="Label7" runat="server" Text=" المعدل الجامعي" CssClass="lab"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="avg" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_avg" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

                      <asp:Label ID="Label10" runat="server" Text=" اختصاص الطالب" CssClass="lab"></asp:Label>
            <asp:TextBox ID="stu_pro" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_stu_profi" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />

                    <asp:Label ID="label_country" runat="server" Text=" المحافظة" CssClass="lab"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="country" runat="server" CssClass="tex"></asp:TextBox>
                    <asp:Label ID="Lab_ck_country" runat="server" Text="Label" CssClass="lab2" ></asp:Label>
                    <br />
                       <asp:Label ID="Label9" runat="server" Text=" ابن شهيد" CssClass="lab3" ></asp:Label>   
                    &nbsp;   
                    &nbsp;&nbsp;&nbsp;&nbsp;              
                    <asp:DropDownList ID="DropDownList1" CssClass="select" runat="server">
                        <asp:ListItem>لا</asp:ListItem>
                        <asp:ListItem>نعم</asp:ListItem>
                    </asp:DropDownList>
                   <br /><br />
            <asp:Button ID="submit" runat="server" Text="ارسال" CssClass="but" OnClick="submit_Click" Font-Bold="True"/>

            

        </section>
    </div>

    <!--SIDE-->
    <aside></aside>

    <!--FOOTER-->
    <footer></footer>
            
     <script src="html/icons.js"></script>

        </div>
    </form>
</body>
</html>
