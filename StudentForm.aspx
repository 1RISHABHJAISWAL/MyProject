<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="StudentForm.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="StudentValidation.js"></script>
    <link rel="stylesheet" type="text/css" href="StudentForm.css" />
</head>
<body style="height: 660px">
    
    <form id="form1" runat="server">
    
     <div style="width: 1053px; margin-left: 133px" class="newStyle4">
       Please enter the information below that will allow you to personally have ongoing communications with Summit attendees:
      </div>

        <div  id="accordion">

          <h3 class="newStyle1">Profile Basic Setting</h3>
                <div>
                    
                    <asp:Label ID="Label1" runat="server" Text="First Name: " />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter first name!" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                    <br />
                    
                    <asp:Label ID="Label2" runat="server" Text="Last Name: " />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please enter last name!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                    <br />
                    
                    <asp:Label ID="Label3" runat="server" Text="Title: " />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Please Choose"></asp:ListItem>
                        <asp:ListItem Text="Mr"></asp:ListItem>
                        <asp:ListItem Text="Mrs"></asp:ListItem>
                    </asp:DropDownList>
                    
                    <br />
                    
                    <asp:Label ID="Label4" runat="server" Text="Department: " />
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="Please Choose"></asp:ListItem>
                        <asp:ListItem Text="Computer Science"></asp:ListItem>
                        <asp:ListItem Text="Mechanical"></asp:ListItem>
                        <asp:ListItem Text="BioTechnology"></asp:ListItem>
                        <asp:ListItem Text="Electrical Engineering"></asp:ListItem>
                        
                    </asp:DropDownList>
                    
                </div>
                    <h3 class="newStyle2">Location Information</h3>
                <div>
                    <asp:Label ID="Label5" runat="server" Text="Label">Address: </asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Please enter the address!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    

                    <br />
                    
                    <asp:Label ID="Label6" runat="server" Text="Label">City: </asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Please enter the city!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    

                    <br />
                    
                    <asp:Label ID="Label7" runat="server" Text="Label">State: </asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Please enter the state!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                    
                    <br />
                    
                    <asp:Label ID="Label8" runat="server" Text="Label">Country: </asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Please enter the country!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    

                    <br />

                    <asp:Label ID="Label9" runat="server" Text="Label">Postal Code: </asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Please enter the postal code!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                </div>
                
                <h3 class="newStyle3">Contact Information</h3>
                <div style="height: 70px">
                    <asp:Label ID="Label10" runat="server" Text="Label">Mob No: </asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Please enter the MobNo!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                    
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Label">Email Address: </asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Please enter the email address!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    

                    </div>
              </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" />
        &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [Student_Data]"></asp:SqlDataSource>
    </form>

 </body>

</html>