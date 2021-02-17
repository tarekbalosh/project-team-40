<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADD MISTRY.aspx.cs" Inherits="HM.ADD_MISTRY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>ADD MINISTY</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/css/file.css" />
    <script src="js/js/jquery.js"></script>
    <script src="js/js/bootstrap.min.js"></script>
    <script src="js/js/file.js"></script>
    <style>

        @media(max-width:769px)
             {
                 .send {
             width: 150px;
             position: relative;
             right: 20px;
         }
         .casing 
         {
             width: 700px;
             height: 100px;    
             position:relative;
             
            
         }
         .dropdown{
            position:relative;
            right: 900px;
             font-weight: bold;
             font-size: 15px
         }
         .jump {
             width: 300px;
         }

           
            .send
            {
                position:relative;
                right:30px;
                width:150px;
            }
        }
        .li
        {
            margin-right:200px;
        }

   @keyframes next
{
    0% {
        width: 0%;
    }

    100% {
        width: 900px;
    }
}
.heading 
{
    animation: next 1s ease-in-out;
}

    
       
    </style>
</head>
     <body id="bod" class="container" style="background-image:url(image/photobac2.png); width:100%;" >
         <div class="container">

         <div class="heading">
         <img class="casing img-responsive" src="css/casing.jpg" style=" width:100%;" />
         <nav class="navbar navbar-expend-md navbar-dark bg-dark  navbar navbar-default  ">

            
             <span class=" brand">HIR_ME</span>
             <div class="collapse navbar-collapse" id="show">

                 <ul class="navbar-nav" id="man">
                    
                     <li class="nav-item dropdown" style="margin-right:300px;">
                         <a class="nav-link" href="#">Home</a>

                     </li>
                 </ul>
             </div>
         </nav>
             </div>
         </div>
        
         
            <div class="container">
                 <div class="row">
                      <div class="jump">
                         
                          <form class="" runat="server">
                              <p class="land">ADD MINISTY</p>
                              <label class="subject1">name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input class="form-control txt " type="text" required="required" id="name" runat="server" placeholder="input name" /><br />
                              
                              <br />

                              <label class="subject">password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input class="form-control txt" type="password" required="required" placeholder="input password" runat="server" maxlength="12" id="pa1" /><br />

                               <label class="subject" style="font-size:15px">password Confirmation</label>
                              <input class="form-control txt" type="password" required="required" placeholder="input password"  maxlength="12" id="pa2" runat="server" /><br />

                              <label class="subject">gmile</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input class="form-control txt" type="text" id="gmail" runat="server" required="required" placeholder="input gmile"/><br />
                                <input type="button" runat="server" value="send" class="send form-control" style="color:white" onserverclick="Unnamed_ServerClick"/>   
                          </form>
                     </div>
                 </div>
               
            </div><br /><br /><br /><br /><br /><br />
         

        
        <script>
            function input() {

                var y = 0;
                t = document.getElementById("gmail").value;
                var pas1 = document.getElementById("pas1").value,
                    pas2 = document.getElementById("pas2").value,
                    name = document.getElementById("name").value;



                for (var i = 0; i < t.length; i++) {
                    if (t[i] == '@') {
                        y++;
                    }
                }
                if (pas1 != pas2) {
                    alert("error in password");

                }
                else if (t[0] == '@') {
                    alert("you should not content index one from @");

                }
                else if (y > 1) {
                    alert("you should not content more from @");

                }
                else if (y == 0) {
                    alert("the field gmail must contain an '@'" + '<<' + t + '>>');

                }


                else if (t[t.length - 1] == "@") {
                    alert("you must add text after" + "<< " + t + " >>");

                }

            }
        </script>
     </body>
       
    

</html>





<!--<li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" data-target="wasem" data-toggle="dropdown">
                         Language
                         <span class="caret"></span>
                     </a>
                        <div class="dropdown-menu" aria-labelledby="wasem">
                            <ul class="navbar-nav">
                                <a class=" dropdown-itemn">php</a>&nbsp;&nbsp;&nbsp;
                                <a class=" dropdown-itemn">css</a>&nbsp;&nbsp;&nbsp;
                                <a class=" dropdown-itemn">js </a>&nbsp;&nbsp;&nbsp;
                            </ul>
                        </div>
                    </li>
                     <li class="nav-item dropdown">
                         <a class="nav-link" href="#">Login</a>

                     </li>-->