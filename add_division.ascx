<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_division.ascx.cs" Inherits="admin_add_division" %>

<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Add Division</center></font>
                </div>
                <div class="card-body">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                    

                                    <div class="col-2">
        <div class="input-group-desc">
            <asp:TextBox ID="TextBox1" runat="server" class="input--style-5"></asp:TextBox>
            </div>
            </div>

            <div class="col-2">
                                        <div class="input-group-desc">
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
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
                                            
      
                                 
         
      
                                            
       <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
              <div class="select-dropdown"></div>
                                    </div>
                                    </div>
                                    </div>
                                      <div class="col-2">
        <div class="input-group-desc">
                                            
       <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList3" runat="server" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                AutoPostBack="True" >
                <asp:ListItem>--select--</asp:ListItem>
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
                                            
      
                                 <asp:TextBox ID="TextBox3" runat="server" class="input--style-5"></asp:TextBox> 
         
      
                                            
      
                                    </div>
                                    </div>
                                      <div class="col-2">
        <div class="input-group-desc">
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
                                <div>
                           
                        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" class="btn btn--radius-2 btn--red"/>
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