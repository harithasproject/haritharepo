﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="remove _staff.ascx.cs" Inherits="admin_remove__staff" %>
<body>
  
  <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Remove Staff profile</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                               <div class="col-2">
                                        <div class="input-group-desc">
                                           <center><font size="4px">Staff ID</font></center> 
                                             <div class="rs-select2 js-select-simple select--no-search">
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                 <asp:ListItem>--select--</asp:ListItem>
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
                                    </div>
                                    </div>
                                     <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Name</font></center> 
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>

          
                                </div>
                            </div>
                        </div>

                          <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                    

                                    <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Address</font></center> 
            <asp:TextBox ID="TextBox2" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                                                <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Date Of Birth</font></center> 
            <asp:TextBox ID="TextBox10" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
            </div>
            </div>
            </div>
           
                                                   

          
             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                    

                                    <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Post</font></center> 
            <asp:TextBox ID="TextBox7" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
            
                                    
                                    
                                    



                                    

                                    <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Email</font></center> 
            <asp:TextBox ID="TextBox8" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                                                
            </div>
           
            </div>
            </div>

                                


<div class="form-row m-b-55">                      
                            <div class="value">
                             <div class="row row-space">                                
                                    <div class="col-2">
        <div class="input-group-desc">
       <div>
                           
                        
            <asp:Button ID="Button3" runat="server" onclick="Button1_Click" Text="Remove" class="btn btn--radius-2 btn--red"/>
            </div>
            </div>
            </div>
                            </div>
                            </div>
                            </div>                   </div>
                                    </div>
                                     </div>
                            </div>

  
  
  
  
  </body>

       
       
   
        
       
           
       