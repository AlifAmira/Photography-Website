<%@ Page Title="" Language="C#" MasterPageFile="~/common.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="photography.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
     <body>
         <div id="main">
            <div id="site_content">
      <div id="left_content">
        <h1>Mahade Hasan</h1>
        <p>  
            I love to take photos, make friends. This is  how I am. 22 years young,energetic boy with full of hope and emotions in my eyes. I try to see my world in a different way that other people don't.
        </p>
      </div>
      <div id="right_content" >
          <div style="vertical-align:middle; text-align:center">
          <asp:Image style="float: right;" ID="Image1"  title="about me" alt="about me" runat="server" Height="450px" />
            
      </div>
    </div>
        </div>
         
    </body> 
   </html>   
</asp:Content>
