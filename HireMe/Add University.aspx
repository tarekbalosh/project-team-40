<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add University.aspx.cs" Inherits="Add_University.Add_University" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add University</title>
    <link rel="stylesheet" href="css/style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style type="text/css">
        #uniCountry {
            width: 362px;
            height: 50px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
   <!--HEADER-->
    <header class="mainHeader">
        <img src="css/casing.jpg" width="900"/>
        <nav><ul>
            <li><a href="#"> <i class="fa fa-home"></i> Home</a></li>
            <li><a href="#"> <i class="fas fa-list-alt"></i> Profile</a></li>
            <li><a href="#"> <i class="fa fa-question-circle"></i> About</a></li>
            <li><a href="#"><i class="fas fa-phone"></i> Contact</a></li>  
        </ul></nav>

    </header>

    <!--DOCUMENT-->
    <div class="mainContent">
        <section class="top-Content">
            <div class="login-Content">
                <div class="login">
            <header>
                <h2>Create University Account</h2>
            </header>
                    <br />
                    <asp:TextBox ID="uniName" runat="server" style="border-right-style:none;border-top-style:none;" placeholder="University Name" ></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    Country<br />
                    <asp:DropDownList ID="UniCountry" runat="server" style="background:none; width:75%;outline:none; border:none;border-bottom: 2px solid #2e4788;padding: 10px;
    margin: 0px 0 10px 0;">
                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="uniEmail" runat="server" style="border-right-style:none;border-top-style:none;" placeholder="Email" OnTextChanged="uniEmail_TextChanged"></asp:TextBox><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                <asp:TextBox ID="uniPass" runat="server" style="border-right-style:none;border-top-style:none;" placeholder="Password" TextMode="Password" ></asp:TextBox><%--</i>--%><asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                <asp:TextBox ID="uniConPass" runat="server" style="border-right-style:none;border-top-style:none;" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><%--</i>--%><asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                    <br />                     
            <footer>
                 <asp:Button ID="Button1" runat="server" Text="SUBMIT"  style=" padding: 5px;margin: 5px;text-align: center;border: 3px solid  #2e4788;  outline: none;
background: none;cursor: pointer;font-size: 16px;" Height="40px" Width="100%" OnClick="Button1_Click1"/>

                 <button type="reset" runat="server" onserverclick="Unnamed_ServerClick">&nbsp;RESET</button> 
                 <button runat="server" onserverclick="Button1_Click">DISPLAY</button>                                      
            </footer>
                    
            <article>
            </article>
               </div>
            </div>
        </section>
    </div>

    <!--SIDE-->
    <aside></aside>

    <!--FOOTER-->
    <footer></footer>
    
    <script src="icons.js"></script>
    </form>
</body>
</html>
