<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="update_division.aspx.cs" Inherits="admin_update_division" %>

<%@ Register src="update_division.ascx" tagname="update_division" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:update_division ID="update_division1" runat="server" />
</asp:Content>

