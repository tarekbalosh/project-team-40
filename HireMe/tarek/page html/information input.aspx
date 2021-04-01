<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="information input.aspx.cs" Inherits="project_40.information_input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title> information input</title>
      <%--<link href="tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
    <link href="tarek/css/bootstrap.min.css" rel="stylesheet" />
      <link href="tarek/css/animationn.css" rel="stylesheet" />
      <link href="tarek/css/media.css" rel="stylesheet" />
    <link href="tarek/css/style.css" rel="stylesheet" />--%>
      <link href="../fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../css/bootstrap.min.css" rel="stylesheet" />
      <link href="../css/animationn.css" rel="stylesheet" />
      <link href="../css/media.css" rel="stylesheet" />
      <link href="../css/style.css" rel="stylesheet" />
          <style>
      @media(max-width:767px)
      {
     .bag
     {
         width:300px;
         border-top-left-radius:20px;
         border-top-right-radius:20px;
     }
     .select1,.select2
     {
         width:100px;
     }
     .bt1
     {
         width:27px;
         padding:2px 5px;
     }
     .d2{
         width:30px;
     }
          .res{
              width:200px;
          }
          .long{
              width:100px;
          }
         .home {
            direction: rtl;
            margin-left: 50%;
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
  </head>
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
            <div class="row">
                <form class="text-center" id="Form2">
                    <div class="col-md-6 col-xs-12">
                        <label class="la">الإسم</label>
                        <input type="text" class="sel1 form-control" placeholder="name" runat="server" />
                        <br />
                        <label class="la">اسم الأب</label>
                        <input type="text" class="sel1 form-control" placeholder="name" runat="server" />
                        <br />
                        <label class="la">اسم الأم</label>
                        <input type="text" class="sel1 form-control" placeholder="name" runat="server" />
                        <br />
                        <label class="la">تاريخ التولد</label>
                        <input type="date" class="sel1 form-control" runat="server" />
                        <br />
                        <label class="la">بريد الإلكتروني</label>
                        <input type="email" class="sel1 form-control" placeholder="input email" runat="server" />

                    </div>
                    <div class="col-md-6 col-xs-12">
                        <label class="la">كلمة السر</label>
                        <input type="password" class="sel1 form-control" maxlength="12" placeholder="input password" runat="server" />
                        <br />
                        <label class="la">الإختصاص</label>
                        <input type="text" class="sel1 form-control" runat="server" />
                        <br />
                        <label class="la">المستوى العلمي</label>
                        <select class="sel1 form-control text-center" runat="server" style="width:200px;">
                            <option class="opt1" value="mastr" runat="server">mastr</option>
                            <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                        </select>
                        <br />
                        <label class="la">رقم الهاتف</label>
                        <input type="password" class="sel1 form-control" placeholder="input phone" runat="server" />
                        <br />
                        <label class="la">رقم الوطني </label>
                        <input type="number" class="sel1 form-control"  placeholder="input password" runat="server" />
                        <br />
                          </div>
                    <br /><br />

                </form>
            </div>
        </div>
    </div>
    <br /><br />
    <div class="container ">
        <input type="button" class="btn2" value="إختر الرغببات" runat="server" onclick="show()" />
        <div class="bag text-center container" id="rakba" style="display:none;">
            <div class="d3">
                <select class="select1 form-control text-center" size="8" runat="server"></select>
            </div>

            <div class="d2">
                <button class="bt1"><<</button><br />
                <button class="bt1">>></button>
            </div>
            <div class="d1">
                <select class="select2 form-control text-center" size="8" runat="server">
                    <option class="opt1" value="mastr" runat="server">mastr</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                </select>
            </div>
        </div>
    </div>



        <script src="../java%20script/jquery.js"></script>
        <script src="../java%20script/bootstrap.min.js"></script>
        <script src="../java%20script/js.js"></script>
    </form>
</body>
</html>
