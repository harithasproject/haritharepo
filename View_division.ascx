<%@ Control Language="C#" AutoEventWireup="true" CodeFile="View_division.ascx.cs" Inherits="admin_View_division" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">
<HeaderTemplate>
<font style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #070707; background-color:#070707; width:100%; height:100%" >  
        
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Division ID</th> 
                         <th   style="color:Blue">Class</th> 
                          <th   style="color:Blue">Division</th> 
                          <th   style="color:Blue">Staff ID</th> 
                          <th   style="color:Blue">Year</th> 
                           
                        
                    </tr>  
                    </HeaderTemplate>
                    <ItemTemplate>
                    
                    <tr>  
                    <td align="left">  
                        <%# Eval("div_id")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("class")%>  
                    </td> 
                
                  
                      
                    <td align="left">  
                        <%# Eval("division")%>  
                    </td> 
                
                 
                    <td align="left">  
                        <%# Eval("staff_id")%>  
                    </td> 
                     <td align="left">  
                        <%# Eval("year")%>  
                    </td> 
                 

                     
                    <td align="left"><a href="update_division.aspx?id=<%#DataBinder.Eval(Container.DataItem,"div_id") %>">Change</a></td>
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              





</asp:DataList>

