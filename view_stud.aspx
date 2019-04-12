<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="view_stud.aspx.cs" Inherits="office_view_stud" %>

<%@ Register src="view_stud.ascx" tagname="view_stud" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_stud ID="view_stud1" runat="server" />
</asp:Content>

