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
    public partial class check_In : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                purDtCalendar.Visible = false;
                etaDtCalendar.Visible = false;
                etdDtCalendar.Visible = false;
                Vesselname_TextBox.Visible = false;
                AddVesselBtn.Visible = false;
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //try { 
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HardwareTrackerData.mdf;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into checkIn (vslNm, SrlNo, devNm, descrp, cat, mkr, purF, cost, osV, ram, purDt, delDtl, delPt, etaDt, etdDt) values ('" + VesselNameDDL.SelectedValue + "','"  + srlBox.Text + "','" + dvBox.Text + "','" + descBox.Text + "','" + catDropDownList.SelectedValue + "','" + mkrDropDownList.SelectedValue + "','" + purFDropDownList.SelectedValue + "','" + costTextBox.Text + "','" + DropDownList_OS.SelectedValue + "','" + DropDownList_RAM.SelectedValue + "','"  + purDtBox.Text +  "','" + descBox0.Text + "','" + delPtTextBox.Text + "','" + etaDtBox.Text + "','" + etdDtBox.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Inserted')", true);
            //}
           /*catch (SqlException ex)
           {
                if (ex.Number == 2627)
                    lblmsg.Text = "--- Details already exists ----";
                else
                    _ = lblmsg.Text == "An Error : " + ex.Message;
            }*/
        }

        protected void purDtCalendar_SelectionChanged(object sender, EventArgs e)
        {
            purDtBox.Text = purDtCalendar.SelectedDate.ToString("dddd, dd MMMM yyyy");
            purDtCalendar.Visible = false;
        }

        protected void purImageButton_Click(object sender, ImageClickEventArgs e)
        {
            if (purDtCalendar.Visible)
            {
                purDtCalendar.Visible = false;
            }
            else
            {
                purDtCalendar.Visible = true;
            }
            purDtCalendar.Attributes.Add("style", "position:inline");
        }

        protected void purDtCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Aquamarine;
            }
        }

        protected void etaImageButton_Click(object sender, ImageClickEventArgs e)
        {
            if (etaDtCalendar.Visible)
            {
                etaDtCalendar.Visible = false;
            }
            else
            {
                etaDtCalendar.Visible = true;
            }
            etaDtCalendar.Attributes.Add("style", "position:inline");
        }

        protected void etdImageButton_Click(object sender, ImageClickEventArgs e)
        {
            if (etdDtCalendar.Visible)
            {
                etdDtCalendar.Visible = false;
            }
            else
            {
                etdDtCalendar.Visible = true;
            }
            etdDtCalendar.Attributes.Add("style", "position:inline");
        }

        protected void etaDtCalendar_SelectionChanged(object sender, EventArgs e)
        {
            etaDtBox.Text = etaDtCalendar.SelectedDate.ToString("dddd, dd MMMM yyyy");
            etaDtCalendar.Visible = false;
        }

        protected void etaDtCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Aquamarine;
            }
        }

        protected void etdDtCalendar_SelectionChanged(object sender, EventArgs e)
        {
            etdDtBox.Text = etdDtCalendar.SelectedDate.ToString("dddd, dd MMMM yyyy");
            etdDtCalendar.Visible = false;
        }

        protected void etdDtCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Aquamarine;
            }
        }

        protected void AddVesselBtn_Click(object sender, EventArgs e)
        {
            if (Vesselname_TextBox.Text.Trim() != "")
            {
                VesselNameDDL.Items.Add(new ListItem(Vesselname_TextBox.Text, Vesselname_TextBox.Text));
            }
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HardwareTrackerData.mdf;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into vessels (vesselName) values ('"+ Vesselname_TextBox.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Inserted')", true);
        }

        protected void AddNewVessel_Click(object sender, EventArgs e)
        {
            if (Vesselname_TextBox.Visible)
            {
                Vesselname_TextBox.Visible = false;
            }
            else
            {
                Vesselname_TextBox.Visible = true;
            }
            Vesselname_TextBox.Attributes.Add("style", "position:inline");

            if (AddVesselBtn.Visible)
            {
                AddVesselBtn.Visible = false;
            }
            else
            {
                AddVesselBtn.Visible = true;
            }
            AddVesselBtn.Attributes.Add("style", "position:inline");
        }

        
    }
}