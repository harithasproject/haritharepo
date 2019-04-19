<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="marklist_entry.aspx.cs" Inherits="teacher_marklist_entry" %>

<%@ Register src="marklist_entry.ascx" tagname="marklist_entry" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:marklist_entry ID="marklist_entry1" runat="server" />
</asp:Content>

