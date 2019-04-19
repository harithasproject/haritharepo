<%@ Control Language="C#" AutoEventWireup="true" CodeFile="attendence.ascx.cs" Inherits="teacher_attendence" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Attendence</center></font>
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
       <center><font size="4px">Date</font></center> 
            <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" 
                ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            </div></div></div>

            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">

             <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Roll Number</font></center>
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
            <asp:TextBox ID="TextBox5" runat="server" class="input--style-5" 
                ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
                                    
                                    </div></div></div>

                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                     <div class="col-2">
        <div class="input-group-desc">

            <asp:Button ID="Button1" runat="server" Text="Abscent" 
                class="btn btn--radius-2 btn--red" onclick="Button1_Click" />
            </div></div>
            </div></div></div>
            </div></div></div></div>
            
</body>