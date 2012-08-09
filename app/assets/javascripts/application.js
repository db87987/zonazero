// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


// Карусель
	$(function() {
			// Слайдер
				$("#slider-idx ul").carouFredSel({
		    		circular: true,
		    		infinite: false,
		    		auto    : false,
		    		scroll  : {
		        		items   : 1
		    		},
		    		prev    : {
		        		button  : "#si-prev"
		    		},
		    		next    : {
		        		button  : "#si-next"
		    		},
		    		pagination  : {
		        		container       : "#paging",
		        		anchorBuilder   : function( nr, item ) {
		            		var pagingTitle = $(".si-title", item).html();
		            		return '<span><a href="#">' + pagingTitle + '</a></span>';
		        		}
		        	}
				});
			});
//

// Делает пункт меню активным
$(function(){
function stripTrailingSlash(str) {
if(str.substr(-1) == '/') {
    return str.substr(0, str.length - 1);
}
return str;
 }

 var url = window.location.pathname;  
var activePage = stripTrailingSlash(url);

 $('#header1 ul li a').each(function(){  
var currentPage = stripTrailingSlash($(this).attr('href'));

if (activePage == currentPage) {
$(this).parent().addClass('active'); 
} 
});
})

