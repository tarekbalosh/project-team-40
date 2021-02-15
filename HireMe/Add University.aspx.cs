using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Add_University
{
    public partial class Add_University : System.Web.UI.Page
    {
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Display Universities.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                UniCountry.Items.Add("Damascus");
                UniCountry.Items.Add("Aleppo");
                UniCountry.Items.Add("Houms");
                UniCountry.Items.Add("Latakia");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           

        }

        protected void uniEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            uniName.Text = "";
            uniEmail.Text = "";
            uniPass.Text = "";
            uniConPass.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd1, cmd2;
            string Name, Email, Password, ConPassword, Country;
            string str = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=HireMe;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            Name = uniName.Text;
            Country = UniCountry.SelectedValue;
            Email = uniEmail.Text;
            Password = uniPass.Text;
            ConPassword = uniConPass.Text;
            cmd1 = new SqlCommand("select university_name,university_email,university_password,university_country from tb_university", con);
            cmd2 = new SqlCommand("insert into tb_university(university_name,university_email,university_password,university_country) values('" + Name + "','" + Email + "','" + Password + "','" + Country + "')", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                if (Name == "")
                {
                    Label1.Text = "You must enter your name.";
                }
                if (Email == "")
                {
                    Label2.Text = "You must enter an Email.";
                }
                if (Password == "")
                {
                    Label3.Text = "You must enter a password.";
                }
                if (ConPassword != Password)
                {
                    Label4.Text = "Password and Confirm Password dose not match";
                }
                if (Name == dt.Rows[i][0].ToString() && Email == dt.Rows[i][1].ToString())
                {
                    Label1.Text = "This name already used.";
                    Label2.Text = "This Email already used.";
                    con.Close();
                }
                else if (Name == dt.Rows[i][0].ToString())
                {
                    Label1.Text = "This name already used.";
                    con.Close();
                }
                else if (Email == dt.Rows[i][1].ToString())
                {
                    Label2.Text = "This Email already used.";
                    con.Close();
                }
                else
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('University added sucessfully')</script>");
                    con.Close();
                }
            }
            SqlCommand cmd1, cmd2;
            string Name, Email, Password, ConPassword, Country;
            string str = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=HireMe;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            Name = uniName.Text;
            Country = UniCountry.SelectedValue;
            Email = uniEmail.Text;
            Password = uniPass.Text;
            ConPassword = uniConPass.Text;
            cmd1 = new SqlCommand("select university_name,university_email,university_password,university_country from tb_university", con);
            cmd2 = new SqlCommand("insert into tb_university(university_name,university_email,university_password,university_country) values('" + Name + "','" + Email + "','" + Password + "','" + Country + "')", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                if (Name == "")
                {
                    Label1.Text = "You must enter your name.";
                }
                if (Email == "")
                {
                    Label2.Text = "You must enter an Email.";
                }
                if (Password == "")
                {
                    Label3.Text = "You must enter a password.";
                }
                if (ConPassword != Password)
                {
                    Label4.Text = "Password and Confirm Password dose not match";
                }
                if (Name == dt.Rows[i][0].ToString() && Email == dt.Rows[i][1].ToString())
                {
                    Label1.Text = "This name already used.";
                    Label2.Text = "This Email already used.";
                    con.Close();
                }
                else if (Name == dt.Rows[i][0].ToString())
                {
                    Label1.Text = "This name already used.";
                    con.Close();
                }
                else if (Email == dt.Rows[i][1].ToString())
                {
                    Label2.Text = "This Email already used.";
                    con.Close();
                }
                else
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('University added sucessfully')</script>");
                    con.Close();
                }
            }

        }
    }
}