<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="food_type.aspx.cs" Inherits="food_shop.admin.food_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Thêm Loại Thực Phẩm</h1>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                    <asp:TextBox ID="txtTypeName" CssClass="form-control form-control-user" placeholder="TypeName" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox ID="txtTypePos" CssClass="form-control form-control-user" placeholder="TypePos" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox ID="txtTypeImg" CssClass="form-control form-control-user" placeholder="TypeImg" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                    <asp:DropDownList ID="txtStatus" CssClass="form-control form-control-user" runat="server">
                                        <asp:ListItem Value="1">Hoạt Động</asp:ListItem>
                                        <asp:ListItem Value="2">Không Hoạt Động</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox ID="txtUsername" CssClass="form-control form-control-user" placeholder="Username" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox ID="txtModified" CssClass="form-control form-control-user" placeholder="Modified" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button ID="txtThemMoi" runat="server" Text="Thêm mới" class="btn btn-primary btn-user btn-block" OnClick="txtThemMoi_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div runat="server" id="txtkq"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
