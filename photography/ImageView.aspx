<%@ Page Title="" Language="C#" MasterPageFile="~/common.Master" AutoEventWireup="true" CodeBehind="ImageView.aspx.cs" Inherits="photography.ImageView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
     <body>
         <div id="main">
           <div style="vertical-align:middle; text-align:center">
                 <asp:Image  ID="Image1" runat="server" MaxWidth="950px" Height="450px"   />
             </div>
          </div>
         </body>
        </html>
   
   
</asp:Content>
