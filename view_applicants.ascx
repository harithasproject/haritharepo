+<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_applicants.ascx.cs" Inherits="office_view_applicants" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">

<HeaderTemplate>
<font size="5" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #07070; background-color:#070707; width:100%; height:100%" >  
    
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Application Number</th> 
                         <th   style="color:Blue">Class</th> 
                          <th   style="color:Blue">Name</th> 
                          <th style="color:Blue">Photo</th>
                          <th   style="color:Blue">Guardian</th> 
                          
                        
                    </tr>  
               </font>     
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                    
                    <tr>  
                    <td align="left" >  
                        <%# Eval("applic_no")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("class")%>  
                    </td> 
                
                  
                      
                    <td align="left">  
                        <%# Eval("name")%>  
                    </td> 
                    <td align="left">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("pic")%>' Height="117px" Width="153px" />
                

                    </td>
                
                 
                    <td align="left">  
                        <%# Eval("guardian")%>  
                    </td> 
                 

                     
                    <td align="left"><a href="online_admission.aspx?id=<%#DataBinder.Eval(Container.DataItem,"applic_no") %>">Check</a></td>
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              



</asp:DataList>

