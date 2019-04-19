<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_attendance.ascx.cs" Inherits="teacher_view_attendance" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Attendence Report</center></font>
                </div>
                <div class="card-body">
                <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                     <div class="col-2">
                                       <div class="input-group-desc">
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

       <center><font size="4px">Class</font></center> 
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
           <div class="col-2">
                                       <div class="input-group-desc">
       <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>

       <center><font size="4px">Division</font></center> 
            <asp:TextBox ID="TextBox2" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                              <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Division ID</font></center> 
            <asp:TextBox ID="TextBox3" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
                              <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Roll Number</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
               
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
   
                                           
                                        </div>
                                        </div>
                                        </div></div></div>

                                         <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                                         <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Name</font></center> 
            <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" 
                ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>

            <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Month</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                     >
                <asp:ListItem>--select--</asp:ListItem>
               
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
               
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
   
                                           
                                        </div>
                                        </div>
            </div></div></div>

            
                             
                                      
                                         <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                     <div class="col-2">
        <div class="input-group-desc">

            <asp:Button ID="Button1" runat="server" Text="View"
                class="btn btn--radius-2 btn--red" onclick="Button1_Click" />
            </div></div>
            </div></div></div>

            <asp:DataList ID="DataList1" runat="server" CellSpacing="2" RepeatDirection="Horizontal">
<HeaderTemplate>
<font size="4px" style="color:#f9fafc">
  <table cellpadding="2" cellspacing="0" border="1" style="border:  2px #070707; background-color:#070707; width:100%; height:100%" >  
        
                    <tr style="background-color:Aqua" >  
                        <th   style="color:Blue">Date</th> 
                          
                        
                           
                           
                        
                    </tr>  
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tr>  
                    <td align="left">  
                        <%# Eval("date")%>  
                    </td> 
              
                                       
                   
                </tr>
                
          
                 </ItemTemplate>
                 <FooterTemplate>  </table>  </FooterTemplate>
              





</asp:DataList>




            </div></div></div></div>
                                        
                                      










            
















          </body>       