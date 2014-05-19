<!--#include file="../../inc_theme_common.asp"--> 

    <div class="pcClear"></div>

    </div>
    
    <div id="pcMainArea-SPACER">
    </div>
  
</div>
  
<div id="pcFooterContainer">
  
  <div id="pcFooter">
  	<div id="pcFooterLeft">
	<%
	if trim(scCompanyName)<>"" then
		response.write scCompanyName & " - " & scCompanyAddress & ", " & scCompanyCity & ", " & scCompanyState & " " & scCompanyZIP & ", " & scCompanyCountry
	end if
	%>	
    </div>
  	<div id="pcFooterRight">
    	
	</div>    
  </div>
</div>