<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_stud.ascx.cs" Inherits="office_view_stud" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">

<HeaderTemplate>
<font size="5" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #07070; background-color:#070707; width:100%; height:100%" >  
    
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Admission Number</th> 
                         <th   style="color:Blue">Roll Number</th> 
                          <th   style="color:Blue">Name</th> 
                           <th   style="color:Blue">Photo</th> 


                             </tr>  
               </font>     
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                    
                    <tr>  
                    <td align="left" >  
                        <%# Eval("adm_no")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("roll_no")%>  
                    </td> 

                    
                    <td align="left">  
                        <%# Eval("name")%>  
                    </td> 
                     <td align="left">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("pic")%>' Height="117px" Width="153px" />
                

                    </td>
                    </tr>
                     </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              


                  

                           </asp:DataList>














