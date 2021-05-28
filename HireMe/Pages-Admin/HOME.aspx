<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="HireMe.Pages_Admin.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <title>إنشاء حساب جامعة</title>
     <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../tarek/css/animationn.css" rel="stylesheet" />
    <link href="../tarek/css/media.css" rel="stylesheet" />
      <link href="../tarek/css/style.css" rel="stylesheet" />
  
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
         <div class="img">
            <img class="img-responsive" src="../tarek/images/casing.jpg" />            
        </div>
       
            <div class="row navhome">
                <div class="col-xs-12">
                    <span class="arow">></span>
                    <button class="btn btn-default inp">تسجيل الدخول</button>
                </div>
            </div><br />
         <div class="text-center dhome">
             <div class="bghome">
               <div class="cont">
                  <div class="col-xs-12 col-lg-4 hbt1">
                      <asp:Button ID="Button3" CssClass=" bttn have-result btn-success" runat="server" Text=" الحصول على النتيجة" />
                  </div>
                 <div class="col-xs-12 col-lg-4 hbt2">
                      <asp:Button ID="Button1" CssClass=" bttn input-information" runat="server" Text="      إدخال المعلومات" />
                  </div>
                 <div class="col-xs-12 col-lg-4 hbt3">
                      <asp:Button ID="Button2" CssClass="bttn shur-information" runat="server" Text="التأكد المعلومات       " />
                  </div>
             </div>
           </div>
         </div>
        </div>
    </form>

    <script src="../tarek/java%20script/jquery.js"></script>
    <script src="../tarek/java%20script/bootstrap.min.js"></script>
    <script src="../tarek/java%20script/js.js"></script>
</body>
</html>
