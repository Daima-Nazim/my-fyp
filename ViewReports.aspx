<%@ Page Title="" Language="C#" MasterPageFile="~/Patientmasterpage.master" AutoEventWireup="true" CodeFile="ViewReports.aspx.cs" Inherits="Patient_ViewReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <asp:gridview runat="server" ID="GV" AutoGenerateColumns="false" 
                         
         BackColor="#66CCFF" BorderStyle="Solid"  >
          <Columns>
                 <asp:BoundField DataField="ReportID" HeaderText="Report ID" />
                  <asp:BoundField DataField="UserName" HeaderText="Patient Name" />
                   <asp:BoundField DataField="Result" HeaderText="Result" />
                 

        
           
          </Columns>
      </asp:gridview>
   
    </div>
</asp:Content>

