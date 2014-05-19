<!--#include file="../../inc_theme_common.asp"--> 

<div id="pcHeaderContainer">

    <div id="pcHeader">
    
        <div id="pcHeaderLeft">
        	<%=scCompanyName%>
        </div>
        
        <div id="pcHeaderCenter">

			<%            
              '// Locate preferred results count and load as default
                Dim pcIntPreferredCountSearch
                pcIntPreferredCountSearch =(scPrdRow*scPrdRowsPerPage)
            %>
            <form action="showsearchresults.asp" name="search" method="get" id="pcHSearchForm">
                <input type="hidden" name="pageStyle" value="<%=bType%>">
                <input type="hidden" name="resultCnt" value="<%=pcIntPreferredCountSearch%>">
                <input type="text" name="keyword" value="" id="pcHSearch">
                <input type="submit" name="submit" value="Go" id="pcHSearchSubmit">
                <div id="pcHSearchMore">
                    <a href="search.asp">More search options</a>
                </div>
            </form>
            <script type=text/javascript>
            function pcf_CheckSearchBox() {
                pcv_strTextBox = document.getElementById("pcHSearch").value;
                if (pcv_strTextBox != "") {
                    document.getElementById('small_search').onclick();
                }
            }
            </script>
            <%
            Response.Write(pcf_InitializePrototype())
            response.Write(pcf_ModalWindow(dictLanguage.Item(Session("language")&"_advSrca_23"), "small_search", 200))
            %>

        </div>
        
        <div id="pcHeaderRight">
			<span><img src="theme/v47/images/pc11-sampleAd2.png" width="134" height="50" alt="Hassle free returns"></span>
            <span><img src="theme/v47/images/pc11-sampleAd1.png" width="134" height="50" alt="Free shipping"></span>
        </div>
            </div>
        </div>
<div id="pcNavContainer45">

	<div id="pcNav45">
    	<a href="viewcategories.asp">Browse The Store</a><a href="showbestsellers.asp">Best Sellers</a><a href="showspecials.asp">Specials</a><a href="shownewarrivals.asp">New Arrivals</a><a href="showrecentlyreviewed.asp">Recently Reviewed</a><a href="search.asp">Adv. Search</a><a href="checkout.asp" style="border-right: none;">Checkout</a>
    </div>
    
</div>

<div id="pcIconBarContainer">

    <div id="pcIconBar">
    
    	<div id="pcIconBarLeft">
            <!--#include file="../../SmallCart.asp"-->
        </div>
        
    	<div id="pcIconBarRight">
        	<span class="pcIconBarSeparator"><img src="theme/v47/images/pc11-icon-callus.png" alt="Call Us">Questions? Call us at 800.800.8000</span>
        	<%
			Dim pcMyAccountLink
			if session("idCustomer")="0" or session("idCustomer")="" then
				pcMyAccountLink="Register or Login"
				else
				pcMyAccountLink="Manage My Account"
			end if
			%>
            <a href="custPref.asp"><img src="theme/v47/images/pc11-icon-account.png" alt="<%=pcMyAccountLink%>"></a><a href="custPref.asp" class="pcIconBarSeparator"><%=pcMyAccountLink%></a>
            <a href="checkout.asp"><img src="theme/v47/images/pc11-icon-checkout.png" alt="Checkout"></a><a href="checkout.asp">Checkout</a>
            <a href="contact.asp"><img src="theme/v47/images/pc11-icon-contact.png" alt="Contact Us"></a><a href="contact.asp">Contact Us</a>
            <a href="default.asp"><img src="theme/v47/images/pc11-icon-home.png" alt="Home"></a><a href="default.asp">Home</a>
        </div>
	</div>
  
  </div>
  
<div id="pcMainArea">
  
	<div id="pcMainArea-LEFT">
		  
        <div id="pcMainArea-BROWSE">
        <h3>Browse by Category</h3>
				<!--#include file="../../inc_catsmenu.asp"-->
      </div>
      
		  <!--#include file="SmallUsefulLinks.asp"-->
            
    </div>
    
  	<div id="pcMainArea-RIGHT">
    
        <!--#include file="../../CategorySearchFields.asp"-->
        
          <div id="pcMainArea-PRICE">
            <h3>Browse by Price</h3>
                <ul>
                    <li><a href="showsearchresults.asp?priceFrom=0&priceUntil=20">Below $20</a></li>
                    <li><a href="showsearchresults.asp?priceFrom=20&priceUntil=50">From $20 to $50</a></li>
                    <li><a href="showsearchresults.asp?priceFrom=50&priceUntil=100">From $50 to $100</a></li>
                    <li><a href="showsearchresults.asp?priceFrom=100&priceUntil=9999999">Over $100</a></li>
                </ul>
          </div>

		  <!--#include file="../../SmallRecentProducts.asp"-->
        
    </div>
    
    <div id="pcMainArea-CENTER">