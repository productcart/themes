<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<%= session("pcsTheme") %>/css/meanmenu.css" media="all" />
<link type="text/css" rel="stylesheet" href="<%= session("pcsTheme") %>/css/theme.css" />
<% If session("Mobile")="1" Then %>
	<link type="text/css" rel="stylesheet" href="<%= session("pcsTheme") %>/css/theme_mobile.css" />
<% Else %>    
	<link rel="stylesheet" href="<%= session("pcsTheme") %>/css/superfish.css" media="screen">
<% End If %>