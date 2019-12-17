<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DanhSachSP.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.DanhSachSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
        <div class="card shadow mb-4">
            
            <div class="card-body">
              <div class="table-responsive">
             
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2"></asp:Repeater>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VEGEFOODSConnectionString %>" SelectCommand="SELECT * FROM [food]"></asp:SqlDataSource>
            </div>
            </div>
          </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
     <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
</asp:Content>
