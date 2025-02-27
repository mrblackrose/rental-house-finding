﻿
    // Semicolon (;) to ensure closing of earlier scripting
    // Encapsulation
    // $ is assigned to jQuery
    ; (function ($) {

        // DOM Ready
        $(function () {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('.withOutLoginReport').bind('click', function (e) {

                // Prevents the default action to be triggered. 
                e.preventDefault();

                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();


            });

            $('.withOutLoginFav').bind('click', function (e) {

                // Prevents the default action to be triggered. 
                e.preventDefault();

                // Triggering bPopup when click event is fired
                $('.login-regis').bPopup();

            });

        });

    })(jQuery);

    /*================================================================================
 * @name: bPopup - if you can't get it up, use bPopup
 * @author: (c)Bjoern Klinggaard (twitter@bklinggaard)
 * @demo: http://dinbror.dk/bpopup
 * @version: 0.9.1.min
 ================================================================================*/
 (function(b){b.fn.bPopup=function(u,C){function v(){a.modal&&b('<div class="b-modal '+d+'"></div>').css({backgroundColor:a.modalColor,position:"fixed",top:0,right:0,bottom:0,left:0,opacity:0,zIndex:a.zIndex+m}).appendTo(a.appendTo).fadeTo(a.speed,a.opacity);A();c.data("bPopup",a).data("id",d).css({left:"slideIn"===a.transition?-1*(j+h):n(!(!a.follow[0]&&p||f)),position:a.positionStyle||"absolute",top:"slideDown"===a.transition?-1*(k+h):q(!(!a.follow[1]&&r||f)),"z-index":a.zIndex+m+1}).each(function(){a.appending&&b(this).appendTo(a.appendTo)});D(!0)}function s(){a.modal&&b(".b-modal."+c.data("id")).fadeTo(a.speed,0,function(){b(this).remove()});D();return!1}function E(g){var b=g.width(),d=g.height();a.contentContainer.css({height:d,width:b});d<=c.height()&&(d=c.height());b<=c.width()&&(b=c.width());t=c.outerHeight(!0);h=c.outerWidth(!0);a.contentContainer.css({height:"auto",width:"auto"});A();c.dequeue().animate({left:n(!(!a.follow[0]&&p||f)),top:q(!(!a.follow[1]&&r||f)),height:d,width:b},250,function(){g.show();w=B()})}function D(b){switch(a.transition){case "slideIn":c.show().animate({left:b?n(!(!a.follow[0]&&p||f)):-1*(j+h)},a.speed,a.easing,function(){x(b)});break;case "slideDown":c.show().animate({top:b?q(!(!a.follow[1]&&r||f)):-1*(k+t)},a.speed,a.easing,function(){x(b)});break;default:b?c.fadeIn(a.speed,function(){x(b)}):c.stop().fadeOut(a.speed,a.easing,function(){x(b)})}}function x(g){g?(e.data("bPopup",m),c.delegate(".bClose, ."+a.closeClass,"click."+d,s),a.modalClose&&b(".b-modal."+d).css("cursor","pointer").bind("click",s),!F&&(a.follow[0]||a.follow[1])&&e.bind("scroll."+d,function(){w&&c.dequeue().animate({left:a.follow[0]?n(!f):"auto",top:a.follow[1]?q(!f):"auto"},a.followSpeed,a.followEasing)}).bind("resize."+d,function(){if(w=B())A(),c.dequeue().each(function(){f?b(this).css({left:j,top:k}):b(this).animate({left:a.follow[0]?n(!0):"auto",top:a.follow[1]?q(!0):"auto"},a.followSpeed,a.followEasing)})}),a.escClose&&y.bind("keydown."+d,function(a){27==a.which&&s()}),l(C)):(a.scrollBar||b("html").css("overflow","auto"),b(".b-modal."+d).unbind("click"),y.unbind("keydown."+d),e.unbind("."+d).data("bPopup",0<e.data("bPopup")-1?e.data("bPopup")-1:null),c.undelegate(".bClose, ."+a.closeClass,"click."+d,s).data("bPopup",null).hide(),l(a.onClose),a.loadUrl&&(a.contentContainer.empty(),c.css({height:"auto",width:"auto"})))}function n(a){return a?j+y.scrollLeft():j}function q(a){return a?k+y.scrollTop():k}function l(a){b.isFunction(a)&&a.call(c)}function A(){var b;r?b=a.position[1]:(b=((window.innerHeight||e.height())-t)/2-a.amsl,b=b<z?z:b);k=b;j=p?a.position[0]:((window.innerWidth||e.width())-h)/2;w=B()}function B(){return(window.innerHeight||e.height())>c.outerHeight(!0)+z&&(window.innerWidth||e.width())>c.outerWidth(!0)+z}b.isFunction(u)&&(C=u,u=null);var a=b.extend({},b.fn.bPopup.defaults,u);a.scrollBar||b("html").css("overflow","hidden");var c=this,y=b(document),e=b(window),F=/OS 6(_\d)+/i.test(navigator.userAgent),z=20,m=0,d,w,r,p,f,k,j,t,h;c.close=function(){a=this.data("bPopup");d="__b-popup"+e.data("bPopup")+"__";s()};return c.each(function(){if(!b(this).data("bPopup"))if(l(a.onOpen),m=(e.data("bPopup")||0)+1,d="__b-popup"+m+"__",r="auto"!==a.position[1],p="auto"!==a.position[0],f="fixed"===a.positionStyle,t=c.outerHeight(!0),h=c.outerWidth(!0),a.loadUrl)switch(a.contentContainer=b(a.contentContainer||c),a.content){case "iframe":var g=b('<iframe class="b-iframe" scrolling="no" frameborder="0"></iframe>');g.appendTo(a.contentContainer);t=c.outerHeight(!0);h=c.outerWidth(!0);v();g.attr("src",a.loadUrl);l(a.loadCallback);break;case "image":v();b("<img />").load(function(){l(a.loadCallback);E(b(this))}).attr("src",a.loadUrl).hide().appendTo(a.contentContainer);break;default:v(),b('<div class="b-ajax-wrapper"></div>').load(a.loadUrl,a.loadData,function(){l(a.loadCallback);E(b(this))}).hide().appendTo(a.contentContainer)}else v()})};b.fn.bPopup.defaults={amsl:50,appending:!0,appendTo:"body",closeClass:"b-close",content:"ajax",contentContainer:!1,easing:"swing",escClose:!0,follow:[!0,!0],followEasing:"swing",followSpeed:500,loadCallback:!1,loadData:!1,loadUrl:!1,modal:!0,modalClose:!0,modalColor:"#000",onClose:!1,onOpen:!1,opacity:0.7,position:["auto","auto"],positionStyle:"absolute",scrollBar:!0,speed:250,transition:"fadeIn",zIndex:9997}})(jQuery);

    $(document).ready(function () {
        $("#message_submit").click(function () {
            if ($("#txtResion").val() == '') {
                $("#rpMessage").css("display", "inline");
                $("#txtResion").focus();
            }
            else {
                var mydata = { postId: $("#Id").val(), resion: $("#txtResion").val() };
                SendReport(mydata);
                deselect();
                alert("Cảm ơn sự đóng góp của bạn!");                
                $("#report").addClass("reported");
                $("#txtResion").val('');
                $(this).addClass("b-close");
                $("#rpMessage").css("display", "none");
                
            }

        });
        function deselect() {
            $(".pop").slideFadeToggle(function () {
                $("#report").removeClass("selected");
            });
        }

        $("#report").live('click', function () {        
            
            if ($(this).hasClass("reported")) {
                alert("Báo cáo hoàn tất! Ban quan trị sẽ kiểm tra lại trong thời gian sớm nhất.");
            }
            else {
                $('#element_to_pop_up').bPopup();
                $("#txtResion").val('');
                $("#rpMessage").css("display","none");
                $("#txtResion").focus();
            }
            return false;
        });

        $("#message_cancel").live('click', function () {
            deselect();
            return false;
        });

        $.fn.slideFadeToggle = function (easing, callback) {
            return this.animate({ opacity: 'toggle', height: 'toggle' }, "fast", easing, callback);
        };


        function SendReport(mydata) {
            $.ajax({
                url: "/service/ReportPost?callback=?",
                type: "POST",
                data: mydata,
                error: function () {
                    //alert("");
                },
                success: function () {
                }
            });
        }
    });

    function addFavorite(id) {
        $.getJSON("/Post/AddFavorite", { id: id }, function (success) {
            if (success) {
                alert('Đã thêm bài vào danh mục');
                $("#favoriteImg").attr("src", window.ROOT + "Content/images/favorite_actived.png");
                $("#favorite").attr('value', 'Gỡ khỏi danh mục');
                $("#favorite").attr('onclick', 'removeFavorite(' + id + ');');
                $("#favorite").attr('title', 'Xóa tin này khỏi ngăn tin đăng quan tâm');
            }
        });
    }
    function removeFavorite(id) {
        $.getJSON("/Post/RemoveFavorite", { id: id }, function (success) {
            if (success) {
                alert('Đã xóa bài khỏi danh mục');
                $("#favoriteImg").attr("src", window.ROOT + "Content/images/triangle_fav.png");
                $("#favorite").attr('value', 'Thêm vào danh mục');
                $("#favorite").attr('onclick', 'addFavorite(' + id + ');');
                $("#favorite").attr('title', 'Cho vào danh sách tin đăng quan tâm của bạn');
            }
        });
    }