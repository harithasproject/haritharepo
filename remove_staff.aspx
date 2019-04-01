<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="remove_staff.aspx.cs" Inherits="admin_remove_staff" %>

<%@ Register src="remove _staff.ascx" tagname="remove" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:remove ID="remove1" runat="server" />
</asp:Content>

