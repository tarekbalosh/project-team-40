<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page admin.aspx.cs" Inherits="project_40.page_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>page admin</title>
    <meta charset="UTF-8"/>
    <link href="tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="tarek/css/bootstrap.min.css" rel="stylesheet" />
    <link href="tarek/css/style.css" rel="stylesheet" />
    <link href="tarek/css/animationn.css" rel="stylesheet" />
    <link href="tarek/css/media.css" rel="stylesheet" />
    <style>
       .nav-item{
           display:inline-block;
       }
      
      @media(max-width:766px)
      {
          .shooo{
              width:300px;             
              position:relative;
               top: 20px;
               left: 60px;
               border-radius:15px;
          }
          .item{
              position:relative;
              right:60px;
              
          }
          .d2{
             padding:1px 0px;
             width:40px;
          }
          .bbt1{
             padding:1px 3px;
             width:40px;
          }
          .bbtn
          {
             
            position:absolute;
              left:95px;
              width:120px;
              color:darkred;
              top:8px;
               font-weight:bold;
              font-size:14px;
              text-align:center;

          }
  
         .home{
             direction: rtl;
             margin-left: 70%;
             margin-top: 8px;
             font-weight: bold;
             font-size: 17px;
        }
      }
         @media(width:280px)
       {
           .shooo{
              width:300px;             
              position:relative;
               top: 20px;
               left: -10px;
               border-radius:15px;
          }
            .home{
             direction: rtl;
             margin-left: 65%;
             margin-top: 8px;
             font-weight: bold;
             font-size: 12px;
        }
            .bbtn
          {
             
            position:absolute;
              left:65px;
              width:120px;
              color:darkred;
              margin-top:-5px;
               font-weight:bold;
              font-size:10px;
              text-align:center;
              
          }
            .bbtn:focus, .bbtn:hover{
                 border:1px dotted white;
                color:green;
            }
       }
  .selec1, .selec2 
  {
    display: inline-block;
    width: 100px;
    border-color: darkblue;
   
  }
  .bbtn
  {
     text-align:center;
    position:absolute;
      right:900px;
      top:10px;
      padding:5px 3px;
       font-weight:bold;
       color:red;

  }
  .bbtn:hover{
       border:1px dotted red;
     
  }
        .bbtn:active {
            color:green;
        }
        @media(min-width:767px) and (max-width:1030px)
        {
             .shooo{
              width:600px;              
              position:relative;
               top: 100px;
               
               animation:none;
               border-radius:15px;
               color:red
          }
             .home{
             direction: rtl;
             margin-left: 80%;
             margin-top: 8px;
             font-weight: bold;
             font-size: 17px;
        }
              .bbtn
          {
             
            position:absolute;
              left:120px;
              width:120px;
              color:darkred;
              top:8px;
               font-weight:bold;
              font-size:14px;
              text-align:center;

          }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" runat="server">
        <div class="img">
            <img class="img-responsive" src="tarek/images/casing.jpg" />
        </div>
        <nav class="navbar navbar-default bg-dark  navbar-dark" id="nav">

            <div class="container">
                <div class="row">
                   
                    <span class="brand" id="hir">Hire-Me</span>
                    
                        <ul class="navbar-nav home">
                            <li class="nav-item">
                                <a class="nav-link move" href="#">Home</a> <i class="fa fa-home fa-md" style="color:grey"></i>
                            </li>
                            <li class="nav-item">
                              
                                    <a href="#" class="nav-link"> <p class="bbtn">توقيف الموقع</p></a>
                         

                            </li>
                        </ul>
                        </div>
               
            </div>
        </nav>
        <br />
   <div class="" style="direction:rtl">
      <input type="button" class="maham" value="المهام"  onclick="trans()"/>
          <br />
        <div class="task jumbotron " id="rasem" style="display:none;">
            
           <div class="sem" style="display:flex;">
              <div class="sem" style="display:inline-block">
                 <p class="item">إدارة حسابات </p>   
              </div>
              <div class="offset" style="display:inline-block">
                    <a href="administration university.aspx"><p class="cor" style="font-size:20px">الجامعة</p></a>
                    <a href="#"> <p class="cor" style="font-size:20px">الوزارة</p></a>
                    <a href="#"><p class="cor" style="font-size:20px">الشواغر المتاحة</p></a>
              </div>
           </div>
               
           <div class="sem" style="display:flex;">
              <div class="sem" style="display:inline-block">
                 <p class="item">استعراض حسابات </p>   
              </div>
              <div class="offset" style="display:inline-block">
                    <a href="#"><p class="cor" style="font-size:20px">الجامعة</p></a>
                    <a href="#"><p class="cor" style="font-size:20px">الوزارة</p></a>
                    <a href="#"><p class="cor" style="font-size:20px">الشواغر المتاحة</p></a>
              </div>
           </div><br />
    <div class="grent">
              <p class="item" onclick="mofad()"> إعطاء أولية الفرز</p> 
     </div> 
  </div>
       </div>
        </div>
    
        <div class="shooo" id="ch" style="display:none">
            <select class="selec2 form-control text-center" size="8" runat="server">
                    <option class="opt1" value="mastr" runat="server">mastr</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                    <option class="opt1" value="bakaloruas" runat="server">bakaloruas</option>
                </select>

           <div class="d2 bd2" runat="server" >
                <p class="bbt1" runat="server"><<</p><br />
                <p class="bbt1" runat="server">>></p>
           </div>
           <div class="d1">
                
               <div class="d3">
                <select class="selec1 form-control text-center" size="8" runat="server"></select>
            </div>
          </div>
      
      </div>
 
    

    
   
    </form>
   <script>
     
   </script>
    <script src="tarek/java%20script/bootstrap.min.js"></script>
    <script src="tarek/java%20script/jquery.js"></script>
    <script src="tarek/java%20script/js.js"></script>

</body>
</html>
