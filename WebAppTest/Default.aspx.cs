﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Prevent multiple reloads during postbacks
            {
                var connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
                DataTable dt = new DataTable();
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Adjusted query to fetch all columns
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Meny", conn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    dt.Load(reader);
                    reader.Close();
                }

               
                if (dt.Rows.Count > 0)
                {
                    var result = new System.Text.StringBuilder();
                    foreach (DataRow row in dt.Rows)
                    {
                        foreach (DataColumn column in dt.Columns)
                        {
                            result.Append($"{column.ColumnName}: {row[column]}<br/>");
                        }
                        result.Append("<hr/>"); // Separate each row visually
                    }

                    LabelManPris.Text = result.ToString();
                }
                else
                {
                    LabelManPris.Text = "No data found.";
                }
            }
        }


    }




}

       //protected void ButtonSearchLastName_Click(object sender, EventArgs e)
       //{
            //SqlParameter param;
            //var connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            //DataTable dt = new DataTable();
            //using (SqlConnection conn = new SqlConnection(connectionString))
            //{
            //    conn.Open();

            //    SqlCommand cmd = new SqlCommand("SELECT * from Person where etternavn = @lastName", conn);
            //    cmd.CommandType = CommandType.Text;

            //    //params here
            //    param = new SqlParameter("@lastName", SqlDbType.NChar);
            //    param.Value = TextBoxLastName.Text; //variabel som blir sendt inn til metoden. Kommer fra bruker som tastet dette inn i et tekstfelt.
            //    cmd.Parameters.Add(param);

                

            //    SqlDataReader reader = cmd.ExecuteReader();
            //    dt.Load(reader);
            //    reader.Close();
            //    conn.Close();
            //}
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        //}

        //protected void ButtonSearchFirstName_Click(object sender, EventArgs e)
       //{
            //SqlParameter param;
            //var connectionString = ConfigurationManager.ConnectionStrings["ConnCms"].ConnectionString;
            //DataTable dt = new DataTable();
            //using (SqlConnection conn = new SqlConnection(connectionString))
            //{
            //    conn.Open();

            //    SqlCommand cmd = new SqlCommand("SELECT * from Person where fornavn = @forNavn", conn);
            //    cmd.CommandType = CommandType.Text;

            //    //params here
            //    param = new SqlParameter("@forNavn", SqlDbType.NChar);
            //    param.Value = TextBoxFirstName.Text; //variabel som blir sendt inn til metoden. Kommer fra bruker som tastet dette inn i et tekstfelt.
            //    cmd.Parameters.Add(param);



            //    SqlDataReader reader = cmd.ExecuteReader();
            //    dt.Load(reader);
            //    reader.Close();
            //    conn.Close();
            //}
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        //}
    
