<% If session("Mobile")="1" Then %>
<link type="text/css" rel="stylesheet" href="css/slidebars.min.css" />
<link type="text/css" rel="stylesheet" href="<%= session("pcsTheme") %>/css/theme_mobile.css" />
<% Else %>
<link type="text/css" rel="stylesheet" href="<%= session("pcsTheme") %>/css/theme.css" />
<% End If %>