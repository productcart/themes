<!--#include file="../../inc_theme_common.asp"--> 
<script src="<%= session("pcsTheme") %>/js/jquery.meanmenu.js"></script>
<script>
	(function($){
		jQuery(document).ready(function() {
			jQuery('.pc-nav').meanmenu({meanScreenWidth: "767", meanRemoveAttrs: true});
            jQuery('#mobilewrapper').show();
		});
	})(jQuery);
</script>

<div id="mobilewrapper" style="display: none">

<div class="mobile-cart">
	<div class="pc-quick-cart">
		 <!--#include file="../../SmallQuickCart_Bootstrap.asp"-->
	</div>
</div>

<div id="pc-top-nav">
	<div class="container">
		<div class="row">

			<div class="pc-top-nav-left">
				<div class="pc-social-links">
					<span>
						<span id="pcSocialLinksLabel">Stay Connected:</span> 
						<!--#include file="../../smallSocialLinks.asp" -->
					</span>
				</div>
				<div class="pc-store-number">
					<span><%=pcf_formatPhoneNumber(scCompanyPhoneNumber)%></span>
				</div>
			</div>

			<div class="pc-top-nav-right">
				<div class="pc-search">
					<a href="#reveal-search" class="reveal-search"><i class="fa fa-search"></i></a>
					<form class="pc-search-input" style="display:none;" role="search" action="showsearchresults.asp">
							<div class="form-group">
									<input type="hidden" name="pageStyle" value="<%=bType%>">
									<input type="hidden" name="resultCnt" value="<%=pcIntPreferredCountSearch%>">
									<input type="text" class="form-control" name="keyword" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>
				<div class="pc-quick-cart">
					 <!--#include file="../../SmallQuickCart_Bootstrap.asp"-->
				</div>
				<div class="pc-register-login">
					<a href="CustPref.asp"><% If session("idcustomer")>0 Then %>My Account<% Else %>Register/Login<% End If %></a>
				</div>
			</div>

		</div>	
	</div>
</div>

<div id="pc-header">
	<div class="container">      
			<div class="row">
				
					<div class="col-sm-2">
							<div class="brand">
									<a href="default.asp">                  
											<% if len(scMobileLogo) > 0 then %>
													<img src="catalog/<%= scMobileLogo %>" alt="<%= scCompanyName %>" />
											<% else %>
													<span class="company-name"><%=scCompanyName%></span>
											<% end if %>
									</a>
							</div>
							<div id="contact-info" class="visible-xs">
								<div class="pc-store-number">
									<span><%=pcf_formatPhoneNumber(scCompanyPhoneNumber)%></span>
								</div>	
								<div class="pc-social-links">
									<span>
										<!--#include file="../../smallSocialLinks.asp" -->
									</span>
								</div>	
							</div>
					</div>
												
					<div class="col-sm-10">
							<div class="pc-nav pull-right">
								<ul class="sf-menu">
									<li class="hidden">
										<form class="pc-search-input hidden" mobile-id="menu-search" role="search" action="showsearchresults.asp">
												<div class="form-group">
														<input type="hidden" name="pageStyle" value="<%=bType%>">
														<input type="hidden" name="resultCnt" value="<%=pcIntPreferredCountSearch%>">
														<input type="text" class="form-control" name="keyword" placeholder="Search">
												</div>
												<button type="submit" class="btn btn-default">Submit</button>
										</form>
									</li>
									<li><a href="default.asp">Home</a></li>
									<li>
											<a class="dropdown-toggle" data-toggle="dropdown">Shop by Department <b class="caret"></b></a>                  
											<!--#include file="../../inc_catsmenu.asp"-->
									</li>
                                    <li><a href="viewcategories.asp">Browse The Store</a></li>
                                    <% If scMobileShowHomeBS="1" Then %>
                                    <li><a href="showbestsellers.asp">Best Sellers</a></li>
                                    <% End If %>
                                    <% If scMobileShowHomeSP="1" Then %>
                                        <li><a href="showspecials.asp">Specials</a></li>
                                    <% End If %>
                                    <% If scMobileShowHomeNA="1" Then %>
                                    <li><a href="shownewarrivals.asp">New Arrivals</a></li>
                                    <% End If %>
                                    <li><a href="search.asp">Search Products</a></li>
                                    <li><a href="viewcart.asp" style="border-right: none;">Shopping Cart</a></li>
                                    <li><a href="CustPref.asp" style="border-right: none;">My Account</a></li>
								</ul>
							</div>
					</div>     

			</div>
	</div>
</div>


<% If(InStr(Request.ServerVariables("SCRIPT_NAME"),"home.asp") > 0) Then %>
<div id="pc-slideshow">
	<div class="container"> 
		<div class="row">
				<!--#include file="../../HomeCode.asp"--> 
				<%
					call opendb()
					Session("HideSlideShow") = "1"
					pcs_ShowSlideShowMobile()
					call closedb()
				%>
		</div>
	</div>
</div>
<% End If %>  
	
<div id="pcMainArea" class="container">     

    <div class="row">
            <div class="col-xs-12">

