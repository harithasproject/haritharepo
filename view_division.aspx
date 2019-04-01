<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_division.aspx.cs" Inherits="admin_view_division" %>

<%@ Register src="View_division.ascx" tagname="View_division" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:View_division ID="View_division1" runat="server" />
</asp:Content>

