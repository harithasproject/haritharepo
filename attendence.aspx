<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="attendence.aspx.cs" Inherits="teacher_attendence" %>

<%@ Register src="attendence.ascx" tagname="attendence" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:attendence ID="attendence1" runat="server" />
</asp:Content>

