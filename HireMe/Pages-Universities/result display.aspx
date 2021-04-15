<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result display.aspx.cs" Inherits="project_40.result_display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title> result display</title>
    <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../tarek/css/animationn.css" rel="stylesheet" />
    <link href="../tarek/css/style.css" rel="stylesheet" />
    <link href="../tarek/css/media.css" rel="stylesheet" />
     <style>
     .row .brand{
         margin-left:160px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container" runat="server">
        <div class="img">
            <img class="img-responsive" src="../tarek/images/casing.jpg" />
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
       
        <div class="res text-center container" style="background-color:#eee;border:2px solid #4800ff;">
            
          <form class="text">
              <label class="lead natega" style="color:#4800ff"> النتيجة</label><br />
              <input type="text" class="form-control long" value="" />
              <input type="button" class="bttn1" value="تم" style="border:2.5px dotted green;font-size:17px; background-color:blue;color:white;opacity:0.7;" />
          </form>
             

        </div>
            
    </div>
    </form>
     <script src="../tarek/java%20script/bootstrap.min.js"></script>
    <script src=" ../tarek/java%20script/jquery.js"></script>
    <script src=" ../tarek/java%20script/js.js"></script>

</body>
</html>
