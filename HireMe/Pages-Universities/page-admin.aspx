<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page-admin.aspx.cs" Inherits="HireMe.Pages_Universities.page_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page Admin</title>    
    <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1"/>
    <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
   <%-- <link href="../tarek/css/style.css" rel="stylesheet" />--%>
    <link href="../tarek/css/media.css" rel="stylesheet" />
    <link href="../tarek/css/animationn.css" rel="stylesheet" />
   
    <style>
      
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div >
                <img class="img-responsive" src="../tarek/images/casing.jpg" />
            </div>
              <nav class="navbar navbar-default " role="navigation">
          <div class="navbar-header">
              <span class="brand" id="hir">Hire-Me</span>

              <button type="button" class="navbar-toggle" data-target="#ta" data-toggle="collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
          </div>
          <div class="collapse navbar-collapse" id="ta">
              <ul class="nav navbar-nav navbar-right">
                  <li class="mov"><a href="home.aspx"><i class="fa fa-home"></i>Home</a></li>
                  <li class="mov"><a href="#">توقيف الموقع</a></li>
                  <li class="mov"><a href="#">تشغيل الموقع</a></li>
                  
              </ul>
          </div>

      </nav>
            <br />
            <div class="row text-center">
                <div class="col-xs-4 ">
                    <button type="button" class="btn btn-default" onclick="trans1()">استعراض حسابات</button><br /><br />
                    <div class=" true " id="tru1">
                        <ul  class="list-unstyled">
                            <li class=""><a href="administration university.aspx">الجامعة</a></li>
                            <li class=""> <a href="#">الوزارة</a></li>
                            <li class=""> <a href="#">الشواغر المتاحة</a></li>
                        </ul>
                    </div>
                </div> 
          
                <div class="col-xs-4">
                    <button type="button" class="btn btn-default mang" onclick="trans2()">إدارة حسابات</button><br /><br />
                    <div class="true" id="tru2">
                        <ul  class=" list-unstyled">
                            <li class=""><a href="administration university.aspx">الجامعة</a></li>
                            <li class=""> <a href="#">الوزارة</a></li>
                            <li class=""> <a href="#">الشواغر المتاحة</a></li>
                        </ul>
                    </div>
                </div> 
                <div class="col-xs-4 ">
                    <button type="button" class="btn btn-default" onclick="trans3()">أولوية الفرز</button><br /><br />
                    <div class="hid " id="tru3" >
                        
                            <select class="r3"size="6" id="">
                                <option class=" "></option>
                                <option class=" "></option>
                                <option class=" "></option>
                            </select>
                       
                        <div class="r2 " id="">
                            <input type="button" class="btn-default" value=">>" /><br />
                             <input type="button" class="btn-default" value="<<" />
                        </div>
                         
                            <select class="r3 " size="6" id="">
                                <option class=" "></option>
                                <option class=" "></option>
                                <option class=" "></option>
                            </select>
                        
                    </div>
                </div>
            </div>
         </div>
    
    </form>
    <script src="../tarek/java%20script/jquery.js"></script>
    <script src="../tarek/java%20script/bootstrap.min.js"></script>
    <script src="../tarek/java%20script/js.js"></script>
    <script>
        function trans1() {
            var r = document.getElementById("tru1");

            if (r.style.display == "block") {
                r.style.display = "none";
            }
          else  r.style.display = "block";
        }
        function trans2() {
            var r = document.getElementById("tru2");

            if (r.style.display == "block") {
                r.style.display = "none";
            }
          else  r.style.display = "block";
        }
        function trans3() {
            var r = document.getElementById("tru3");

            if (r.style.display == "block") {
                r.style.display = "none";
            }
           else r.style.display = "block";
        }
    </script>
</body>
</html>
