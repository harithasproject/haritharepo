<%@ Control Language="C#" AutoEventWireup="true" CodeFile="admission.ascx.cs" Inherits="publicss_admission" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Admission Form</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                    

                                    <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Application Number</font></center>
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
             <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Class</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>--select--</asp:ListItem>
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
                                            
      <center><font size="4px">Student Name</font></center>
                                 <asp:TextBox ID="TextBox2" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>



                                     <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Photo</font></center>
             <asp:FileUpload ID="FileUpload1" runat="server" />                   
         
      
                                            
      
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
        <center>
            
            <font size="4px">Aadhar Number</font></center>
                            <asp:TextBox ID="TextBox3" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>
                                     <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Date Of Birth</font></center>
                                 <asp:TextBox ID="TextBox4" runat="server" 
                class="input--style-5" TextMode="Date"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>
                                    </div></div></div>

                                                  
            <div class="form-row m-b-55">
                           
           <div class="value">
           <div class="row row-space">
       
                                      <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Guardian/Paret Name</font></center>
                            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>

                                            <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Occupation</font></center>
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
        <center><font size="4px">Bank account number</font></center>
                            <asp:TextBox ID="TextBox7" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>
                                                                        <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Address</font></center>
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
                                       <center><font size="4px">Relationship with student</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Father</asp:ListItem>
                <asp:ListItem>Brother</asp:ListItem>
                <asp:ListItem>Sister</asp:ListItem>
                <asp:ListItem>Uncle</asp:ListItem>
                  </asp:DropDownList>
              <div class="select-dropdown"></div>
                                    </div>
                                    </div>
                                    </div>
                                    <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Phone</font></center>
                                 <asp:TextBox ID="TextBox9" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>
                                    </div></div></div>
                                                  
            <div class="form-row m-b-55">
                           
           <div class="value">
           <div class="row row-space">
        
                                      <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Email ID</font></center>
                            <asp:TextBox ID="TextBox10" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>
                                     <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Mothers Name</font></center>
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
        <center><font size="4px">Religion</font></center>
                            <asp:TextBox ID="TextBox12" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>

                                     <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">Nationality</font></center>
                                 <asp:TextBox ID="TextBox13" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
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
        <center><font size="4px">State</font></center>
                            <asp:TextBox ID="TextBox14" runat="server" class="input--style-5"></asp:TextBox>                 
      
                                    </div>
                                    </div>


<div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Medium of Syudy</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Malayalam</asp:ListItem>
                <asp:ListItem>English</asp:ListItem>
                
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
        <center><font size="4px">Previous Scholl</font></center>
            <asp:TextBox ID="TextBox15" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                    <div class="col-2">
        <div class="input-group-desc">
                                            
      <center><font size="4px">TC Number</font></center>
                                 <asp:TextBox ID="TextBox16" runat="server" class="input--style-5"></asp:TextBox> 
         </div>
         </div>



                                    </div></div></div>
                                                                   
        
            
     <div class="form-row m-b-55">
                           
           <div class="value">
           <div class="row row-space">
        <div class="col-2">
        <div class="input-group-desc"> 
                                <div>
                           
                        
            <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn--radius-2 btn--red" 
                                        onclick="Button1_Click"/>
            </div>

             
                    
                </div>
                </div>
                </div>
                </div>
                </div>
            </div>
        </div>
  












</body>