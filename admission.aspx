<%@ Page Title="" Language="C#" MasterPageFile="~/pub.master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="publicss_admission" %>

<%@ Register src="admission.ascx" tagname="admission" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:admission ID="admission1" runat="server" />
</asp:Content>

