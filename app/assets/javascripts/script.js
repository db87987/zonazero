// A.V.Plotnikov, verstalo.com

function resizeContainer(){
	var needHeight = $("#order-block").height() + 175;
	if(needHeight > $("#container").height()){
		$("#container").height(needHeight);
	}
}

function sliderInit(){
	// Перед инициализацией надо задать ширину элементов карусели
	// равной ширине окна
	$("#slider-idx ul li").width($("body").width());
	
	if ($("body").height() > 1185)
		{
			$("#slider-idx ul li").height($("body").height() - 265);
		}
		else
		{
			$("#slider-idx ul li").height(920);
		}
		
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
}

$(document).ready(function(){
	$(".clients-list li>a").click(function(){
		$(this).parent().find("div").show().parent().siblings("li").find("div").hide();
		$(this).parent().addClass("active").siblings("li").removeClass("active");
		
		return false;
	})

	$(".cl-switch").click(function(){
		$(this).parent().hide();
		
		return false;
	})
	
	// Открыть форму "Заказать"
	$(".order-link").click(function(){
		$("#order-block").show();
		
		resizeContainer();
		return false;
	})
	
	$(".ob-close").click(function(){
		$("#order-block").hide();
		
		$("#container").removeAttr("style");
		return false;
	})
	
	// Добавить телефон
	$(".p-add").live("click", function(){
		$(this).parent().clone().insertAfter($(this).parent());
		
		resizeContainer();
		return false;
	})
	
	// Удалить телефон
	$(".p-remove").live("click", function(){
		if($(".ob-phone p").size() > 1) {
			$(this).parent().remove();
			
			resizeContainer();
		}
	
		return false;
	})
	
	$(".ob-interest p a").click(function(){
		$(this).parent().next(".oba-sub").toggle();
	
		resizeContainer();
		return false;
	})
	
	// Отправить форму по ссылке
	$(".ob-submit").click(function(){
		$(".new_message").submit();
	})
	
	$(".ad-close").click(function(){
		$(this).parent().hide();
		
		return false;
	})
	
	// Клик на награду
	$(".awards-block li").click(function(){
		var thisLiHeight = $(this).height();
		
		$(this).siblings("li").find(".award-detail").hide();
		$(this).find(".award-detail").css("margin-top", "-" + thisLiHeight + "px").show();
		
		return false;
	})
	
	$(".award-detail").click(function(){return false;})
	
	// Появление скролла "Наверх"
	$(window).scroll(function(){
		if($(this).scrollTop() > 0){
			$(".up-link").fadeIn();
		} else {
			$(".up-link").fadeOut();
		}		
	}); 
	
	// Наверх (скролл)
	$(".up-link").click(function(){
		$("html, body").animate({scrollTop:0}, "slow");
		
		return false;
	})
	
	// Вернуться назад со ссылки "Контакты" в контактах
	$(".ob-close").click(function(){
        parent.history.back();
		
        return false;
    });
	
 });