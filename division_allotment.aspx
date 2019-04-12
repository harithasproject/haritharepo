<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="division_allotment.aspx.cs" Inherits="office_division_allotment" %>

<%@ Register src="division_allotment.ascx" tagname="division_allotment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:division_allotment ID="division_allotment1" runat="server" />
</asp:Content>

