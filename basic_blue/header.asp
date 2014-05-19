<!--#include file="../../inc_theme_common.asp"--> 

<div id="pcWrap">

<header id="pcHeaderContainer">
  <div id="pcHeader">
    <div id="pcHeaderLogo">
        <% if len(scCompanyLogo) > 0 then %>
        <img src="catalog/<%= scCompanyLogo %>" alt="<%= scCompanyName %>" />
        <% else %>
        <div id="pcHeaderLogoText">
            <span><%=scCompanyName%></span>
        </div>
      <% end if %>
      <div class="end"></div>
    </div>
    
    <div id="pcHeaderSearch">
      <h3>Search Products</h3>
      <form action="showsearchresults.asp" name="search" method="get" id="pcHSearchForm">
        <input type="hidden" name="pageStyle" value="<%=bType%>">
        <input type="hidden" name="resultCnt" value="<%=pcIntPreferredCountSearch%>">
        <input type="text" name="keyword" value="" id="pcHSearch">
        <input type="submit" name="submit" value="Go" id="pcHSearchSubmit">
        <div id="pcHSearchMore">
          <a href="search.asp">More search options</a>
        </div>
      </form>
    </div>
  </div>
</header>
<!--Header Part End-->
  
<div id="pcNavContainer">
  <ul id="pcNav">
    <li><a href="home.asp">Home</a></li>
    <li><a href="showspecials.asp">Specials</a></li>
    <li><a href="showbestsellers.asp">Best Sellers</a></li>
    <li><a href="shownewarrivals.asp">New Arrivals</a></li>
    <li><a href="viewbrands.asp">Shop by Brand</a></li>
    <li><a href="checkout.asp">Checkout</a></li>
    <li><a href="contact.asp">Contact Us</a></li>
  </ul>
</div>

<script type="text/javascript">
	$pc(document).ready(function ($) {
		if (!detectTouch()) {
			$("#pcIconBarContainer").css("position", "fixed");
			// Make header "sticky" so it stays at the top
			$(window).on('scroll', function () {
				var scrollPos = $(document).scrollLeft();
				$("#pcIconBarContainer").css({ left: -scrollPos });
			});
		}
	})
</script>
<div id="pcIconBarContainer">
  <div id="pcIconBar">
    <div id="pcIconBarSocial">
      Stay Connected: 
      <!-- #include file="../../smallSocialLinks.asp" -->
    </div>
      
    <div id="pcIconBarCart">
      <!-- #include file="../../smallQuickCart.asp" -->
    </div>
    
    <ul id="pcIconBarLinks">
      <%
        Dim pcMyAccountLink
        if session("idCustomer")="0" or session("idCustomer")="" then
          pcMyAccountLink="Register/Login"
          Else
          pcMyAccountLink="Manage Account"
        end if
      %>
      <li id="pcIconBarManageAccount"><a href="CustPref.asp"><%= pcMyAccountLink %></a></li>
      <li id="pcIconBarCheckout"><a href="checkout.asp">Checkout</a></li>
      <li id="pcIconBarContactUs"><a href="contact.asp">Contact Us</a></li>
      <li id="pcIconBarHome"><a href="contact.asp">Contact Us</a></li>
    </ul>
  </div>
</div>

<div id="pcMainArea">
  <div id="pcMainAreaLeft">
    <div id="pcMainAreaBrowse">
      <% 'REPLACE WITH DICT LOAD %>
      <!--<h3>Shop Our Store</h3>-->
      <h3>Browse by Category</h3>
      <!--#include file="../../inc_catsmenu.asp"-->
    </div>
    
    <div id="pcMainAreaPrice">
      <h3>Browse by Price</h3>
      <ul>
        <li><a href="<%= Server.HtmlEncode("showsearchresults.asp?priceFrom=0&priceUntil=20") %>">Below $20</a></li>
        <li><a href="<%= Server.HtmlEncode("showsearchresults.asp?priceFrom=20&priceUntil=50") %>">From $20 to $50</a></li>
        <li><a href="<%= Server.HtmlEncode("showsearchresults.asp?priceFrom=50&priceUntil=100") %>">From $50 to $100</a></li>
        <li><a href="<%= Server.HtmlEncode("showsearchresults.asp?priceFrom=100&priceUntil=9999999") %>">Over $100</a></li>
      </ul>
    </div>
    
    <div id="pcMainAreaRecent">
      <!--#include file="../../smallRecentProducts.asp"-->
    </div>
    
    <div id="pcMainAreaLinks">
    
    </div>
  </div>
  
  <div id="pcMainAreaCenter">