using System;
using System.Web.UI.WebControls;

namespace Calculadora
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Calculate(object sender, EventArgs e)
        {
            try
            {
                var value = new System.Xml.XPath.XPathDocument
                    (new System.IO.StringReader("<r/>")).CreateNavigator().Evaluate
                    (string.Format("number({0})", new
                    System.Text.RegularExpressions.Regex(@"([\+\-\*])")
                    .Replace(txtResultado.Text, " ${1} ")
                    .Replace("/", " div ")
                    .Replace("%", " mod ")
                    .Replace("x", " * "))).ToString();
                if (value == "∞")
                {
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Não é possível dividir por zero.')", true);
                }
                else
                {
                    txtResultado.Text = value;
                }
            }
            catch (System.Xml.XPath.XPathException)
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Expressão inválida.')", true);
            }
        }

        protected void Clear(object sender, EventArgs e)
        {
            txtResultado.Text = "";
        }

        protected void SetValue(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            txtResultado.Text += btn.CommandName.ToString();
        }
    }
}