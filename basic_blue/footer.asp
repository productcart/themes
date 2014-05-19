<!--#include file="../../inc_theme_common.asp"-->
<!--#include file="../../HomeCode.asp"--> 

    <% If Instr(pcv_NoSideNavePageList, Ucase("|"& pcv_CurrentPageName &"|")) > 0 Then %>
        <!--#include file="../../opc_orderpreview.asp"-->
    <% End If %>

  </div>



<div class="pcClear"></div>
<div class="push"></div>

</div>

</div>

<% 
If lcase(pcv_CurrentPageName) = "home.asp" Then 
		pcv_showContentPages = true
%>
	<style type="text/css">
		#pcWrap {
			margin: 0 auto -370px;
		}

		.push {
			height: 370px;
		}

		#pcFooterContainer {
			margin-top: 340px;
		}
	</style>
	<div id="pcBottomContainer">
		<div id="pcBottom">
			<!--#include file="../../SmallUsefulLinks.asp"-->
		</div>
	</div>
<%
End If 
%>

<footer id="pcFooterContainer">
  <div id="pcFooter">

		<div id="pcMainAreaPayments">
			<!-- #include file="../../smallPaymentOptions.asp" -->
		</div>

    <div id="pcFooterLeft">
      <%= Year(Now()) %>, <%= scCompanyName %> - All Rights Reserved
    </div>
    <div id="pcFooterRight">
      Powered By: <a href="http://www.productcart.com/">ProductCart</a>
    </div>
  </div>
</footer>