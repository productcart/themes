<!--#include file="../../inc_theme_common.asp"-->


        <% If Instr(pcv_NoSideNavePageList, Ucase("|"& pcv_CurrentPageName &"|")) = 0 Then %>
        
                <div class="pcClear"></div>
            </div>
        
        <% Else %>

            </div>
            <div class="col-md-5">        
                <!--#include file="../../opc_orderpreview.asp"-->          
            </div>
              
        <% End If %>

    </div>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation" id="footer">
    <div class="container-fluid"> 
        <ul class="nav navbar-nav navbar-left">
            <li><a href="#"><%= Year(Now()) %>, <%= scCompanyName %> - All Rights Reserved</a></li>
            <li><a href="#">Privacy</a></li> 
            <li><a href="#">Terms</a></li>
            <li><a href="contact.asp">Contact Us</a></li> 
        </ul>
        <ul class="nav navbar-right">
            <li><!--#include file="../../smallPaymentOptions.asp" --></li> 
        </ul>  
    </div>
</nav>

<script src="<%= session("pcsTheme") %>/js/jquery.meanmenu.js"></script>
<script src="<%= session("pcsTheme") %>/js/modernizr.js"></script>
<script>
	jQuery(document).click(function() {
		jQuery("form.pc-search-input").fadeOut();
	});
	jQuery(".reveal-search").click(function(e) {
		e.stopImmediatePropagation();
		jQuery("form.pc-search-input").fadeToggle();
	});
	jQuery("form.pc-search-input").click(function(e) {
		e.stopImmediatePropagation();
	});
</script>
<script>
(function($){
	$(window).load(function() {
		var brandImgHeight = $(".brand img").height();
		if(!Modernizr.mq('(max-width: 767px)')) {
			$(".brand img").css({"margin-top":"-"+((parseInt(brandImgHeight)+10)/2)+"px", "visibility":"visible"});
		} else {
			var headerRowHeight = $("#pc-header .row").height();
			var imgMarginHeight = ((parseInt(headerRowHeight) - parseInt(brandImgHeight))-20)/2;
			$(".brand img").css({"margin-top":imgMarginHeight+"px", "visibility":"visible"});
		}
		$(window).load(function() {
			var brandImgHeight = $(".brand img").height();
			if(!Modernizr.mq('(max-width: 767px)')) {
				$(".brand img").css({"margin-top":"-"+((parseInt(brandImgHeight)+10)/2)+"px", "visibility":"visible"});
			}
		});
		$(window).resize(function() {
			var brandImgHeight = $(".brand img").height();
			if(!Modernizr.mq('(max-width: 767px)')) {
				$(".brand img").css({"margin-top":"-"+((parseInt(brandImgHeight)+10)/2)+"px", "visibility":"visible"});
			} else {
				var headerRowHeight = $("#pc-header .row").height();
				var imgMarginHeight = ((parseInt(headerRowHeight) - parseInt(brandImgHeight))-20)/2;
				$(".brand img").css({"margin-top":imgMarginHeight+"px", "visibility":"visible"});
			}
		});
	});
})(jQuery);
</script>