<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="view_newsandevents.aspx.cs" Inherits="office_view_newsandevents" %>

<%@ Register src="view_newsandevents.ascx" tagname="view_newsandevents" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_newsandevents ID="view_newsandevents1" runat="server" />
</asp:Content>

