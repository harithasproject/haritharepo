<%@ Control Language="C#" AutoEventWireup="true" CodeFile="division_allotment.ascx.cs" Inherits="office_division_allotment" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Division Allotment</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                              <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Class</font></center> 
                       <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                               onselectedindexchanged="DropDownList1_SelectedIndexChanged">
           
                
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
            </div>
            </div>
            </div></div></div>
            <asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal" 
                         Visible="False">
            <HeaderTemplate>
<font size="5" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #07070; background-color:#070707; width:100%; height:100%" >  
    
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Name</th> 
                         
                          <th style="color:Blue">Photo</th>
                                                
                    </tr>  
               </font>     
                    </HeaderTemplate>
                    
                    <ItemTemplate>
                    
                    <tr>  

                    <td align="left" >  
                        <%# Eval("adm_no")%>  
                    </td> 

                    <td align="left" >  
                        <%# Eval("name")%>  
                    </td> 
              
                                 
                  
                      
                  
                    <td align="left">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("pic")%>' Height="117px" Width="153px" />
                

                    </td>
                
                 
                   

                     
                    <td align="left"><a href="allot.aspx?id=<%#DataBinder.Eval(Container.DataItem,"adm_no") %>">Allot</a></td>
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              



</asp:DataList>


</div></div></div></div>

















</body>