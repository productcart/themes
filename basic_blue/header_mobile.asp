<!--#include file="../../inc_theme_common.asp"--> 

<div id="sb-site">

    <nav class="navbar navbar-default" role="navigation">    
        <div class="navbar-header">
            <% if len(scMobileLogo)>0 then %>
                <span class="navbar-brand"><img src="catalog/<%= scMobileLogo %>" alt="<%= scCompanyName %>" /></span>
            <% else %>
                <a class="navbar-brand" href="#"><%=scCompanyName%></a>
            <% end if %>
        </div>      
    </nav>
    <div style="padding: 4px">

        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-3">
                    <button type="button" class="btn btn-default sb-toggle-left">Menu</button>
                </div>
                <div class="col-xs-9">
                    <form action="showsearchresults.asp" role="search">
                       <div class="input-group">
                          <input type="text" name="keyword" class="form-control">
                          <span class="input-group-btn">
                            <button type="submit" class="btn btn-default" type="button">Go!</button>
                          </span>
                        </div><!-- /input-group -->
                        <input type="hidden" name="pageStyle" value="<%=bType%>">
                        <input type="hidden" name="resultCnt" value="<%=pcIntPreferredCountSearch%>">
                    </form>  
                </div>
            </div>
        </div>
        <div class="pcSpacer"></div>
        <div class="container-fluid">
            <div class="row">
        
