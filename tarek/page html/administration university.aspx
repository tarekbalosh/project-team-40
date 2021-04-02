<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administration university.aspx.cs" Inherits="project_40.administration_university" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>  administration university</title>
    <link href="../fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../css/bootstrap.min.css" rel="stylesheet" />
      <link href="../css/animationn.css" rel="stylesheet" />
      <link href="../css/media.css" rel="stylesheet" />
      <link href="../css/style.css" rel="stylesheet" />
</head>
    <style>
        @media(max-width:767px)
      {
         
         .home{
             direction: rtl;
             margin-left: 70%;
             margin-top: 8px;
             font-weight: bold;
             font-size: 17px;
        }
         
      }
         @media(min-width:768px) and (max-width:1200px)
      {
          .home {
            direction: rtl;
            margin-left: 80%;
            margin-top: 8px;
            font-weight: bold;
            font-size: 17px;
        }
      }
          .brand
      {
          margin-left:100px;
      }
    </style>
<body>
    <form id="form1" runat="server">
      
        <div class="container" runat="server">
            <div class="img">
                <img class="img-responsive" src="../images/casing.jpg" />
            </div>
           
            <div class="container">
                <div class="row">
                   
                    <span class="brand" id="hir">Hire-Me</span>

                        <ul class="navbar-nav home">
                            <li class="nav-item">
                                <a class="nav-link move" href="#">Home</a> <i class="fa fa-home fa-md" style="color:grey"></i>
                            </li>
                        </ul>
                    </div>
               
            </div><br />

            <div class="containt text-center" runat="server">
                <form class="text-center" id="Form2">
                    <label class="la">المحافظة</label>
                    <select class="sel1 form-control text-center"  runat="server">
                        <option class="opt1" value="damas" runat="server">Damascause</option>
                        <option class="opt1" value="alepo" runat="server">Allepo</option>
                    </select>
                    <br /><br />
                    <label class="la">إسم الجامعة</label>
                    <select class="sel1 form-control text-center"  runat="server">
                        <option class="opt1" value="damas">Damascause</option>
                        <option class="opt1" value="alepo">Allepo</option>
                    </select>
                    <br /><br />
                    <label class="la">الإسم الجديد</label>
                    <input type="text" class="sel1 form-control" placeholder="name" runat="server" />
                    <br /><br />
                    <label class="la">إسم الجامعة الجديدة</label>
                    <select class="sel1 form-control text-center" runat="server">
                        <option class="opt1" value="damas" runat="server">Damascause</option>
                        <option class="opt1" value="alepo" runat="server">Allepo</option>
                    </select>
                    <br /><br /><br />
                    <button class="btn btn-danger " runat="server">حذف</button>
                    <button class="btn btn-primary" runat="server">إلغاء</button>
                    <button class="btn btn-success" runat="server">إرسال</button>
                </form>
            </div>
        </div>
   
        <script src="../java script/jquery.js"></script>
        <script src="../java script/bootstrap.min.js"></script>
        <script src="../java script/js.js"></script>
    </form>
</body>
</html>
