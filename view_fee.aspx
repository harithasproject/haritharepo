<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_fee.aspx.cs" Inherits="admin_view_fee" %>

<%@ Register src="View_fee.ascx" tagname="View_fee" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:View_fee ID="View_fee1" runat="server" />
</asp:Content>

