
////******* Bind events related to UsingLoad.html ******////
function WireEventsUsingLoad() {

    allowOnlyNumber($('#txtCountAnimals'));    

    // Exercise 1
    $('#myButton1').click(function () {
        $('#outputDiv').load('MyOtherPage1.html #myFirstDivPage1');
    });

    $('#myButton2').click(function () {
        $('#outputDiv').load('MyOtherPage1.html #mySecondDivPage1');
    });

    // Exercise 2
    $('#myErrorButton').click(function () {
        $('#outputDiv').load('NotFound.html', function (response, status, xhr) {
            if (status == "error") {
                alert('This is your error: ' + xhr.statusText);
            }
        });
    });

    // Exercise 3            
    $('#btnAnimals').click(function () {
        var txtCountAnimals = $('#txtCountAnimals').val();
        $('#divAnimals').load('GetAnimals.aspx', { PageSize: txtCountAnimals });
    });
}


////******* Bind events related to UsingGet.html ******////
function WireEventsUsingGet() {

    allowOnlyNumber($('#txtCustomerID'));
    
    // Exercise 4
    $('#myButton1').click(function () {
        $.get('MyOtherPage1.html', function (data) {
            $('#outputDiv').html(data);
        });
    });

    // Exercise 5
    $('#myButton2').click(function () {
        var customerId = $('#txtCustomerID').val();
        $.get('GetCustomers.aspx', { id: customerId }, function (data) {
            fillCustomerInfo(data, $('#lblID'), $('#lblFirst'), $('#lblLast'));
        }, 'json');
    });

    // Exercise 6
    $('#myButton3').click(function () {
        var customerId = $('#txtCustomerID3').val();
        $.getJSON('GetCustomers.aspx', { id: customerId }, function (data) {
            fillCustomerInfo(data, $('#lblID3'), $('#lblFirst3'), $('#lblLast3'));
        });
    });

}


////******* Bind events related to UsingPost.html ******////
function WireEventsUsingPost () {
    allowOnlyNumber($('#txtCountAnimals'));

    // Exercise 7
    $('#myButton1').click(function () {
        var size = $('#txtCountAnimals').val();
        $.post('GetAnimals.aspx', { pageSize: size },
            function (data) {
                $('#outputDiv').html(data);
            });
    });

    // Exercise 8
    $('#myButton2').click(function () {
        $.post('CustomerService.svc/GetCustomers',
        null,
        function (data) {

            // obtain number of customer to be displayed
            var checked = $("input[@name=customerOption]:checked").val()

            var cust = data.d[checked];
            fillCustomerInfo(cust, $('#lblID'), $('#lblFirst'), $('#lblLast'));
        }, 'json');
    });
}


////******* Bind events related to UsingPost.html ******////
function WireEventsUsingAjax() {

    $('#myButton').click(function () {

        var customer = 'cust=' +
                            JSON.stringify({
                                FirstName: $('#txtFirstName').val(),
                                LastName: $('#txtLastName').val()
                            });

        $.ajax({
            url: 'CustomerService.svc/InsertCustomer',
            data: customer,
            dataType: 'json', // type of data returned from the server.
            success: function (data, status, xhr) {                
                var spanInsert = $('#spanInsert');
                spanInsert.append(data.d.Message);
                spanInsert.append('<br />');
            },
            error: function (xhr, status, error) {
                alert('Error ocurred: ' + status);
            }
        });

    });
}


////******* Common Code ******////
function fillCustomerInfo(data, lblId, lblFirstName, lblLastName) {
    lblId.text(data.ID);
    lblFirstName.text(data.FirstName);
    lblLastName.text(data.LastName);
}

function allowOnlyNumber(obj) {
    obj.live('keypress', function (e) {
        // only allows numbers
        if (e.keyCode < 48 || e.keyCode > 57) {
            e.stopPropagation();
            return false;
        }
    });
}
