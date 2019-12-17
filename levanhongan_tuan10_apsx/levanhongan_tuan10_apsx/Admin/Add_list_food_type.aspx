<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_list_food_type.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.Add_list_food_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Thêm  Loại Sản Phẩm</h1>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0" id="txtResuilt" runat="server">
                    </div>

                </div>

                 <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="type_name" CssClass="form-control form-control-user" runat="server" placeholder=" Type Name "></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="type_name" ForeColor="Red" ></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label2" runat="server" Text="Type Pos"></asp:Label>
                        <asp:TextBox ID="type_pos" CssClass="form-control form-control-user" runat="server" placeholder=" Type_Pos"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="type_pos" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>



                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
                       <%-- <asp:TextBox ID="Img" CssClass="form-control form-control-user" runat="server" placeholder="Type Img"></asp:TextBox>--%>
                       
                        <asp:FileUpload ID="FileUpload1" runat="server" />
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>

                </div>


                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label4" runat="server" Text="Ststus"></asp:Label>
                       <%-- <asp:TextBox ID="type_status" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Status"></asp:TextBox>--%>
                        <asp:DropDownList ID="DDlStatus" runat="server" CssClass="form-control form-control-user">
                            <asp:ListItem Value="0">Bán</asp:ListItem>
                            <asp:ListItem Value="1">Ngưng Bán</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="DDlStatus" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>



                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="type_user" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="type_user" ForeColor="Red"> </asp:RequiredFieldValidator>
                    </div>

                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="lbl16" runat="server" Text="Modified"></asp:Label>
                        <asp:TextBox ID="t_modified" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Modified"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="t_modified" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                </div>
            </div>

            <asp:Button ID="btnThem" runat="server" Text="Thêm Sản Phẩm" CssClass=" btn btn-primary btn-user btn-block" OnClick="btnThem_Click" />



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
