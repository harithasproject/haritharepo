<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="view_details.aspx.cs" Inherits="teacher_view_details" %>

<%@ Register src="view_details.ascx" tagname="view_details" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_details ID="view_details1" runat="server" />
</asp:Content>

