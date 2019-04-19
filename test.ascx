<%@ Control Language="C#" AutoEventWireup="true" CodeFile="test.ascx.cs" Inherits="publicss_test" %>
<asp:DataList ID="DataList1" runat="server" CellSpacing="3" 
    RepeatDirection="Horizontal">
    

    

   <HeaderTemplate>

  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #070707; background-color: #35dbfc" align="center" >  
        
                    <tr style="background-color:Yellow" >  
                        <th   style="color:Blue" >Staff ID</th> 
                         <th   style="color:Blue">Name</th> 
                          <th   style="color:Blue">Address</th> 
                          <th   style="color:Blue">Date Of Birth</th> 
                           <th   style="color:Blue">Sex</th> 
                            <th  style="color:Blue">Post</th> 
                             <th   style="color:Blue">Email</th> 
                              <th   style="color:Blue">Phone</th> 
                           
                        
                    </tr>  
                    </HeaderTemplate>
                    <ItemTemplate>
                    
                    <tr>  
                    <td align="left" style="color:Maroon">  
                        <%# Eval("staff_id")%>  
                    </td> 
              
                    <td align="left">  
                        <%# Eval("name")%>  
                    </td> 
                
                  
                      
                    <td align="left">  
                        <%# Eval("address")%>  
                    </td> 
                
                 
                    <td align="left">  
                        <%# Eval("dob")%>  
                    </td> 
                 
                    <td align="left">  
                        <%# Eval("sex")%>  
                    </td> 
                     <td align="left">  
                        <%# Eval("post")%>  
                    </td> 
                     <td align="left">  
                        <%# Eval("email")%>  
                    </td> 
                     <td align="left">  
                        <%# Eval("ph")%>  
                    </td> 
                    <td align="left"><a href="newtest.aspx?id=<%#DataBinder.Eval(Container.DataItem,"staff_id") %>">Change</a></td>
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              






</asp:DataList>
&nbsp;&nbsp;





