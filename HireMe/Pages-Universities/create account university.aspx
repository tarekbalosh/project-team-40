<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create account university.aspx.cs" Inherits="HireMe.Pages_Universities.create_account_university" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>إنشاء حساب جامعة</title>
     <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../tarek/css/animationn.css" rel="stylesheet" />
      <link href="../tarek/css/media.css" rel="stylesheet" />
      <link href="../tarek/css/tarek-style.css" rel="stylesheet" />
    <style>
     body{
        
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
               
                    <div class="col-xs-12 ministryhome" dir="rtl">
                <span class="span1" runat="server">الصفحة الرئيسية</span>
                <span class="span2" runat="server"> H I R E_ M E</span>
                
            </div>
                
                    <br /><br />
                     <div class="col-xs-12 col-md-6 part2 ">
                  <div class="l2">
                      <strong>إنشاء حساب الجامعة </strong><br /><br />
                      <form class="form1">
                          <label>الإسم<sup>*</sup></label><br />
                          <input type="text" required="required" class="form-control" /><br /><br />
                         
                          <label>الإيميل<sup>*</sup></label><br />
                          <input type="text" required="required" class="form-control" id="email" /><br /><br />
                          <label>كلمة السر<sup>*</sup></label><br />
                          <input type="password" required="required" class="form-control" id="pa1" /><br /><br />
                          <label>تأكيد كلمة السر <sup>*</sup></label><br />
                          <input type="password" required="required" class="form-control" id="pa2" maxlength="12" /><br /><br />
                          <input type="checkbox"  class="check1 " value=" " /><span class="sp2">  I agree to the</span><span class="sp1">  Terms of use </span><span class="sp2">and the </span><span class="sp1"> privacy policy</span><br /><br />
                           <input type="submit" class="btn-info" value="Sign up" onclick="confirmpassword()" />

                      </form>
                  </div>
              </div>
                    </div>
               
            </div>

    </div>
             <br />
    </form>
    <script src="../tarek/java%20script/bootstrap.min.js"></script>
    <script src="../tarek/java%20script/jquery.js"></script>
    <script src="../tarek/java%20script/java.js"></script>
</body>
</html>
