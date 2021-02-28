<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADD MISTRY.aspx.cs" Inherits="HM.ADD_MISTRY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>
       
       .mainHeader img{
    width: 100%;
}

.mainHeader nav{
    background-color: #192a56;
    height: 40px;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
}

.mainHeader nav ul{
    text-align: center;
    list-style: none;
    margin: 0 auto;
}

.mainHeader nav ul li{
    display: inline;
}

.mainHeader a:link, a:visited{
    color: white;
    padding: 10px 40px;
    display: inline-block;
    height: 20px;
}

.mainHeader a:hover, a:active{
     color: rgb(255, 255, 255);
     background-color: #2f4274;
     text-shadow: 1px 1px black;
}
   </style>
     
   

  

    <title>ADD MINISTY</title>
   
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/css/bootstrap.min.css"/>
    <link href="css/css/ministry.css" rel="stylesheet" />
    <script src="js/js/jquery.js"></script>
    <script src="js/js/bootstrap.min.js"></script>
    <script src="js/js/file.js"></script>
    
</head>
     <body id="bod" class="container" style="background-image: url('../image/white.jpg'); width:100%;" >
        
   <div class="container">
      <header class="mainHeader ">
          <img  src="css/casing.jpg" />
        <nav><ul>
            <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
            <li><a href="#"> <i class="fas fa-list-alt"></i> Portfolio</a></li>
            <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
            <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
        </ul></nav>

    </header>
   </div>
         <br /><br />
        
         
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
         

    
     </body>
       
    

</html>
