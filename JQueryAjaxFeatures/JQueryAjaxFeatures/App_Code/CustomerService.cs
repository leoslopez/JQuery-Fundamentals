using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;
using System.ServiceModel.Activation;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CustomerService" in code, svc and config file together.
[ServiceContract(Namespace = "")] 	 
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
[ServiceBehavior(IncludeExceptionDetailInFaults = true)]
public class CustomerService
{
    [OperationContract]
    [WebGet]
	public void DoWork()
	{
        return;
	}

    [OperationContract]
    public List<Customer> GetCustomers()
    {
        return new List<Customer> 
        {
            new Customer
            {
                ID = 1,
                FirstName = "Customer 1",
                LastName = "El Apellido del Customer 1"

            },

            new Customer
            {
                ID = 2,
                FirstName = "Castomer Two",
                LastName = "Zapata"
            }
        };
    }

    [OperationContract]
    [WebGet(RequestFormat = WebMessageFormat.Json)]
    public OperationStatus InsertCustomer(Customer cust)
    {
        // Simulates a correct inserting a customer.
        return new OperationStatus
        {
            InsertedID = 453,
            Status = true,
            Message = "Customer inserted: " + cust.ID + " - " + cust.FirstName + " " + cust.LastName
        };
    }    
}
