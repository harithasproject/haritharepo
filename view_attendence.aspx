<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="view_attendence.aspx.cs" Inherits="teacher_view_attendence" %>

<%@ Register src="view_attendance.ascx" tagname="view_attendance" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_attendance ID="view_attendance1" runat="server" />
</asp:Content>

