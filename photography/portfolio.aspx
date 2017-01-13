<%@ Page Title="" Language="C#" MasterPageFile="~/common.Master" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="photography.portfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
     <body>
         <div id="main">
             <asp:Panel ID="Panel1" runat="server"  Height="450px" Width="950"> 
 
       
               </asp:Panel>

             </div>
         y
         
         <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>


  <!-- initialise sooperfish menu -->
  <script type="text/javascript">
      $(document).ready(function() {
          $('ul.sf-menu').sooperfish();
      });
  </script>
  <script type="text/javascript" src="js/jquery.galleriffic.js"></script>
  <script type="text/javascript" src="js/jquery.opacityrollover.js"></script>
  <script type="text/javascript">
      jQuery(document).ready(function($) {
          // we only want these styles applied when javascript is enabled
          $('div.navigation').css({'width' : '450px', 'float' : 'left'});
          $('div.content').css('display', 'block');
          // initially set opacity on thumbs and add additional styling for hover effect on thumbs
          var onMouseOutOpacity = 0.67;
          $('#thumbs ul.thumbs li').opacityrollover({
              mouseOutOpacity:   onMouseOutOpacity,
              mouseOverOpacity:  1.0,
              fadeSpeed:         'fast',
              exemptionSelector: '.selected'
          });
          // initialize advanced galleriffic gallery
          var gallery = $('#thumbs').galleriffic({
              delay:                     2500,
              numThumbs:                 10,
              preloadAhead:              10,
              enableTopPager:            false,
              enableBottomPager:         true,
              maxPagesToShow:            7,
              imageContainerSel:         '#slideshow',
              controlsContainerSel:      '#controls',
              captionContainerSel:       '#caption',
              loadingContainerSel:       '#loading',
              renderSSControls:          true,
              renderNavControls:         true,
              playLinkText:              'Play Slideshow',
              pauseLinkText:             'Pause Slideshow',
              prevLinkText:              '&lsaquo; Previous Photo',
              nextLinkText:              'Next Photo &rsaquo;',
              nextPageLinkText:          'Next &rsaquo;',
              prevPageLinkText:          '&lsaquo; Prev',
              enableHistory:             false,
              autoStart:                 false,
              syncTransitions:           true,
              defaultTransitionDuration: 900,
              onSlideChange:             function(prevIndex, nextIndex) {
                  // 'this' refers to the gallery, which is an extension of $('#thumbs')
                  this.find('ul.thumbs').children()
                    .eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
                    .eq(nextIndex).fadeTo('fast', 1.0);
              }
          });
      });

      </script>
   
         
    </body> 
   </html>   
</asp:Content>
