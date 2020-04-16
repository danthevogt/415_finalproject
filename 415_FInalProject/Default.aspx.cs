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
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/2abd23f891284eb98f5356e46b5cb743/services/25cae0be6e7a42f383bc8c9d22845432/execute?api-version=2.0&details=true");
            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer 4DLSz1Ulm2VrIAxzfZ58KhloOLnbfCe50va1g+ya4AXdfk3/BeZ154EenhykPeWHUo47r/icSR06rYf8zh5ppg==");
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("application/json,text/plain", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"Marital Status\",\r\n        \"Gender\",\r\n        \"Income\",\r\n        \"Children\",\r\n        \"Cars\",\r\n        \"Age\",\r\n        \"Education\",\r\n        \"Occupation\",\r\n        \"Home Owner\",\r\n        \"Commute Distance\",\r\n        \"Region\",\r\n        \"Purchased Bike\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"" + rblMaritalStatus.SelectedItem.Text + "\",\r\n          \"" + rblGender.SelectedItem.Text + "\",\r\n          \"" + txtIncome.Text + "\",\r\n          \"" + ddlChildren.SelectedValue + "\",\r\n          \"" + txtCars.Text + "\",\r\n          \"" + txtAge.Text + "\",\r\n          \"college\",\r\n          \"farmer\",\r\n          \"yes\",\r\n          \"33\",\r\n          \"alberta\",\r\n          \"yes\"\r\n        ],\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);

            var results = JObject.Parse(response.Content);
            string prediction = results["Results"]["output1"]["value"]["Values"].ToString();
            prediction = prediction.Replace("[", "").Replace("]", "").Replace("\"", "");

            //Get response to front page
            lblResults.Text = prediction;

            Console.WriteLine(response.Content);
        }
    }
}