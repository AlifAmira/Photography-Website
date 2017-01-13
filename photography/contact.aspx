<%@ Page Title="" Language="C#" MasterPageFile="~/common.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="photography.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
     <body>
         <div id="main">
             <div id="site_content">
      <div id="left_content">
        <h1>Contact</h1>
        <p>Provive your Name,Email Address and Message. I will answer you soon.</p>
        <form id="contact" action="contact.html" method="post">
          <div class="form_settings">
              <p><span>Name</span> 
                  <asp:TextBox class="contact" ID="TextBox1" runat="server"  name="your_name" value=""></asp:TextBox>
              </p>
              <p>
                  <span>Email Address</span><asp:TextBox class="contact" ID="TextBox2" runat="server" name="your_email" value=""></asp:TextBox>
              </p>
              <p>
                  <span>Message</span> 
                  <asp:TextBox class="contact textarea" TextMode="multiline" rows="5" cols="50" name="your_message" ID="TextBox3" runat="server"></asp:TextBox>
               </p>
              <p>&nbsp;</p>
            
                <span>&nbsp;</span>
                <asp:Button class="submit" ID="Button1"  name="contact_submitted"  runat="server" OnClick="Button1_Click" Text="Send" />
                </p>
              <p style="padding-top: 15px">
                  &nbsp;</p>
          </div>
        </form>
      </div>
      <div id="right_content">
        <img src="images/contact.jpg" width="450" height="450" title="contact" alt="contact" />
      </div>
    </div>
        </div>
         
    </body> 
   </html>   
</asp:Content>
