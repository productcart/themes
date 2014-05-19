(function ( $ ) {
 
	$.fn.pcMenu = function() {
		var el = this;
		var catMenu = this.find(".ddsmoothmenu-v");
		
		
		function openMenu(el) {
			el.stop().fadeIn(300);
		}
		
		function closeMenu(el) {
			el.stop().fadeOut(300);
		}
		
		catMenu.each(function() {
			var thisCatMenu = jQuery(this);
			var catMenuAnchor = jQuery(this).parent().parent().find("a.dropdown-toggle");
			var isOverCatMenuAnchor = false;
			var isOverCatMenu = false;
			var isOverCatMenuUl = false;
			
			catMenuAnchor.mouseover(function() {
				el.find(".ddsmoothmenu-v ul").css("display","none");
				openMenu(thisCatMenu);
				isOverCatMenuAnchor = true;
			});
			jQuery(this).mouseover(function() {
				openMenu(thisCatMenu);
				isOverCatMenu = true;
			});
			jQuery(this).find("ul").mouseover(function() {
				openMenu(thisCatMenu);
				isOverCatMenuUl = true;
			});
			
			catMenuAnchor.mouseleave(function() {
				isOverCatMenuAnchor = false;
				if (!isOverCatMenu && !isOverCatMenuUl) {
					closeMenu(thisCatMenu);
				}
			});
			jQuery(this).mouseleave(function() {
				isOverCatMenu = false;
				if (!isOverCatMenuAnchor && !isOverCatMenuUl) {
					closeMenu(thisCatMenu);
				}
			});
			jQuery(this).find("ul").mouseleave(function() {
				isOverCatMenuUl = false;
				if (!isOverCatMenuAnchor && !isOverCatMenu) {
					closeMenu(thisCatMenu);
				}
			});
			
		});
		
		return this;
	};
 
}( jQuery ));