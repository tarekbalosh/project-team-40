<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create account university.aspx.cs" Inherits="HireMe.Pages_Universities.create_account_university" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>إنشاء حساب جامعة</title>
     <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
      <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../tarek/css/animationn.css" rel="stylesheet" />
      <link href="../tarek/css/media.css" rel="stylesheet" />
      <link href="../tarek/css/style.css" rel="stylesheet" />
    <style>
    
        
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
    <script>
    function confirmpassword() {

    var email = document.getElementById("email").value,
        pas1 = document.getElementById("pa1").value,
        pas2 = document.getElementById("pa2").value;
    let E = 0, v;
   
  
    for (var i = 0; i <= email.length; i++)
    {
       
        if (email[i] == '@')
        {
            E++;
        }
        if (email[email.length - 1] == '@')
        {
            v = 0;
        }
       
    }
    if (email == "") {
        return;
    }
    else if(email != " ")
    {
        if (E > 1) {
            alert("you should one @  only >>" + "  " + email);
        }
        if (E == 0) {
            alert("you should add @ >>" + "  " + email);
        }

        if (v == 0) {
            alert("you should add text after  @  >>" + "  " + email);

        }

    }     
    if (pas1 != pas2)
    {
        alert("error in password");
        
        

    }
      
        }
        </script>
</body>
</html>
