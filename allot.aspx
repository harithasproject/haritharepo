<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="allot.aspx.cs" Inherits="office_allot" %>

<%@ Register src="allot.ascx" tagname="allot" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:allot ID="allot1" runat="server" />
</asp:Content>

