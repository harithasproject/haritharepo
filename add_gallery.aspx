<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="add_gallery.aspx.cs" Inherits="office_add_gallery" %>

<%@ Register src="add_gallery.ascx" tagname="add_gallery" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_gallery ID="add_gallery1" runat="server" />
</asp:Content>

