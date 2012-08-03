using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetAnimals : System.Web.UI.Page
{
    public class Animal
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public int Value { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        var pageSize = (string.IsNullOrEmpty(Request["PageSize"])) ? 10 : Int32.Parse(Request["PageSize"]);

        var animals = new List<Animal>();

        for (int i = 1; i <= pageSize; i++)
        {
            var animal = new Animal()
                            {
                                Name = "Toby" + i,
                                Type = "Ladrador",
                                Value = 1000 * i
                            };

            animals.Add(animal);
        }

        dlAnimals.DataSource = animals;
        dlAnimals.DataBind();
    }
}