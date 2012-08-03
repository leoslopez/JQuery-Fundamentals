<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetAnimals.aspx.cs" Inherits="GetAnimals" %>
<%--
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">--%>
    <div>
        <asp:DataList ID="dlAnimals" runat="server">
            <HeaderTemplate>
                <table class="animalsTable">
                    <tr>
                        <th>Name</th>
                        <th>Type</th>                        
                        <th>Value</th>
                    </tr>                
            </HeaderTemplate>                
            <ItemTemplate>
                <tr>    
                    <td><%# Eval("Name")%></td>
                    <td><%# Eval("Type")%></td>
                    <td><%# Eval("Value")%></td>                    
                </tr>
            </ItemTemplate>                
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:DataList>
    
   <%-- </div>
    </form>
</body>
</html>--%>
