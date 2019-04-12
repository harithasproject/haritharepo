<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="direct_admission.aspx.cs" Inherits="office_direct_admission" %>

<%@ Register src="direct_admission.ascx" tagname="direct_admission" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:direct_admission ID="direct_admission1" runat="server" />
</asp:Content>

