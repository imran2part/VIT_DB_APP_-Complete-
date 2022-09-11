using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VIT_DB_APP__Complete_
{
    public partial class check_Out : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HardwareTrackerData.mdf;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("Update CheckOut set osV = '" + OSBox.Text + "',ram = '" + RAMBox.Text + "' WHERE srlNo = '" + srlBox.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Inserted')", true);
        }

        protected void ChkOutBtn_Click(object sender, EventArgs e)
        {
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HardwareTrackerData.mdf;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO CheckOut SELECT * FROM checkIn WHERE srlNo ='" + srlBox.Text + "'", con);
            SqlCommand comm1 = new SqlCommand("DELETE FROM checkIn WHERE srlNo ='" + srlBox.Text + "'", con);
            comm.ExecuteNonQuery();
            comm1.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Transfer')", true);
        }
    }
}