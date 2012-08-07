using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization.Json;

public partial class GetCustomers : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/json";

        var customerId = string.IsNullOrEmpty(Request["id"]) ? 0 : int.Parse(Request["id"]);

        var cust = new Customer()
        {
            ID = customerId,
            FirstName = "Tito",
            LastName = "Lecture"
        };

        var ser = new DataContractJsonSerializer(typeof(Customer));
        ser.WriteObject(Response.OutputStream, cust);
    }
}