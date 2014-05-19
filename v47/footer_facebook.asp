        </div>
    </div>

<div id="fb-root"></div> 
<script type=text/javascript>
window.fbAsyncInit = function() {
FB.init({
appId: '<%=session("pcFBS_AppID") %>',
status: true,
cookie: false,
xfbml: true
});
FB.Canvas.setAutoGrow(100);
};
(function() {
var e = document.createElement('script');
e.async = true;
e.src = document.location.protocol +
'//connect.facebook.net/de_DE/all.js';
document.getElementById('fb-root').appendChild(e);
}());
</script>
</body>