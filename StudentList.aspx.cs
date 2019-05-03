using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace StudentForm
{
    public partial class StudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridData();
            }
        }

        public void BindGridData()
        {
            string select_command = "Select * from Student_Data";
            using (SqlConnection conn=new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter adda=new SqlDataAdapter(select_command, conn))
                {
                    using (DataTable dt=new DataTable())
                    {
                        adda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                string StudentId = e.CommandArgument.ToString();
                Response.Redirect("~/StudentForm.aspx?StudentId=" + StudentId);
            }
            if (e.CommandName == "Delete")
            {
                string StudentId = e.CommandArgument.ToString();
                string connstr = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();
                    string delete_student_data = "Delete From Student_Data where StudentId=@studentid";
                    using (SqlCommand cmd = new SqlCommand(delete_student_data, conn))
                    {
                        //cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@studentid", StudentId);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        this.BindGridData();
                    }
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //this.BindGridData();
        }
    }
}