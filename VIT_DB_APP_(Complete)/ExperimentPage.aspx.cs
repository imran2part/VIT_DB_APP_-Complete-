using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace VIT_DB_APP__Complete_
{
    public partial class ExperimentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            if (dropDownList.SelectedValue == "Other")
            {
                TextBox1.Enabled = true;
                TextBox1.Text = string.Empty;
            }
            else
            {
                TextBox1.Enabled = false;
                TextBox1.Text = dropDownList.SelectedValue;
            }
        }
    }
}