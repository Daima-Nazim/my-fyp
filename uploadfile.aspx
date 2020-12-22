<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patientmasterpage.master" AutoEventWireup="true" CodeFile="uploadfile.aspx.cs" Inherits="Patient_uploadfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
         <br />
     <br />
         <br />
     <div style="margin-left:100px;margin-right:100px;">
     <div class="row" style="border-style: double; border-color: #000000; padding: inherit;" >
          <div class="col-sm-12">
									<div class="form-group">
										<label>Retinal Image</label>
										<br />
												 <asp:Image id="docimage" runat ="server"  Height ="100px" Width="100px" />
                                         
											
												 <asp:FileUpload runat="server" ID="flupload" Width="253px" />
                                                		
										
											</div>
											
										
									</div>
         <div class="col-sm-12">
             <asp:Button id="btnupload" runat="server" text="Upload" OnClick="btnsave_Click" />
         </div>
         <div class="form-group text-center">
                        <asp:Label runat="server" ID="lblMsg" ForeColor="Red"></asp:Label>
                        </div>
         </div>
         </div>
</asp:Content>

