<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="view_gallery.aspx.cs" Inherits="teacher_view_gallery" %>

<%@ Register src="view_gallery.ascx" tagname="view_gallery" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_gallery ID="view_gallery1" runat="server" />
</asp:Content>

