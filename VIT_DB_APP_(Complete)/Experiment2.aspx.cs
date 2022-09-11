using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace VIT_DB_APP__Complete_
{
    public partial class Experiment2 : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                
                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Name FROM Customers"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        cbCustomers.DataSource = cmd.ExecuteReader();
                        cbCustomers.DataTextField = "Name";
                        cbCustomers.DataBind();
                        con.Close();
                    }
                }
            }
        }
        protected void Submit(object sender, EventArgs e)
        {

            // string message = "Selected Text: " + cbCustomers.SelectedItem.Text;
            // message += "\\nSelected Value: " + cbCustomers.SelectedItem.Value;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HardwareTrackerData.mdf;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Customers (Name) values ('" + cbCustomers.Text +  "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Inserted')", true);

        }
    }
}