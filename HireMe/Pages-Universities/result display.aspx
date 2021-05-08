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
    <link href="../tarek/css/tarek-style.css" rel="stylesheet" />
    <link href="../tarek/css/media.css" rel="stylesheet" />
     <style>
     .row .brand{
         margin-left:160px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
       <div class="container">
          <div class="row ">
              <div class="img  col-xs-12">
                <img class="img-responsive" src="../tarek/images/casing.jpg" />
              </div><br />
            <div class="col-xs-12 ministryhome" dir="rtl">
                <span class="span1" runat="server">الصفحة الرئيسية</span>
                <span class="span2" runat="server"> H I R E_ M E</span>
                
            </div>
          </div>
           <br /><br /><br /> 
       
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
    <script src=" ../tarek/java%20script/java.js"></script>

</body>
</html>
