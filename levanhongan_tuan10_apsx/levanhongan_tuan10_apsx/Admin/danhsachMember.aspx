<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="danhsachMember.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.danhsachMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= Page.ResolveUrl("~/Amin/") %>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Member List  </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered " id="dataTable">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <%--<th>Password</th>--%>
                            <th>Role</th>
                            <th>Status</th>
                            <th></th>
                            <th></th>

                        </tr>
                    </thead>

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td>
                                        <asp:Label ID="user" runat="server" Text='<%# Eval("username") %>' /></td>
                                    <td>
                                        <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="phone" runat="server" Text='<%# Eval("phone") %>' /></td>
                                    <td>
                                        <asp:Label ID="email" runat="server" Text='<%# Eval("email") %>' /></td>
                                    <%-- <td><asp:Label ID="password" runat="server" Text='<%# Eval("pass") %>' /></td>--%>
                                    <td>
                                        <asp:Label ID="role" runat="server" Text='<%# (Eval("role").ToString()== "0" ? "admin" : "user") %>' /></td>
                                    <td>
                                        <asp:Label ID="status" runat="server" Text='<%# (Eval("status").ToString()=="0"?"Hoạt Động":"Không Hoạt Động") %>' /></td>
                                    <td>

                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" Commandargument='<%# Eval("id") %>' CommandName="s" />

                                    </td>
                                    <td>
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" /></td>

                                </tr>
                            </tbody>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEGEFOODSConnectionString4 %>" SelectCommand="SELECT * FROM [member_2]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>js/demo/datatables-demo.js"></script>
</asp:Content>
