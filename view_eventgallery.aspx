<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="view_eventgallery.aspx.cs" Inherits="teacher_view_eventgallery" %>

<%@ Register src="view_eventgallery.ascx" tagname="view_eventgallery" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_eventgallery ID="view_eventgallery1" runat="server" />
</asp:Content>

