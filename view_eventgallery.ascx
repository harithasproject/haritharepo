<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_eventgallery.ascx.cs" Inherits="publicss_view_eventgallery" %>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BackColor="Gray" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" 
    CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" />
<HeaderTemplate>
<table border="4px" cellpadding="6px" >
<tr>

</HeaderTemplate>
<ItemTemplate>

                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("pic")%>' Height="400px" Width="500px" />
                     <br />
                         <center><asp:Label ID="Label1" runat="server" Text='<%# Bind("caption") %>' ></asp:Label></center>
                
           
          
</ItemTemplate>



    <FooterTemplate>               
</tr>
</table>
</FooterTemplate> 

</asp:DataList>

