<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="viewnewsandevents.aspx.cs" Inherits="publicss_viewnewsandevents" %>

<%@ Register src="viewnewsandevents.ascx" tagname="viewnewsandevents" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:viewnewsandevents ID="viewnewsandevents1" runat="server" />
</asp:Content>

