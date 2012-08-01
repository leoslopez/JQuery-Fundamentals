<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="jQuerySelectors.Views.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>    
    
    <link href="~/Styles/Chapter4.css" rel="stylesheet" type="text/css" />

    <script src="/Scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="/Scripts/Chapter4.js" type="text/javascript"></script>

    <script type="text/javascript">    

        $(document).ready(function () {
            var mytable = $('#MyTable');
            $('tr:even', mytable).addClass('LigthEvenRowClass');
            $('tr:odd', mytable).addClass('LigthOddRowClass');
            WireEvents();
        });        
                      
    </script>

</head>
<body> 
    <div style="border:1px solid Gray; background-color:Silver; margin:20px; font-family:Comic Sans MS; font-size:small">
        <h3>JQuery Fundamentals - Exercises of chapter 4:</h3>
        <p>1 - When Copy button is clicked the corresponding event is fired and the last and first names are written in a div.</p>
        <p>2 - When the mouse passes over or out of "My Div 1", the mouseenter and mouseleave events are fired and the div will change its color.
            When click is done over it, the X and Y coordinates will be displayed.</p>
        <p>3 - When "Comments" or "Countries" values are changed, the change event is fired and the background color of them will be changed to yellow.</p>
        <p>4 - When the mouse passes over or out of "My Div 2", the mouseenter and mouseleave events are fired and the div will change its color.
            When click is done over it, the X and Y coordinates will be displayed (using Bind method in order to attach events).</p>
        <p>5 - When click on Unbind button the click event is fired and unbind mouseup event from "My Div 2".</p>        
        <p>6 - Bind 'keypress' event to phone textbox using LIVE in order to allow numbers or "-" only.</p>
        <p>7 - Bind 'change' event to phone select using DELEGATE in order to change border styles for the phone number textboxes.</p>
        <p>8 - Change rows color when the mouse enter or leave from them (using hover).</p>
        <p>9 - Change "My Div 3" color when click over it (using toggle).</p>
    </div>
    <div id="MyDiv" class="GreenBorder">My Div 1</div>
    <br />
    <div id="MyDiv2" class="OrangeBorder">My Div 2</div>
    <br />
    <div id="MyDiv3" class="LimeBorder">My Div 3</div>
    <br />
    <form id="form1" runat="server">
        <table id="MyTable" style="width:300px;">
            <tr>
                <td style="width:30%;">First Name</td>
                <td style="width:70%;"><input id="FirstNameTextBox" type="text" value="Tito" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input id="LastNameTextBox" type="text" value="John" /></td>
            </tr>
            <tr>
                <td>Comments</td>
                <td><textarea rows="5" cols="60" id="CommentsTextBox" class="MyInput">TextArea</textarea></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <input type="button" id="addPhone" value="Add Phone" />
                    <div id="phonesDiv" style="margin-top:10px">
                        <div class="phoneTypeDiv" style="float:left; margin-right:10px">
                            <select class="phoneType">
                                <option value="" selected="selected">Select One:</option>
                                <option value="Mobile">Mobile</option>
                                <option value="Office">Office</option>
                            </select>
                        </div>
                        <div class="phoneNumberDiv">
                            <input type="text" class="phoneNumber" maxlength="12" />
                        </div>                        
                    </div>
                </td>                
            </tr>           
            <tr>
                <td>Countries</td>
                <td>
                <select id="sel" class="MyInput">
                    <option value="AZ">AZ</option>
                    <option value="CA" selected="true">CA</option>
                </select></td>                
            </tr>
            <tr>
                <td><input id="button1" type="button" value="Copy" /></td>
                <td>
                    <div id="outputDiv">First and Last: </div>
                </td>
            </tr>
            <tr>
                <td><input id="button2" type="button" value="Unbind" /></td>
                <td>
                    <div id="outputDiv2"></div>
                </td>
            </tr>
        </table>
        <br />        

    </form>
</body>
</html>
