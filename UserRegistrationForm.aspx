<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistrationForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
         <br />
     <div style="margin-left:100px;margin-right:100px;">
     <div class="row" style="border-style: double; border-color: #000000; padding: inherit;" >
         <br />
         
         <div style="margin-left:500px">
             <h3>Sign Up Form</h3>
        <br />
        <br />

                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>User Name:</label>
        <br />
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="*" ErrorMessage="Please enter name" ForeColor="Red" 
                                ControlToValidate="txtName" runat="server" ID="RFVname" ></asp:RequiredFieldValidator>
                            <br />
                        </div>
                    </div>
        
        <br />
                    <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Email </label>
        <br />
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmailAddress"></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailAddress" Text="*" ErrorMessage="Please enter your e-mal address" 
              ForeColor="Red" ID="rfvemailaddress1"  ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVemail" runat="server" Text="*" ErrorMessage="Please enter a valid e-mail address"
                 ForeColor="Red" ControlToValidate="txtEmailAddress"
               ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  >
            </asp:RegularExpressionValidator>
                                    </div>
                                </div>
        
        <br />
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Password</label>
        <br />
                                      <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" ></asp:TextBox>
                              <asp:RequiredFieldValidator Text="*" ErrorMessage="Please enter your password" ForeColor="Red"
                                   ControlToValidate="txtPassword"
                 runat="server" ID="RequiredFieldValidator3" ></asp:RequiredFieldValidator>
                                        
                                    </div>
                                </div>
        
        <br />
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Confirm Password</label>
        <br />
                                        <asp:TextBox runat="server" ID="txtconfirmpasswd" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator Text="*" ErrorMessage="Please enter your password" ForeColor="Red"
                                   ControlToValidate="txtconfirmpasswd"
                 runat="server" ID="RFVCONFIRMPASSWD" ></asp:RequiredFieldValidator>
                                        <asp:CompareValidator runat="server" id="cvpasswd" Text="*" ErrorMessage="passwd not match"
                                             ControlToValidate="txtconfirmpasswd" 
                                            ControlToCompare="txtPassword" ></asp:CompareValidator>
                                            
                                    </div>
                                </div>

        
        
        <br />
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Age:</label>
        <br />
                            <asp:TextBox runat="server" CssClass="form-control"  ID="txtage"></asp:TextBox>
                        </div>
                    </div>
        
        <br />
         <div class="col-sm-12">
                        <div class="form-group">
                            <label>Gender:</label>
                            
        <br />
<asp:RadioButton runat="server" ID="rdmale" GroupName="gender" Text="Male" />
                            <asp:RadioButton runat="server" ID="rdfemale" GroupName="gender" Text="Female" />
                        </div>
                    </div>

        <br />
                    <div class="col-sm-12">
                        <div class="form-group">
                            <asp:Button CssClass="btn btn-primary" runat="server" ID="cmdSave" Text="Save" OnClick="cmdSave_Click" />
                        </div>
                    </div>
             <br /><br /><br /><br />
                </div>
           
     
    </div>
         </div>
   
</asp:Content>

