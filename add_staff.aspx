<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_staff.aspx.cs" Inherits="admin_add_staff" %>

<%@ Register src="add_staff.ascx" tagname="add_staff" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_staff ID="add_staff1" runat="server" />
</asp:Content>

