using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myapplication
{
    public partial class Demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=DESKTOP-C17F9AU;Trusted_Connection=True;Database=new-db ;User ID=user;Password=motdepasse";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("connect");
            





            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select nom,prenom from essai";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            command.Dispose();
            cnn.Close();

        }
    
        

        protected void btnSubmit_Click(object sender, EventArgs e)

        {
           //ession["Name"] = txtName.Text;

            Response.Write(Session["Name"]);

            Response.Write(txtName.Text + "</br>");
            Response.Write(lstLocation.SelectedItem.Text + "</br>");

            lblName.Visible = false;
            txtName.Visible = false;
            lstLocation.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            btnSubmit.Visible = false;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}