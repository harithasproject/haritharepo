<%@ Control Language="C#" AutoEventWireup="true" CodeFile="View_fee.ascx.cs" Inherits="admin_View_fee" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">
<HeaderTemplate>
<font size="5" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #070707; background-color:#070707; width:100%; height:100%" >  
        
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Fee Number</th> 
                         <th   style="color:Blue">Fee Name</th> 
                          <th   style="color:Blue">Description</th> 
                          <th   style="color:Blue">Amount</th> 
                           
                        
                    </tr>
                    </font>  
                    </HeaderTemplate>
                    <ItemTemplate>
                    
                    <tr>  
                    <td align="left">  
                        <%# Eval("fee_no")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("fname")%>  
                    </td> 
                
                  
                      
                    <td align="left">  
                        <%# Eval("description")%>  
                    </td> 
                
                 
                    <td align="left">  
                        <%# Eval("amount")%>  
                    </td> 
                 

                     
                    <td align="left"><a href="update_feepattern.aspx?id=<%#DataBinder.Eval(Container.DataItem,"fee_no") %>">Change</a></td>
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              



</asp:DataList>

