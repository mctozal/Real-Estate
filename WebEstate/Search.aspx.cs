using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using WebEstate;
namespace WebEstate
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand komut = new SqlCommand();
            connection.Open();
            komut.Connection = connection;
            komut.CommandText = "select * from properties_estate";
            komut.ExecuteNonQuery();
            SqlDataReader dr = komut.ExecuteReader();

            SqlCommand cmdSearch = new SqlCommand("Select * from properties_estate where city_area='" + TextBox1.Text + "' or rentORsell ='" + TextBox1.Text + "' or city_area ='" + DropDownList2.SelectedItem.Text + "' or rentORsell = '" + DropDownList1.SelectedItem.Text + "' ", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmdSearch);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "RunCode", "javascript:alert('Sorry No Records Found with this Keyword.....');document.location.href='default.aspx';", true);

            }
            else
            {
                View1.DataSource = dt;
                View1.DataBind();
            }
        }

        protected void View1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}