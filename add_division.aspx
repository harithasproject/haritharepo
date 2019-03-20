<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_division.aspx.cs" Inherits="admin_add_division" %>

<%@ Register src="add_division.ascx" tagname="add_division" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_division ID="add_division1" runat="server" />
</asp:Content>

