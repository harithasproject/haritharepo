<%@ Page Title="" Language="C#" MasterPageFile="~/office.master" AutoEventWireup="true" CodeFile="remove_newsevents.aspx.cs" Inherits="office_remove_newsevents" %>

<%@ Register src="remove_newsevents.ascx" tagname="remove_newsevents" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:remove_newsevents ID="remove_newsevents1" runat="server" />
</asp:Content>

