<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_gallery.ascx.cs" Inherits="office_add_gallery" %>
|<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Add Gallery</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                                                           <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Event Number</font></center> 
            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                              <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Gallery Number</font></center> 
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
          
            </div>
            </div></div>
            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                               <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Caption</font></center> 
            <asp:TextBox ID="TextBox2" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
                              <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Description</font></center> 
            <asp:TextBox ID="TextBox3" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>
          
            </div>
            </div></div>
             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                               <div class="col-2">
        <div class="input-group-desc">
       <center><font size="4px">Picture</font></center> 
            <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            </div>
                             
                              <div class="col-2">
        <div class="input-group-desc">
        <center><font size="4px">Date</font></center> 
            <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" 
                TextMode="Date"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
           
              <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                    

                                    <div class="col-2">
        <div class="input-group-desc">
         <div>
                           
                        
            <asp:Button ID="Button1" runat="server"  Text="More" 
                 class="btn btn--radius-2 btn--red" onclick="Button1_Click"/>
            </div></div></div>
            
                                    <div class="col-2">
        <div class="input-group-desc">
         <div>
                           
                        
            <asp:Button ID="Button2" runat="server"  Text="Finish" 
                 class="btn btn--radius-2 btn--red" onclick="Button2_Click"/>
            </div>
             
                    
                </div>
                </div>
                </div>
                </div>
                </div>
            </div></div></div></div>
            </body>