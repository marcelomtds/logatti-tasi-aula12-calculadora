<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculadora.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Calculadora</title>
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ReadOnly="true" ID="txtResultado" runat="server" Width="200px"></asp:TextBox>
        </div>
        <p>
            <asp:Button CssClass="value" ID="btn7" runat="server" Text="7" CommandName="7" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn8" runat="server" Text="8" CommandName="8" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn9" runat="server" Text="9" CommandName="9" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnDividir" runat="server" Text="/" CommandName="/" OnClick="SetValue" />
        </p>
        <p>
            <asp:Button CssClass="value" ID="btn4" runat="server" Text="4" CommandName="4" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn5" runat="server" Text="5" CommandName="5" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn6" runat="server" Text="6" CommandName="6" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnMultiplicar" runat="server" Text="*" CommandName="*" OnClick="SetValue" />
        </p>
        <p>
            <asp:Button CssClass="value" ID="btn1" runat="server" Text="1" CommandName="1" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn2" runat="server" Text="2" CommandName="2" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btn3" runat="server" Text="3" CommandName="3" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnSubtrair" runat="server" Text="-" CommandName="-" OnClick="SetValue" />
        </p>
        <p>
            <asp:Button CssClass="value" ID="btn0" runat="server" Text="0" CommandName="0" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnPonto" runat="server" Text="." CommandName="." OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnSomar" runat="server" Text="+" CommandName="+" OnClick="SetValue" />
            <asp:Button CssClass="value" ID="btnLimpar" runat="server" Text="C" CommandName="/" OnClick="Clear" />
        </p>
        <p>
            <asp:Button CssClass="value-calculate" ID="btnCalcular" runat="server" Text="=" CommandName="/" OnClick="Calculate" />
        </p>
    </form>
</body>
</html>
