<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="add_newsandevents.aspx.cs" Inherits="office_add_newsandevents" %>

<%@ Register src="add_newsandevents.ascx" tagname="add_newsandevents" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_newsandevents ID="add_newsandevents1" runat="server" />
</asp:Content>

