using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _415_FInalProject
{
    public partial class input : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                Label1.Text = ("Song Added to Database!");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Do Something
            SqlConnection songs = new SqlConnection("Server=tcp:spotifyfinalproject.database.windows.net,1433;Initial Catalog=spotify;Persist Security Info=False;User ID=finalproject211;Password=PFOXkbR74F!@vBZHw;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                SqlCommand insert = new SqlCommand("EXEC dbo.InsertSong @track, @artist, @danceability, @energy, @loudness, @acousticness, @instrumentalness, @target", songs);
                insert.Parameters.AddWithValue("@track", txtTrack.Text);
                insert.Parameters.AddWithValue("@artist", txtArtist.Text);
                insert.Parameters.AddWithValue("@danceability", txtDance.Text);
                insert.Parameters.AddWithValue("@energy", txtEnergy.Text);
                insert.Parameters.AddWithValue("@loudness", txtLoud.Text);
                insert.Parameters.AddWithValue("@acousticness", txtAcoustic.Text);
                insert.Parameters.AddWithValue("@instrumentalness", txtInstrument.Text);
                insert.Parameters.AddWithValue("@target", 1);

                songs.Open();
                insert.ExecuteNonQuery();
                songs.Close();

                if (IsPostBack)
                {
                    txtTrack.Text = "";
                    txtArtist.Text = "";
                }

            }

        }
    }
}