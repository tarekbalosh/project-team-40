<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Condition.aspx.cs" Inherits="HireMe.Add_Condition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddCondition</title>
    <link href="css/StyleDn.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="AddCond" runat="server">
        <div>
            <!--HEADER-->
             <header class="mainHeader">
                 <img src="css/casing.jpg" />
                 <nav><ul>
                     <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
                     <li><a href="#"> <i class="fas fa-list-alt"></i> Portfolio</a></li>
                     <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
                     <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
                 </ul></nav>
            </header>

            <!--DOCUMENT-->
             <div class="mainContent">
                 <section class="top-Content">
                     <div class="login-Content">
                         <div class="login">
                             <h2>Condition Adding</h2>
                             <br />

                             <label>Specialization : </label>                             
                             <select id="select_spec" runat="server">
                                 <%--Database--%>
                             </select><br />

                             <label>Condition name : </label>
                             <input type="text" name="c_name" id="condiname" value="" />
                             <br />

                             <label>Condition type : </label>
                             <select id="select_type" runat="server">
                                 <option value="رقمي">Digital</option>
                                 <option value="نصي">Textual</option>
                                 <option value="متعددي">Multiple</option>
                             </select>
                             <br />

                             <asp:Button ID="btn_addCond" runat="server" Text="Add" />
                             <asp:Button ID="btn_Back" runat="server" Text="Back" />

                         </div>
                     </div>
                  </section>
             </div>

             <!--SIDE-->
              <aside></aside>

             <!--FOOTER-->
              <footer></footer>

            <script src="css/icons.js"></script>
        </div>
    </form>
</body>
</html>
