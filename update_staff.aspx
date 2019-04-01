<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="update_staff.aspx.cs" Inherits="admin_update_staff" %>

<%@ Register src="update_staff.ascx" tagname="update_staff" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:update_staff ID="update_staff1" runat="server" />
</asp:Content>

