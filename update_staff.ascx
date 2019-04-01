<%@ Control Language="C#" AutoEventWireup="true" CodeFile="update_staff.ascx.cs" Inherits="admin_update_staff" %>

  <body>
  
  <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Update Staff profile</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                              

                                   
                                     <div class="col-2">
        <div class="input-group-desc">
         <center><font size="4px">Staff ID</font></center> 
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
                                                 <div class="col-2">
        <div class="input-group-desc">
         <center><font size="4px">Name</font></center> 
            <asp:TextBox ID="TextBox11" runat="server" class="input--style-5"></asp:TextBox>
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
                                         <center><font size="4px">Qualification</font></center> 
                                             <div class="rs-select2 js-select-simple select--no-search">
                                             <asp:DropDownList ID="DropDownList2" runat="server" >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Degree</asp:ListItem>
               
                <asp:ListItem>PG</asp:ListItem>
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
                                    </div>
                                    </div>
                                     <div class="col-2">
        <div class="input-group-desc">
         <center><font size="4px">School/college</font></center> 
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
         <center><font size="4px">Board/University</font></center> 
            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                                                <div class="col-2">
        <div class="input-group-desc">
         <center><font size="4px">Year</font></center> 
            <asp:TextBox ID="TextBox6" runat="server" class="input--style-5"></asp:TextBox>
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
         <center><font size="4px">Mark</font></center> 
            <asp:TextBox ID="TextBox7" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
              <div class="col-2">
                                        <div class="input-group-desc">
                                         <center><font size="4px">Post</font></center> 
                                             <div class="rs-select2 js-select-simple select--no-search">
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>HM</asp:ListItem>
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
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
         <center><font size="4px">Email ID</font></center> 
            <asp:TextBox ID="TextBox8" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                                                <div class="col-2">
        <div class="input-group-desc">
         <center><font size="4px">Phone</font></center> 
            <asp:TextBox ID="TextBox9" runat="server" class="input--style-5"></asp:TextBox>
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
                           
                        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" class="btn btn--radius-2 btn--red"/>
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

       
       
   
        
       
           
       