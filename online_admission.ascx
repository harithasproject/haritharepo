<%@ Control Language="C#" AutoEventWireup="true" CodeFile="online_admission.ascx.cs" Inherits="office_online_admission" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Application Form</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Application Number</font></center> 
      
       
    <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Class</font></center> 
           <asp:TextBox ID="TextBox2" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
        
                             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Student Name</font></center> 
 <asp:TextBox ID="TextBox3" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Photo</font></center> 
        <asp:Image ID="Image1" runat="server" Width="81px" Heigh="30px" />
        </div></div>

        </div></div></div>

                                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Aadhar Number</font></center> 
 <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Date Of Birth</font></center> 
 <asp:TextBox ID="TextBox5" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Mother</font></center> 
 <asp:TextBox ID="TextBox21" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>

            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Religion</font></center> 
 <asp:TextBox ID="TextBox6" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>

            </div></div></div>

               <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Nationality</font></center> 
 <asp:TextBox ID="TextBox7" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">State</font></center> 
 <asp:TextBox ID="TextBox8" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>
            </div></div></div>

             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


           <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Medium Of Study</font></center> 
 <asp:TextBox ID="TextBox9" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Previous School</font></center> 
 <asp:TextBox ID="TextBox10" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>
            </div></div></div>


             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">TC Number</font></center> 
 <asp:TextBox ID="TextBox11" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div>
            </div>
            
            </div></div></div>

              <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Any other child studying here? </font></center> 
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                
                RepeatDirection="Horizontal" AutoPostBack="True" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged1">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            
            </div></div>
           
            </div></div></div>
            
                    <asp:MultiView ID="MultiView1" runat="server" >

                        <asp:View ID="View1" runat="server">

                          <asp:Panel ID="Panel1" runat="server"  class="input--style-5" BackColor="#CC66FF">
                  <div class="form-row m-b-55">
                           
                        
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Class</font></center> 
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                     onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                <asp:ListItem>--select--</asp:ListItem>
                
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
            </div></div>
            
                                    <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Division </font></center> 
           <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                   onselectedindexchanged="DropDownList2_SelectedIndexChanged1">
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
       <center><font size="4px">Division ID</font></center> 
 <asp:TextBox ID="TextBox12" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>

              <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Name </font></center> 
           <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList3" runat="server">
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
       <center><font size="4px">Guardian ID</font></center> 
 <asp:TextBox ID="TextBox19" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>
            </div></div></div>
              <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
        <asp:Button ID="Button1" runat="server" Text="OK" 
                class="btn btn--radius-2 btn--red" onclick="Button1_Click1" />
        </div></div>
        </div></div></div>
                </asp:Panel>

                 </asp:View>

                 <asp:View ID="View2" runat="server">
                  <asp:Panel ID="Panel2" runat="server"  class="input--style-5" BackColor="#CC66FF">

                 <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Guardian ID</font></center> 
 <asp:TextBox ID="TextBox13" runat="server" class="input--style-5" ReadOnly="true"></asp:TextBox>
            </div></div>

            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Guardian Name</font></center> 
 <asp:TextBox ID="TextBox14" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>

           

            </div>
            </div>
            </div>
            
               <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Occupation</font></center> 
 <asp:TextBox ID="TextBox15" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Bank account Number</font></center> 
 <asp:TextBox ID="TextBox16" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>

            </div></div></div>
            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Address</font></center> 
 <asp:TextBox ID="TextBox17" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Relationship with student</font></center> 
  <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Father</asp:ListItem>
                <asp:ListItem>Brother</asp:ListItem>
                <asp:ListItem>Sister</asp:ListItem>
                <asp:ListItem>Uncle</asp:ListItem>
                  </asp:DropDownList>
              <div class="select-dropdown"></div>
                                    </div>
            </div></div>

            </div></div></div>
             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Phone</font></center> 
 <asp:TextBox ID="TextBox18" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>
             
            <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Email</font></center> 
 <asp:TextBox ID="TextBox20" runat="server" class="input--style-5"></asp:TextBox>
            </div></div>
            </div></div></div>


            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

<div class="col-2">
        <div class="input-group-desc">
        <asp:Button ID="Button2" runat="server" Text="OK" 
                class="btn btn--radius-2 btn--red" onclick="Button2_Click" />
        </div></div>
        </div></div></div>
        </asp:Panel>

        </asp:View>
                        
                    </asp:MultiView>
                    
      
        </div></div></div></div>

           </body>
           
    
       
    
           
       
          
   
        
          
           
                  
    

