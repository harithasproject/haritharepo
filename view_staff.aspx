<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_staff.aspx.cs" Inherits="admin_view_staff" %>

<%@ Register src="view_staff.ascx" tagname="view_staff" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_staff ID="view_staff1" runat="server" />
</asp:Content>

