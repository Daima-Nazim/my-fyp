<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="UserLogInForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
         <br />
     <br />
         <br />
     <div style="margin-left:100px;margin-right:100px;">
     <div class="row" style="border-style: double; border-color: #000000; padding: inherit;" >
         <br />
         <br />
         <div style="margin-left:500px">
             <h3>Log In Form</h3>
                    <div class="col-sm-12" >
                          <label>Email</label><br />
                          <asp:TextBox runat="server" CssClass="form-control" ID="txtEmailAddress"></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailAddress" Text="*" ErrorMessage="Please enter your e-mal address" 
              ForeColor="Red" ID="RequiredFieldValidator2"  ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*" ErrorMessage="Please enter a valid e-mail address"
                 ForeColor="Red" ControlToValidate="txtEmailAddress"
               ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  >
            </asp:RegularExpressionValidator>
        </div>
       
         <br />
              <div class="row">
                       <div class="col-sm-12">
                    <label>Password</label><br />
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>
                              <asp:RequiredFieldValidator Text="*" ErrorMessage="Please enter your password" ForeColor="Red"
                                   ControlToValidate="txtPassword"
                 runat="server" ID="RequiredFieldValidator3" ></asp:RequiredFieldValidator>
                        </div>
        </div>

                      <br /> 
                       <div class="form-group text-center">
                              <asp:Button ID="btnlogin" runat="server" Text="LOGIN" OnClick="cmdLogin_Click" BackColor="#0099FF" BorderColor="#0099FF" BorderStyle="Groove" CssClass="btn btn-rounded"  ForeColor="White" Height="48px" Width="139px" Font-Bold="true"/>
                        </div>
                    <div class="form-group text-center">
                        <asp:Label runat="server" ID="lblMsg" ForeColor="Red"></asp:Label>
                        </div>
         <br />
         <br />
             <br />
         <br />

</div>
    </div>
    </div>
   
</asp:Content>

