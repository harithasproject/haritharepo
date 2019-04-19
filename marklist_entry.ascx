<%@ Control Language="C#" AutoEventWireup="true" CodeFile="marklist_entry.ascx.cs" Inherits="teacher_marklist_entry" %>
<body>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <font size="6px" color="#fff"><center>Mark List</center></font>
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
                                       <center><font size="4px">Roll Number</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                                    >
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
       <center><font size="4px">Name</font></center> 
            <asp:TextBox ID="TextBox4" runat="server" class="input--style-5" 
                ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
              <div class="col-2">
                                        <div class="input-group-desc">
                                       <center><font size="4px">Term Number</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
               
                <asp:ListItem>Term 1</asp:ListItem>
                <asp:ListItem>Term 2</asp:ListItem>
                <asp:ListItem>Term 3</asp:ListItem>
               
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
                                       <center><font size="4px">Subject</font></center>
                                             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
               
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Malayalam</asp:ListItem>
                <asp:ListItem>Malayalam 2</asp:ListItem>
                <asp:ListItem>Maths</asp:ListItem>
                <asp:ListItem>Social</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Hindi</asp:ListItem>
                <asp:ListItem>Kala kayikam</asp:ListItem>
               
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
   
                                           
                                        </div>
                                        </div>
                                        </div></div></div>


                    <asp:Panel ID="Panel1" runat="server" BackColor="#CC66FF" Visible="False">
                     <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                     <div class="col-2">
                                       <div class="input-group-desc">
        

       <center><font size="4px">Activity</font></center> 
            <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True"
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
               
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
   
                                        </div>
            </div>
           
           <div class="col-2">
                                       <div class="input-group-desc">
      

       <center><font size="4px">Prtfolio</font></center> 
             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
               
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
       

       <center><font size="4px">Unit Test</font></center> 
             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList6_SelectedIndexChanged"  
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
               
            </asp:DropDownList>
            <div class="select-dropdown"></div>
                                    </div>
            </div>
            </div>
           <div class="col-2">
                                       <div class="input-group-desc">
   

       <center><font size="4px">CE Total</font></center> 
            <asp:TextBox ID="TextBox8" runat="server" class="input--style-5" ReadOnly="true" AutoCompleteType="disabled"></asp:TextBox>
            </div>
            </div>
            </div></div></div>
            <div class="form-row m-b-55">
                           
                            <div class="value">
                             <div class="row row-space">


                                     <div class="col-2">
                                       <div class="input-group-desc">
        

       <center><font size="4px">Term Evaluation</font></center> 
             <div class="rs-select2 js-select-simple select--no-search">
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                                                    >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
               
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

<asp:Button ID="Button1" runat="server" Text="Save" class="btn btn--radius-2 btn--red" 
                onclick="Button1_Click" />
</div></div></div></div></div>






            





                    </asp:Panel>





            </div></div></div>
            </div>


            </body>