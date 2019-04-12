<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="view_applicants.aspx.cs" Inherits="office_view_applicants" %>

<%@ Register src="view_applicants.ascx" tagname="view_applicants" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_applicants ID="view_applicants1" runat="server" />
</asp:Content>

