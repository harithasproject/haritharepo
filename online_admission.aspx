<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="online_admission.aspx.cs" Inherits="office_online_admission" %>

<%@ Register src="online_admission.ascx" tagname="online_admission" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:online_admission ID="online_admission1" runat="server" />
</asp:Content>

