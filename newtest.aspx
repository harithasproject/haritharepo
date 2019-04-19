<%@ Page Title="" Language="C#" MasterPageFile="~/pub.master" AutoEventWireup="true" CodeFile="newtest.aspx.cs" Inherits="publicss_newtest" %>

<%@ Register src="newtest.ascx" tagname="newtest" tagprefix="uc1" %>

<%@ Register src="test.ascx" tagname="test" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <uc1:newtest ID="newtest1" runat="server" />
    </p>
</asp:Content>

