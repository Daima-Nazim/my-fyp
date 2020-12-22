<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogIn.aspx.cs" Inherits="admin_adminLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="row">
                    <div class="col-sm-6">
                            <label>Email</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtEmailAddress"></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailAddress" Text="*" ErrorMessage="Please enter your e-mal address" 
              ForeColor="Red" ID="RequiredFieldValidator2"  ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*" ErrorMessage="Please enter a valid e-mail address"
                 ForeColor="Red" ControlToValidate="txtEmailAddress"
               ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  >
            </asp:RegularExpressionValidator>
        </div>
        </div>
              <div class="row">
                       <div class="col-sm-6">
                            <label>Password</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>
                              <asp:RequiredFieldValidator Text="*" ErrorMessage="Please enter your password" ForeColor="Red"
                                   ControlToValidate="txtPassword"
                 runat="server" ID="RequiredFieldValidator3" ></asp:RequiredFieldValidator>
                        </div>
        </div>

                       
                       <div class="form-group text-center">
                            <asp:Button ID="btnlogin" runat="server" Text="LOGIN" OnClick="cmdLogin_Click" BackColor="#0099FF" BorderColor="#0099FF" BorderStyle="Groove" CssClass="btn btn-rounded"  ForeColor="White" Height="48px" Width="139px" Font-Bold="true"/>
                        </div>
                    <div class="form-group text-center">
                         <asp:Label runat="server" ID="lblMsg" ForeColor="Red"></asp:Label>
                        </div>


   
    
    </div>
    </form>
</body>
</html>
