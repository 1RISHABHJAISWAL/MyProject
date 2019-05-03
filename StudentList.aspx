<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="StudentForm.StudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
               
                <Columns>
                    
                    <asp:TemplateField HeaderText="First Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: center" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" style="text-align: center" Text='<%# Eval("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" style="text-align: center" Text='<%# Eval("LastName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" style="text-align: center" Text='<%# Eval("Title") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Department">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" style="text-align: center" Text='<%# Eval("Department") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" style="text-align: center" Text='<%# Eval("Department") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" style="text-align: center" Text='<%# Eval("Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" style="text-align: center" Text='<%# Eval("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" style="text-align: center" Text='<%# Eval("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" style="text-align: center" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="State">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" style="text-align: center" Text='<%# Eval("State") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" style="text-align: center" Text='<%# Eval("State") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Country">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" style="text-align: center" Text='<%# Eval("Country") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" style="text-align: center" Text='<%# Eval("Country") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Postal Code">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" style="text-align: center" Text='<%# Eval("PostalCode") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" style="text-align: center" Text='<%# Eval("PostalCode") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Mob No">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" style="text-align: center" Text='<%# Eval("MobNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" style="text-align: center" Text='<%# Eval("MobNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Email Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" style="text-align: center" Text='<%# Eval("EmailAddress") %>'></asp:TextBox>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" style="text-align: center" Text='<%# Eval("EmailAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Operation">
                        
                        <ItemTemplate>
                            <asp:LinkButton ID="Edit" runat="server" CommandName="Edit" Text="Edit" CommandArgument='<%# Eval("StudentId") %>'></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="Delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("StudentId") %>'></asp:LinkButton>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                </Columns>
                
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
