<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADD MISTRY.aspx.cs" Inherits="HM.ADD_MISTRY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     
    <title>add ministy</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/file.css" />
   

</head>

       
     <body id="bod" class="container" style="background-image:url(images/photobac2.png)" >
     
         <nav class="navbar navbar-expend-md navbar-dark bg-dark navbar-fixed-top  navbar navbar-default ">
         

             <button class="navbar-toggle" data-toggle="collapse" data-target="#show" onclick="right()">
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
             </button>
             <span class=" brand">HIR_ME</span>
             <div class="collapse navbar-collapse next" id="show">

                 <ul class="navbar-nav " id="man">
                    <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" data-target="wasem" id="la" data-toggle="dropdown" style="color:white" onclick="language()">
                         Language
                         <span class="caret"></span>
                     </a>
                        <div class="dropdown-menu" aria-labelledby="wasem">
                            <ul class="navbar-nav">
                                <a class=" dropdown-item">php</a>&nbsp;&nbsp;&nbsp;
                                <a class=" dropdown-item">css</a>&nbsp;&nbsp;&nbsp;
                                <a class=" dropdown-item">js </a>&nbsp;&nbsp;&nbsp;
                            </ul>
                        </div>
                    </li>
                     <li class="nav-item dropdown">
                         <a class="nav-link" href="#" style="color:white;">Login</a>

                     </li>
                     <li class="nav-item dropdown" >
                         <a class="nav-link" href="#" style="color:white;">Home</a>

                     </li>
                 </ul>
             </div>
         </nav><br /><br /><br /><br /><br /><br />
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
                                <input type="button" runat="server" value="send" class="send form-control" style="color:white" onserverclick="Unnamed_ServerClick" onclick="input();" />
                          </form>
                     </div>
                 </div>
               
            </div>
         



    <script src="js/icons.js"></script>  
    <script src="js/file.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/file.js"></script>

     </body>
       
    

</html>
