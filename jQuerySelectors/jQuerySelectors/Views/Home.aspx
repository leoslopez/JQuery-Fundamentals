<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="jQuerySelectors.Views.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <style type="text/css">
        .BlueDiv { background-color: Navy; color: White; width: 200px }
        .RedDiv { background-color: Red; color: White; width: 200px }
        .GreenBorder { border: 2px solid Green; }
        .RedText { color: Red; }
        .OrangeText { color: Orange; }
        .OliveBackground { background-color: Olive; }
        .OrangeBackground { background-color: Orange; }
        .style1
        {
            width: 100%;
        }
    </style>
    
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script type="text/javascript">


        $(document).ready(function () {


            //            alert('Obtain paragraphs, spans and change border style.');
            //            var objs = $('p, span');
            //            objs.each(function () {
            //                $(this).css('border', '3px dashed orange');
            //            });


            // alert('obtain divs (only divs) with BlueDiv and RedDiv classes and change border style.');
            //            $('div.BlueDiv, div.RedDiv').css('border', '3px dashed orange');


            // alert('change border sytle to the divs with defined title attribute.');
            //            $('div[title]').css('border', '3px dashed orange');


            //            alert('change border sytle to the divs with title equal to "Contains Table".');
            //            $('div[title="Contains Table"]').css('border', '3px dashed green');

            //                        alert('obtain inputs and set "AZ" value for all of them.');
            //                        $(':input').each(function () {
            //                            $(this).val('AZ');
            //                        });   


//            alert('obtain divs which contain "Group 2" text and change its color.');
//                        $('div:contains("Group 2")').addClass('OrangeBackground');


//            alert('obtain tr and change its color.');
//            $('tr:odd').addClass('OrangeBackground');
//            $('tr:even').addClass('OliveBackground');


//            alert('obtain the first child of every element group and change its color.')
//                                    $('span:first-child').addClass('OliveBackground');

//            alert('Select all inputs with value that begins with "aButton". Select all inputs with value that ends with "b2". Select all inputs with value that contains "Button"')
//            $('input[value^="aButton"').addClass('RedText');
//            $('input[value$="b2"').addClass('OrangeText');
//            $('input[value*="Button"').addClass('GreenBorder');

        });

            
                          
    </script>

</head>
<body>
    <div>
        <input type="button" value="aButton b1" />
        <input type="button" value="Button b2" />
        <input type="button" value="aButton b3" />
    </div>
    <div id="group1">
        <span>Child 1 - Group 1</span>
        <br />
        <span>Child 2 - Group 1</span>
    </div>
    <br />
    <div id="group2">
        <span>Child 1 - Group 2</span>
        <br />
        <span>Child 2 - Group 2</span>
    </div>
    <div id="TestDiv" title="Div Title asdf asdfsdf asdf">
        This is my div text
    </div>
    <div title="Contains Table">
        <table id="DataTable">
          <tr>
             <td>Cell 1 Row 1</td>
          </tr>
          <tr>
             <td>Cell 1 Row 2</td>
          </tr>
          <tr>
             <td>Cell 1 Row 3</td>
          </tr>
          <tr>
             <td>
                <table style="width:100%">
                    <tr>
                        <td>Nested Table Cell and Row</td>
                    </tr>
                </table>
             </td>
          </tr>
        </table>
        <br />
    </div>
    <div class="BlueDiv">
        <span>Blue div</span>
    </div>
    <br />
    <span class="BlueDiv">This is my blue span</span>
    <br />
    <div class="RedDiv">
        <span>Red div</span>
    </div>
    <p class="RedDiv">
        A comment...
    </p>
    <p>
        <img src="/Images/pluralsight.jpg" />
    </p>

    <form id="form1" runat="server">
        <table style="width:300px;">
            <tr>
                <td style="width:30%;">First Name</td>
                <td style="width:70%;"><input id="FirstNameTextBox" value="John" type="text" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input id="LastNameTextBox" type="text" /></td>
            </tr>
            <tr>
                <td>Comments</td>
                <td><textarea rows="5" cols="60" id="CommentsTextBox">TextArea</textarea></td>
            </tr>           
            <tr>
                <td>
                <select id="sel">
                    <option value="AZ">AZ</option>
                    <option value="CA" selected="true">CA</option>
                </select></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><input id="SubmitButton" type="button" value="Submit" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>  

    </form>
</body>
</html>
