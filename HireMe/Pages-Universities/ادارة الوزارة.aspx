<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ادارة الوزارة.aspx.cs" Inherits="HireMe.Pages_Universities.ادارة_الوزارة" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>ادارة الوزارات</title>
    <meta charset="utf-8" content="width=device-width, initial-scale=1"/>
     <link href="../tarek/fontawesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../tarek/css/bootstrap.min.css" rel="stylesheet" />
   <style>
       .ministryhome
       {
           background-color:#14213D;
           height:30px;
           vertical-align:central;
       }
       .dropministry
       {
          width:300px;
          height:30px;
          margin:auto;
       }
       .updateministry
       {
           top:30px;
           position:relative;
       }
        .ministryhome .span1
       {
           color:white;
           font-weight:bold;
           font-size:17px;
           top:6px;
           position:relative;
           cursor:pointer;
       }
         .ministryhome .span2{
             direction:ltr;
             color:white;
             position:absolute;
             font-family:'Calisto MT';
             font-size:20px;
             left:10px;
             animation:morcolor 4s ease-in-out infinite;

         }
       selectmistry
       {
          background-color:#eee;
          width:300px;
          height:300px;
       }
       .col-xs-4 .btn1mistry, .col-xs-4 .btn3mistry, .col-xs-4 .btn2mistry
       {
           font-size:20px;
           font-weight:bold;
           border-radius:6px;
            color:white;
            padding-bottom:30px;
       }
       .col-xs-4 .btn3mistry
       {
           background-color:green;
          
         
       } 
       .col-xs-4 .btn1mistry
       {
           background-color:firebrick;
          
         
       } 
       .col-xs-4 .btn2mistry
       {
           background-color:#14213D;

       }
       
       .upminisrty
       {
         margin-left:150px;
          font-size:17px;
       }
      
       @keyframes morcolor
       {
           0%
           {
             
              color:green;
             
           }
           
            100%{
               color:white;
             
              
            }
       }
     @media(max-width:790px)
     {
        .upminisrty
        {
         position:absolute;
         right:120px;
        

        }
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
                
            </div><br /><br /><br />       
              <h1 class="updateministry text-center">تعديل الوزارات</h1><br /><br /><br /><br />
              <div class="col-xs-12 text-center" dir="rtl">
                  <label class="upminisrty"> المحافظة</label><br />
                  <asp:DropDownList ID="DropDownList1" class="dropministry form-control" runat="server">
                     
                     
                  </asp:DropDownList><br /><br />
                  <label class="upminisrty">تعديل الوزارة</label><br />
                  <asp:DropDownList ID="DropDownList2" class="dropministry form-control" runat="server">
                     
                  </asp:DropDownList><br /><br /><br />
              </div><br /><br /><br /><br /><br /><br />
             
              <div class="col-xs-4">
                  <asp:Button ID="btn2" CssClass="btn1mistry form-control" runat="server" Text="حذف" />
              </div>
              <div class="col-xs-4">
                  <asp:Button ID="btn3" CssClass="btn2mistry form-control" runat="server" Text="عودة" />
              </div>
               <div class="col-xs-4">
                  <asp:Button ID="btn1" CssClass="btn3mistry form-control" runat="server" Text="تم" />
              </div> 
            </div>
         
     </div>
        <br /><br />
    </form>
</body>
</html>
