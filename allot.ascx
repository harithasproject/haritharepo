<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allot.ascx.cs" Inherits="office_allot" %>
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
       <center><font size="4px">Admission Number</font></center> 
       <asp:TextBox ID="TextBox1" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>

            <div class="col-2">
            <div class="input-group-desc">
       <center><font size="4px">Name</font></center> 
       <asp:TextBox ID="TextBox2" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
             <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">
                              <div class="col-2">
            <div class="input-group-desc">
       <center><font size="4px">Class</font></center> 
       <asp:TextBox ID="TextBox3" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
             <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Division</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                     onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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
       <asp:TextBox ID="TextBox5" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            <div class="col-2">
             <div class="input-group-desc">
         <center><font size="4px">Year</font></center> 
       <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Sorry..." Visible="False"></asp:Label>
        </div></div></div>
                                    
                    
                                     <div class="form-row m-b-55">
                           
           <div class="value">
           <div class="row row-space">
        <div class="col-2">
        <div class="input-group-desc"> 
                                
                  <div>
                         
                        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="OK" class="btn btn--radius-2 btn--red"/>

            </div>

            </div>

             
                    
               
                </div>
                  <div class="col-2">
        <div class="input-group-desc"> 
                                
                  <div>
                         
                      <asp:Button ID="Button2" runat="server" Text="View" onclick="Button2_Click" class="btn btn--radius-2 btn--red" />
            </div>

            </div>

             
                    
               
                </div>
                </div>
                </div></div>
                                    
                                    
                                    
                                    </div></div></div></div>


</body>