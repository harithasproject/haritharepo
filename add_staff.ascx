<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_staff.ascx.cs" Inherits="admin_add_staff" %>
<body> 
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Staff profile</center></font>
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
          <center><font size="4px">Address</font></center> 
            <asp:TextBox ID="TextBox6" runat="server" class="input--style-5" >
                </asp:TextBox>
            </div>
            </div>
            <div class="col-2">
        <div class="input-group-desc">
          <center><font size="4px">Date Of Birth</font></center> 
            <asp:TextBox ID="TextBox7" runat="server" class="input--style-5" TextMode="Date"></asp:TextBox>
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
             <center><font size="4px">Sex</font></center> 
<asp:RadioButtonList ID="RadioButtonList2" runat="server"  Height="26px" class="input--style-5"
                RepeatDirection="Horizontal" style="margin-left: 27px" Width="186px"  >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList></div>
            </div>
           
        <div class="col-2">
        <div class="input-group-desc">
                      <center><font size="4px">Qualification</font></center>               
       <div class="rs-select2 js-select-simple select--no-search">
                     <asp:DropDownList ID="DropDownList2" runat="server" >
               
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>SSLC</asp:ListItem>
                                <asp:ListItem> PlusTwo</asp:ListItem>
                                <asp:ListItem>Degree</asp:ListItem>
                                <asp:ListItem>PG</asp:ListItem>
                                <asp:ListItem>TTC</asp:ListItem>
                                <asp:ListItem>Bed</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
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
                                               <center><font size="4px">School/College</font></center> 
      
                                 <asp:TextBox ID="TextBox11" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>
                                      <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Board/University</font></center> 
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
                                               <center><font size="4px">Year</font></center> 
      
                                 <asp:TextBox ID="TextBox10" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>
                                      <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Mark</font></center> 
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
                           
                        
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Next" class="btn btn--radius-2 btn--red" 
                                                                style="height: 26px"/>
            </div>
                     </div>  
                     </div>              
                                           
                                           <div class="col-2"> 
                                            <div class="input-group-desc">
                                             <div>
                           
                        
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Over" class="btn btn--radius-2 btn--red"/>
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
                                    <center><font size="4px">Post</font></center> 
       <div class="rs-select2 js-select-simple select--no-search">
                     
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="133px">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Head Master</asp:ListItem>
            </asp:DropDownList>
               <div class="select-dropdown"></div>
                                    </div>
                                    </div>
                                    </div>  
                                     <div class="col-2">
        <div class="input-group-desc">
           <center><font size="4px">Email ID</font></center> 
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
           <center><font size="4px">Phone Number</font></center> 
            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5"></asp:TextBox>
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
                           
                        
            <asp:Button ID="Button4" runat="server" Text="Save" 
                class="btn btn--radius-2 btn--red" onclick="Button4_Click"/>
            </div>
            
            </div>
            </div>
            </div>
            </div>
            </div>





     



</body>
 
   
  
         
       
        
           
                           
                       
                       
                       
        

          
    