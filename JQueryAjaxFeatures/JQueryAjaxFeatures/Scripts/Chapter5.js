function WireEvents() {

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

function allowOnlyNumber(obj) {
    obj.live('keypress', function (e) {
        // only allows numbers
        if (e.keyCode < 48 || e.keyCode > 57) {
            e.stopPropagation();
            return false;
        }
    });
}
