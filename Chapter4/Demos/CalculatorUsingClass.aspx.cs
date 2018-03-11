using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chapter4.App_Code;
namespace Chapter4.Demos
{
    public partial class CalculatorUsingClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = (string)Session["User"];
            lblWelcome.Text = " hi " + userName;
        }
        
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if ((txtValue1.Text != "") && (txtValue2.Text != ""))
            {
                double result = 0;
                Calculator myCalculator = new Calculator();
                try
                {
                    double value1 = Double.Parse(txtValue1.Text);
                    double value2 = Double.Parse(txtValue2.Text);

                    switch (ddlOperator.SelectedValue)
                    {
                        case "+":
                            result = myCalculator.Add(value1,value2);
                            break;
                        case "-":
                            result = myCalculator.Subtract(value1, value2);
                            break;
                        case "*":
                            result = myCalculator.Multiply(value1,value2);
                            break;
                        case "/":
                            result = myCalculator.Divide(value1,value2);
                            break;
                    }
                    lblResult.Text = result.ToString();
                }
                catch (Exception)
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = " please enter numeric values for both numbers";

                }




            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = " please enter values for both numbers";
            }
        }
    }
    
}