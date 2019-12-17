<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="list_food.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.list_food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
     <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Danh Sách Sản Phẩm    </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Thumb</th>
                            <th>Unit</th>
                            <th>Type</th>
                            <th>Status</th>
                            <th>Username</th>
                            <th>Modified</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>

                                <tr>
                                    <td><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td><asp:Label ID="desLabel" runat="server" Text='<%# Eval("description") %>' /></td>
                                    <td><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td><asp:Label ID="thumbLabel" runat="server" Text='<%# Eval("thumb") %>' /></td>
                                    <td><asp:Label ID="unitLabel" runat="server" Text='<%# Eval("unit") %>' /></td>
                                    <td><asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' /></td>
                                    <td><asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' /></td>
                                    <td><asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' /></td>
                                    <td><asp:Label ID="modifiedLabel" runat="server" Text='<%# Eval("modified") %>' /></td>
                                      <td>
                                       <a href="ThemSanPham.aspx?id=<%#Eval("id") %>"  > Chỉnh Sửa</a>
                                       <%-- <asp:Button ID="btnEdit" runat="server" Text="Chỉnh Sửa" />--%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEGEFOODSConnectionString2 %>" SelectCommand="SELECT * FROM [food]" ></asp:SqlDataSource>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
     <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>js/demo/datatables-demo.js"></script>
</asp:Content>
