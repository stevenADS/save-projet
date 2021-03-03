using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Myapplication

    { 
    public partial class Demo1 : System.Web.UI.Page
    {

        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;

            connetionString = @"Server=DESKTOP-C17F9AU;Trusted_Connection=True;Database=new-db ;User ID=user;Password=motdepasse";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("Connection Réussie");
            //cnn.Close();



            cnn.Close();

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["Name"] = txtName.Text;

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select nom,prenom from essai order by len([Nom]), [Prenom]";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Insert into Essai1(Nom,Prenom) values (" + ")";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Update Essai1 set Nom = '" + "Steven" + "' where Prenom = 1";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Delete Essai1 where Nom= '" +  "'";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //SqlDataSource1.Update();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}