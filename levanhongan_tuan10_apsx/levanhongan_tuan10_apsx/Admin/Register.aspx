<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">

                    <%--<h1 class="h4 text-gray-900 mb-4">Đăng Ký Member</h1>--%>
                    <asp:Label ID="lblTitle" runat="server" Text="Đăng Ký Member"></asp:Label>
                    

                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0" id="txtResuilt" runat="server">
                    </div>

                </div>
                <%--<form class="user">--%>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="Userame" CssClass="form-control form-control-user" runat="server" placeholder="User Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui Lòng Nhập Username" ControlToValidate="Userame" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="Name" CssClass="form-control form-control-user" runat="server" placeholder=" Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui Lòng Nhập Name" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4  form-group">
                        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="InputEmail" CssClass="form-control form-control-user" runat="server" placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui Lòng Nhập Email" ControlToValidate="InputEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Sai định dạng email" ControlToValidate="InputEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="InputPassword" type="password" CssClass="form-control form-control-user" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui Lòng Nhập Password" ControlToValidate="InputPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label7" runat="server" Text="Re-Password"></asp:Label>
                        <asp:TextBox ID="exampleRepeatPassword" type="password" CssClass="form-control form-control-user" runat="server" placeholder="Repeat Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Vui Lòng Nhập Re-Password" ControlToValidate="exampleRepeatPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu khác nhau" ControlToCompare="InputPassword" ControlToValidate="exampleRepeatPassword" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
                        <asp:TextBox ID="PhoneNumber" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Phone Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui Lòng Nhập Phone Number" ForeColor="Red" ControlToValidate="PhoneNumber"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Sai định dạng" ControlToValidate="PhoneNumber" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class=" col-sm-6 mb-3 mb-sm-0">
                        <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>
                        <asp:DropDownList ID="DDLStatus" runat="server" CssClass="form-control form-control-user">
                            <asp:ListItem Selected="True">---Chọn Trạng Thái---</asp:ListItem>
                            <asp:ListItem Value="0">Hoạt Động</asp:ListItem>
                            <asp:ListItem Value="1">Không Hoạt Động</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Chọn Trạng Thái" ControlToValidate="DDLStatus" ForeColor="Red" Display="Dynamic" InitialValue="---Chọn Trạng Thái---" ></asp:RequiredFieldValidator>
                    </div>
                    <div class=" col-sm-6 mb-3 mb-sm-0">
                        <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label>
                        <asp:DropDownList ID="DDLRole" runat="server" CssClass="form-control form-control-user">
                            <asp:ListItem Selected="True">---Chọn---</asp:ListItem>
                            <asp:ListItem Value="0">ADMIN</asp:ListItem>
                            <asp:ListItem Value="1">USER</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Chọn Role" ControlToValidate="DDLRole" InitialValue="---Chọn---" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <%--<div class="form-group row">--%>
                <asp:Button ID="btnRegister"  runat="server" Text="Đăng Ký Tài Khoản" CssClass=" btn btn-primary btn-user btn-block" OnClick="btnRegister_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Lưu" CssClass="btn btn-primary btn-user btn-block" OnClick="btnUpdate_Click" AutoPostBack="flase"  />
                <%--<a href="login.html" class="col-lg-4 btn btn-primary btn-user btn-block">Register Account
                    </a>--%>
                <hr>
                <asp:Button ID="btnGoogle" runat="server" Text="Register with Google" CssClass=" btn btn-google btn-user btn-block" />
                <%--  <a href="index.html" class="col-lg-4 btn btn-google btn-user btn-block">
                        <i class="fab fa-google fa-fw"></i>Register with Google
                    </a>--%>
                <asp:Button ID="btnfb" runat="server" Text="Register with Facebook" CssClass=" btn btn-facebook btn-user btn-block" />
                <%-- <a href="index.html" class="col-lg-4 btn btn-facebook btn-user btn-block">
                        <i class="fab fa-facebook-f fa-fw"></i>Register with Facebook
                    </a>--%>
                <%-- </div>--%>

                <%--  </form>--%>
                <hr>
                <div class="text-center">
                    <%--<a class="small" href="forgot-password.html">Forgot Password?</a>--%>
                    <asp:Label ID="lblForgotPass" runat="server" Text="Forgot Password?" CssClass="small" href="forgot-password.html"></asp:Label>
                </div>
                <div class="text-center">
                    <%--<a class="small" href="login.html">Already have an account? Login!</a>--%>
                    <asp:Label ID="lblLogin" runat="server" Text="Already have an account? Login!" CssClass="small" href="login.aspx"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
