<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="publicss_Default" %>

<%@ Register src="test.ascx" tagname="test" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:test ID="test1" runat="server" />
</asp:Content>

