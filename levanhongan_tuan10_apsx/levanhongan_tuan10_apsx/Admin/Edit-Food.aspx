<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit-Food.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.Edit_Food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
       <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Thêm Sản Phẩm</h1>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0" id="txtResuilt" runat="server">
                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox ID="Name" CssClass="form-control form-control-user" runat="server" placeholder="Name"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Des" CssClass="form-control form-control-user" runat="server" placeholder=" Description"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Des" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6   form-group">
                        <asp:TextBox ID="Price" CssClass="form-control form-control-user" runat="server" placeholder="Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Price" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Sai định dạng " ControlToValidate="Price" ValidationExpression="\d"></asp:RegularExpressionValidator>--%>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6  form-group">
                        <asp:TextBox ID="Price_promo" CssClass="form-control form-control-user" runat="server" placeholder="Price_promo"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Price_promo"></asp:RequiredFieldValidator>--%>
                    </div>


                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox ID="Thump" CssClass="form-control form-control-user" runat="server" placeholder="thump"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Thump" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Img" CssClass="form-control form-control-user" runat="server" placeholder="img"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Img" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 ">
                        <asp:TextBox ID="Unit" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Unit"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Unit" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6 ">
                        <asp:TextBox ID="Percent_promo" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Percent_promo"></asp:TextBox>

                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Rating" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Rating"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Không được để trống!!!" ControlToValidate="Rating" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Sold" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Sold"></asp:TextBox>

                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Point" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Point"></asp:TextBox>

                    </div>

                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="tType" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Type"></asp:TextBox>

                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="User" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Username"></asp:TextBox>

                    </div>
                    <div class="col-lg-4 col-sm-6">

                        <asp:TextBox ID="Modified" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Modified"></asp:TextBox>

                    </div>
                </div>

            </div>

            <asp:Button ID="btnThem" href="login.html" runat="server" Text="Thêm Sản Phẩm" CssClass=" btn btn-primary btn-user btn-block" OnClick="btnThem_Click" />



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
