using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter4.Demos
{
    public partial class SimpleLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirm.Text)
            {
                //add user to session
                Session["user"] = txtUsername.Text;
                Response.Redirect("CalculatorUsingClass.aspx");

            } else
            {
                lblError.Text = " passwords did not match";
            }
        }
    }
}