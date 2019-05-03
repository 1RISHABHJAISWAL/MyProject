using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StudentForm
{
    public partial class StudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["StudentId"] != null)
                {
                    string connstr = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString;
                    using (SqlConnection conn=new SqlConnection(connstr))
                    {
                        using (SqlCommand cmd=new SqlCommand("display_student_data", conn))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@studentid", Request.QueryString["StudentId"]);
                            using (SqlDataAdapter adda=new SqlDataAdapter(cmd))
                            {
                                using (DataTable dt=new DataTable())
                                {
                                    adda.Fill(dt);
                                    if (dt.Rows.Count > 0)
                                    {
                                        TextBox1.Text = dt.Rows[0]["FirstName"].ToString();
                                        TextBox2.Text = dt.Rows[0]["LastName"].ToString();
                                        DropDownList1.SelectedItem.Text = dt.Rows[0]["Title"].ToString();
                                        DropDownList2.SelectedItem.Text = dt.Rows[0]["Department"].ToString();
                                        TextBox3.Text = dt.Rows[0]["Address"].ToString();
                                        TextBox4.Text = dt.Rows[0]["City"].ToString();
                                        TextBox5.Text = dt.Rows[0]["State"].ToString();
                                        TextBox6.Text = dt.Rows[0]["Country"].ToString();
                                        TextBox7.Text = dt.Rows[0]["PostalCode"].ToString();
                                        TextBox8.Text = dt.Rows[0]["MobNo"].ToString();
                                        TextBox9.Text = dt.Rows[0]["EmailAddress"].ToString();
                                    }
                                }
                            }
                        }
                    }
                    Button1.Visible = false;
                    Button3.Text = "Update";
                    Button3.Visible = true;
                }
                
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString;
            using (SqlConnection conn=new SqlConnection(connstr))
            {
                conn.Open();

                using (SqlCommand cmd=new SqlCommand("insert_student_form", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@title", DropDownList1.Items[DropDownList1.SelectedIndex].Value);
                    cmd.Parameters.AddWithValue("@department", DropDownList2.Items[DropDownList2.SelectedIndex].Value);
                    cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@city", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@state", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@country", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@postalcode", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@mobno", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@emailaddress", TextBox9.Text);
                    cmd.ExecuteNonQuery();
                    Response.Write("Student Registration Succesfully!!! Thank You");
                    conn.Close();
                    Response.Redirect("~/StudentList.aspx");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString;
            using (SqlConnection conn=new SqlConnection(connstr))
            {
                conn.Open();
                using (SqlCommand cmd=new SqlCommand("update_form", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@studentid", Request.QueryString["StudentId"]);
                    cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@title", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@department", DropDownList2.Items[DropDownList2.SelectedIndex].Value);
                    cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@city", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@state", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@country", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@postalcode", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@mobno", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@emailaddress", TextBox9.Text);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("~/StudentList.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
        }
    }
}