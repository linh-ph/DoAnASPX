<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="List_Food_type.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.List_Food_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<% Page.ResolveUrl("~/Amin/"); %>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Danh Sách Loại Sản Phẩm</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr>
                            <%--<th>Id</th>--%>
                            <th>Type Name</th>
                            <th>Pos</th>
                            <th>Type_images</th>
                            <th>Status</th>
                            
                            <th>Username</th>
                            <th>Modified</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                     <%--<td>
                                            <asp:Label ID="type_id" runat="server" Text='<%# Eval("type_id") %>' /></td>--%>
                                        <td>
                                    <asp:Label ID="type_name" runat="server" Text='<%# Eval("type_name") %>' /></td>
                                    <td>
                                        <asp:Label ID="pos" runat="server" Text='<%# Eval("type_pos") %>' /></td>
                                    <td>
                                        <image id="images" src="<%# Eval("type_img","img/{0}")%>"></image>
                                        <%--<asp:Image runat="server" ID="images" ImageUrl="'~/Admin/img/'<%# Eval("type_img")%> "></asp:Image>--%>
                                    <td>
                                        <asp:Label ID="status" runat="server" Text='<%# Eval("status") %>' /></td>
                                        <td>
                                        <asp:Label ID="type" runat="server" Text='<%# Eval("username") %>' /></td>
                                    <td>
                                        <asp:Label ID="UserName" runat="server" Text='<%# Eval("username") %>' /></td>
                                    <td>
                                        <asp:Label ID="Modified" runat="server" Text='<%# Eval("modified") %>' /></td>
                                    <td>

                                        <asp:Button ID="btnEdit" runat="server" Text=" Sửa" CommandArgument='<%# Eval("type_id")%>' CommandName="s" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEGEFOODSConnectionString3 %>" SelectCommand="SELECT * FROM [food_type]"></asp:SqlDataSource>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- DataTales Example -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="<%=Page.ResolveUrl("~/Admin/") %>js/demo/datatables-demo.js"></script>
</asp:Content>
