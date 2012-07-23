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
        .HighlightClass { background-color: yellow; }
        
    </style>
    
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script type="text/javascript">


        $(document).ready(function () {

            //            alert('Build html content using certain nodes and set this content to another node.');
            //            var html = '';

            //            $('div.BlueDiv, div.RedDiv').each(function (index) {
            //                html += "<br />" + index + " " + $(this).text();
            //            });

            //            var output = $('#OutputDiv');
            //            output.addClass('GreenBorder');
            //            output.html(html);

            //            alert('Modifying properties and attributes.');
            //            $('div.BlueDiv, div.RedDiv').each(function (index) {
            //                var div = $(this);
            //                div.css('font-size', '25pt');
            //                div.attr('title', 'Some Title');
            //            });

            //            alert('Modifying properties and attributes using JSON.');
            //            $('div.BlueDiv, div.RedDiv').attr(
            //                {
            //                    title: 'Some Title New',
            //                    style: 'background-color:violet'
            //                })
            //                .css('font-size', '20pt')
            //                .css('color', 'green');

            //            alert('testing append and prepend');
            //            var tcd = $('#TableContainerDiv');
            //            tcd.append('<span class="OliveBackground">Appended child 1</span>');
            //            tcd.prepend('<span class="OliveBackground">Prepended child 1</span>');

            //            alert('testing wrap');
            //            $('span.foo').wrap('<div class="RedDiv ParentWraper" />')
            //            $('div.ParentWraper').each(function () {
            //                alert($(this).html());
            //            });
            //            alert('testing remove');
            //            $('div.ParentWraper').remove();

            alert('Testing Class functions');
            //$('input[type="text"]').toggleClass('HighlightClass');

        });

        function FocusBlur(tb) {
            $(tb).toggleClass('HighlightClass');
        }        
            
                          
    </script>

</head>
<body>    
    <div id="OutputDiv"></div>

    <div id="TableContainerDiv" title="Contains Table">
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
    <span class="foo">span 1</span>
    <span class="foo">span 2</span>
    <span class="foo">span 3</span>
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
                <td style="width:70%;"><input id="FirstNameTextBox" value="John" onfocus="FocusBlur(this)" onblur="FocusBlur(this)" type="text" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input id="LastNameTextBox"  onfocus="FocusBlur(this)" onblur="FocusBlur(this)" type="text" /></td>
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
