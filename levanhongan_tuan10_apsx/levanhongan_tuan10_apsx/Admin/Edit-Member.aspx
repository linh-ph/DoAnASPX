<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit-Member.aspx.cs" Inherits="levanhongan_tuan10_apsx.Admin.Edit_Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_content" runat="server">
        <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Edit an Account!</h1>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0" id="txtResuilt" runat="server">
                    </div>

                </div>
                <%--<form class="user">--%>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox ID="Userame" CssClass="form-control form-control-user" runat="server" placeholder="User Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui Lòng Nhập Username" ControlToValidate="Userame" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="Name" CssClass="form-control form-control-user" runat="server" placeholder=" Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui Lòng Nhập Name" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4  form-group">
                        <asp:TextBox ID="InputEmail" CssClass="form-control form-control-user" runat="server" placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui Lòng Nhập Email" ControlToValidate="InputEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Sai định dạng email" ControlToValidate="InputEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <asp:TextBox ID="InputPassword" type="password" CssClass="form-control form-control-user" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui Lòng Nhập Password" ControlToValidate="InputPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="exampleRepeatPassword" type="password" CssClass="form-control form-control-user" runat="server" placeholder="Repeat Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Vui Lòng Nhập Re-Password" ControlToValidate="exampleRepeatPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu khác nhau" ControlToCompare="InputPassword" ControlToValidate="exampleRepeatPassword" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <asp:TextBox ID="PhoneNumber" type="text" CssClass="form-control form-control-user" runat="server" placeholder="Phone Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui Lòng Nhập Phone Number" ForeColor="Red" ControlToValidate="PhoneNumber"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Sai định dạng" ControlToValidate="PhoneNumber" ForeColor="Red" ValidationExpression="\d\d\d\d\d\d\d\d\d\d"></asp:RegularExpressionValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Chọn Role" ControlToValidate="DDLRole" InitialValue="---Chọn---"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <%--<div class="form-group row">--%>
                <asp:Button ID="btnRegister" href="login.html" runat="server" Text="Edit" CssClass=" btn btn-primary btn-user btn-block" />
              
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
