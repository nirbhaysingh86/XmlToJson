using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace XmlToJson
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            string filePath = Server.MapPath("~/App_Data/XMLFile1.xml");
            doc.Load(filePath);
            doc.LoadXml(doc.InnerXml.Replace("type=\"System.String\"",""));
            string json = JsonConvert.SerializeXmlNode(doc);
            JObject myObject = (JObject)JsonConvert.DeserializeObject(json);
            string jsons = myObject["RepeaterData"]["Items"]["Item"].ToString(Newtonsoft.Json.Formatting.None);
            //Binding gridview from dynamic object   
            gvXmlToJson.DataSource = (new JavaScriptSerializer()).Deserialize<List<XMLData>>(jsons);
            gvXmlToJson.DataBind();
        }
    }
    public class XMLData
    {
        public string HazardTask { get; set; }
        public string HazardCategory { get; set; }
        public string HazardAssociatedHarm { get; set; }
        public string HazardExistingControls { get; set; }
        public string HazardAdditionalControls { get; set; }
        public string RiskConsequence { get; set; }
        public string RiskLikelihood { get; set; }
        public string HazardRiskRating { get; set; }
        public string HazardCostControls { get; set; }
        public string HazardReasonablePracticable { get; set; }

    }
}