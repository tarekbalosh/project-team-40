﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administration university.aspx.cs" Inherits="project_40.administration_university" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>  administration university</title>
      <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../tarek/css/animationn.css" rel="stylesheet" />
      <link href="../tarek/css/media.css" rel="stylesheet" />
      <link href="../tarek/css/style.css" rel="stylesheet" />
    <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../tarek/css/animationn.css" rel="stylesheet" />
    <link href="../tarek/css/media.css" rel="stylesheet" />
<<<<<<< HEAD
    <link href="../tarek/css/style.css" rel="stylesheet" />
</head>
    <style> 
    </style>
</head>
=======
    <link href="../tarek/css/tarek-style.css" rel="stylesheet" />
</head>   
>>>>>>> c0528fd92d2f6b9846f7317c4232c304f820351a
<body>
    <form id="form1" runat="server">
      
        <div class="container" runat="server">
            <div class="img">
                <img class="img-responsive" src="../tarek/images/casing.jpg" />
            </div>
           
            <div class="container">
                <div class="row">
                   
                     <div class="col-xs-12 ministryhome" dir="rtl">
                <span class="span1" runat="server">الصفحة الرئيسية</span>
                <span class="span2" runat="server"> H I R E_ M E</span>
                
            </div>
                    </div>
               
            </div><br />

            <div class="containt text-center" runat="server">
                <form class="text-center"  id="Form2">
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
   
        <script src="../tarek/java script/jquery.js"></script>
        <script src="../tarek/java script/bootstrap.min.js"></script>
        <script src="../tarek/java script/js.js"></script>
    </form>
</body>
</html>
