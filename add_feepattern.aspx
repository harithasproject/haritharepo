<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_feepattern.aspx.cs" Inherits="admin_add_feepattern" %>

<%@ Register src="add_feepattern.ascx" tagname="add_feepattern" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_feepattern ID="add_feepattern1" runat="server" />
</asp:Content>

