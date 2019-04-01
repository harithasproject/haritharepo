<%@ Control Language="C#" AutoEventWireup="true" CodeFile="update_feepattern.ascx.cs" Inherits="admin_update_feepattern" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Update Fee Pattern</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                               
                                      <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Fee Number </font></center> 
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
                   <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Fee Name </font></center> 
            <asp:TextBox ID="TextBox2" runat="server" class="input--style-5"></asp:TextBox>
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
        <center><font size="4px">Description </font></center> 
            <asp:TextBox ID="TextBox3" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                                         
                                                <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Amount </font></center> 
            <asp:TextBox ID="TextBox4" runat="server" class="input--style-5"></asp:TextBox>
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
                           
                        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ok" class="btn btn--radius-2 btn--red"/>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>

             
                    
                </div>
                </div>
                </div>
                </div>
                




</body>
       
       
        

