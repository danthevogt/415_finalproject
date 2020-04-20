using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using Newtonsoft.Json.Linq;

namespace _415_FInalProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lbPredict_Click(object sender, EventArgs e)
        {

            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/4529c119463c4a0cbf18f000c68a5f3e/services/92057ab33d9c41d2adc7d98dc5981c69/execute?api-version=2.0&details=true");
            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("Authorization", "Bearer +ohSx7Ixj/i4x+Hpxzs3x+SI4XP5z+yzPaCNFHgTNT8KlzyUeKdlWaDq23MmZ20vP5hoicELi0M37Kml/4CwFw==");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("application/json,text/plain", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"track\",\r\n        \"artist\",\r\n        \"danceability\",\r\n        \"energy\",\r\n        \"loudness\",\r\n        \"acousticness\",\r\n        \"instrumentalness\",\r\n        \"target\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"" + txtTrack.Text + "\",\r\n          \"" + txtArtist.Text + "\",\r\n          \"" + txtDance.Text + "\",\r\n          \"" + txtEnergy.Text + "\",\r\n          \"" + txtLoud.Text + "\",\r\n          \"" + txtAcoustic.Text + "\",\r\n          \"" + txtInstrument.Text + "\",\r\n          \"0\"\r\n        ],\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);

            var results = JObject.Parse(response.Content);
            string prediction = results["Results"]["output1"]["value"]["Values"].ToString();
            prediction = prediction.Replace("[", "").Replace("]", "").Replace("\"", "");

            //Get response to front page
            lblResults.Text = prediction;

            Console.WriteLine();
        }
    }
}