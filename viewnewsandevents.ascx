<%@ Control Language="C#" AutoEventWireup="true" CodeFile="viewnewsandevents.ascx.cs" Inherits="publicss_viewnewsandevents" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">
<HeaderTemplate>
<font size="4px" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #070707; background-color:#070707; width:100%; height:100%" >  
        
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Event Number</th> 
                         <th   style="color:Blue">Event Name</th> 
                        
                           
                           
                        
                    </tr>  
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tr>  
                    <td align="left">  
                        <%# Eval("event_no")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("event_name")%>  
                    </td> 
                
                  
                      
                   
                     <td align="left"><a href="view_details.aspx?id=<%#DataBinder.Eval(Container.DataItem,"event_no") %>">View</a></td>
                     
                   
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              





</asp:DataList>

