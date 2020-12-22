<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewfeatures.aspx.cs" Inherits="admin_viewfeatures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <asp:gridview runat="server" ID="GV" AutoGenerateColumns="false" 
                         
         BackColor="#66CCFF" BorderStyle="Solid"  >
          <Columns>
                 <asp:BoundField DataField="FeatureID" HeaderText="Feature ID" />
                  <asp:BoundField DataField="FeatureName" HeaderText="FeatureName" />
                <asp:BoundField DataField="DieaseID" HeaderText="Diease ID" />
                      <asp:BoundField DataField="DieaseName" HeaderText="Diease Name" />
                 

        
           
          </Columns>
      </asp:gridview>
   
    </div>
</asp:Content>

