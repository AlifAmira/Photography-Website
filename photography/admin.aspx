<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="photography.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Panel ID="panel1" runat="server" BorderStyle="Groove" Height="192px" Width="910px" BorderWidth="5px" Direction="LeftToRight" GroupingText="Upload Image" HorizontalAlign="Center" ScrollBars="Auto">
            <asp:Label ID="Label2" runat="server" Text="Image Title"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px" Width="224px"></asp:TextBox>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="323px" />
            <br />
            <br />
            <asp:Button ID="upButton" runat="server" Text="Upload" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photographyConnectionString %>" ProviderName="<%$ ConnectionStrings:photographyConnectionString.ProviderName %>" SelectCommand="SELECT title, image FROM p_image" InsertCommand="INSERT INTO p_image(title, image) VALUES (@i1, @i2)" SelectQuery="<%$ ConnectionStrings:photographyConnectionString %>">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="i1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="FileUpload1" Name="i2" PropertyName="FileBytes" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="i1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="FileUpload1" Name="i2" PropertyName="FileBytes" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
