<!--#include file="../../inc_theme_common.asp"--> 
            </div>
        </div>
    </div>
</div>
<div class="sb-slidebar sb-left">
    <nav>
		<ul class="sb-menu">
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
	</nav>
</div>
<script src="../includes/javascripts/slidebars.min.js"></script>
<script>
(function($) {
    $pc(document).ready(function() {
        $pc.slidebars();
    });
}) (jQuery);
</script>
