<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="general_gallery_add.aspx.cs" Inherits="office_general_gallery_add" %>

<%@ Register src="general_gallery_add.ascx" tagname="general_gallery_add" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:general_gallery_add ID="general_gallery_add1" runat="server" />
</asp:Content>

