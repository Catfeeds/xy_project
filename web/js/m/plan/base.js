(function($){
	var msPointer = /IEMobile/i.test(navigator.uerAgent);
	$.isMobile = 'ontouchstart' in document || msPointer;
	var eventNames = $.eventNames = $.isMobile ? {
		start: msPointer ? 'MSPointerDown' : 'touchstart',
		move: msPointer ? 'MSPointerMove' : 'touchmove',
		end: msPointer ? 'MSPointerCancel' : 'touchend',
		cancel : msPointer ? 'MSPointerCancel' : 'touchcancel',
		click: 'tap',
		resize: 'onorientationchange' in window ? 'orientationchange' : 'resize'
	} : {
		start: 'mousedown',
		move: 'mousemove',
		end: 'mouseup',
		click: 'click',
		resize: 'resize'
	};
	
	!function() {

	  "use strict"; // jshint ;_;
	
	  $(function () {
	
		$.support.transition = (function () {
	
		  var transitionEnd = (function () {
	
			var el = document.documentElement
			  , transEndEventNames = {
				   'WebkitTransition' : 'webkitTransitionEnd'
				,  'MozTransition'    : 'transitionend'
				,  'OTransition'      : 'oTransitionEnd otransitionend'
				,  'transition'       : 'transitionend'
				}
			  , name
	
			for (name in transEndEventNames){
			  if (el.style[name] !== undefined) {
				return transEndEventNames[name]
			  }
			}
	
		  }())
	
		  return transitionEnd && {
			end: transitionEnd
		  }
	
		})()
	
	  })
	
	}();
	
	;(function(){
		function detect(ua){
		  this.browser = {name:'',version:''};
		  this.os = {name:'',version:''};
		  var data_browser = {
				  chrome: /Chrome\/([\d.]+)/,
				  android: function(){
					  return /Android/.test(ua) && ua.match(/AppleWebKit\/?([\d.]+)/);
				  },
				  safari: /Safari\/([\d.]+)/,
				  wechat: /MicroMessenger\/([\d.]+)/,
				  msie: /(MSIE)\s+([\d.]+)/,
				  firefox: /Firefox\/([\d.]+)/,
				  opera: window.opera,
				  netscape: /Netscape\/([\d.]+)/,
				  playbook: /PlayBook/,
				  silk: /Silk\/([\d._]+)/
			  };
			  
			var data_os = {
				  android: /(Android)([\s\/]([\d.]+))?/,
				  iphone: function(){
					 return !data_os.ipad.test(ua) && ua.match(/(iPhone\sOS)\s([\d_]+)/);
				  },
				  ipad: /(iPad).*OS\s([\d_]+)/,
				  ipod: /(iPod)(.*OS\s([\d_]+))?/,
				  webos: /(webOS|hpwOS)[\s\/]([\d.]+)/,
				  touchpad: function(){
					  !data_os.webos.test(ua) && ua.match(/TouchPad\s([\d_]+)/);
				  },
				  kindle: /Kindle\/([\d.]+)/,
				  blackberry: /(BlackBerry).*Version\/([\d.]+)/,
				  bb10: /(BB10).*Version\/([\d.]+)/,
				  rimtabletos: /(RIM\sTablet\sOS)\s([\d.]+)/
			  };
		
		var b_match, o_match;
		
		for(var i in data_browser){
			b_match = typeof data_browser[i] == 'function'? data_browser[i]() : ua.match(data_browser[i]);
			if( b_match ){
				 this.browser[i] = true;
				 this.browser['version'] = (b_match[2]||b_match[1]||"").replace(/_/g, '.').replace(/\//g,"");
				 this.browser['name'] = i;
				 break;
			}	
		}
		
		for(var j in data_os){
			o_match = typeof data_os[j] == 'function'? data_os[j]() : ua.match(data_os[j]);
			if( o_match ){
				 this.os[j] = true;
				 this.os['version'] = (o_match[2]||o_match[1]||"").replace(/_/g, '.').replace(/\//g,"");
				 this.os['name'] = j;
				 break;
			}	
		}
		
		b_match = o_match = null;
		
		if(this.os.iphone || this.os.ipad || this.os.ipod){
			this.os.ios = true;
		}
		
		this.os.tablet = !!(this.os.ipad || (this.os.android && !ua.match(/Mobile/)) || (this.browser.firefox && ua.match(/Tablet/))|| this.browser.playbook);
		this.os.phone  = !!(!this.os.tablet && (this.os.android || this.os.iphone || this.os.webos || this.os.blackberry || this.os.bb10 ||
		  (this.browser.chrome && ua.match(/Android/)) || (this.browser.chrome && ua.match(/CriOS\/([\d.]+)/)) || (this.browser.firefox && ua.match(/Mobile/))));
		}
		
		detect.call($, navigator.userAgent);
		
		$.__detect = detect;
	
	})()
	
	$.noop = $.noop || function(){};
	$.support = $.support || {};
	$.support.fixed = !$.isMobile || Boolean(($.os.ios && parseFloat($.os.version) >= 5) || ($.os.android && parseFloat($.os.version) >= 3));
	$.isAndroid2x = !$.support.fixed && $.browser.android;
	
	if(!window.console){
		window.console = {};
		console.log = console.info = console.table = console.warn = console.error = function(){};
	}
	
	(function() {
		var lastTime = 0;
		var vendors = ['webkit', 'moz'];
		for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
			window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
			window.cancelAnimationFrame = window[vendors[x] + 'CancelAnimationFrame'] ||    // name has changed in Webkit
										  window[vendors[x] + 'CancelRequestAnimationFrame'];
		}
	
		if (!window.requestAnimationFrame) {
			window.requestAnimationFrame = function(callback, element) {
				var currTime = new Date().getTime();
				var timeToCall = Math.max(0, 16.7 - (currTime - lastTime));
				var id = window.setTimeout(function() {
					callback(currTime + timeToCall);
				}, timeToCall);
				lastTime = currTime + timeToCall;
				return id;
			};
		}
		if (!window.cancelAnimationFrame) {
			window.cancelAnimationFrame = function(id) {
				clearTimeout(id);
			};
		}
	})();
	
	$.getTitle = function( text ) {
	  return text.match('<title>(.*)?</title>')[1];
	};
	
	$.getBody = function( html, clear ){
		html = html.match(/<body[\s\S]*?>([\s\S]*?)<\/body>/im)[1];
		if(clear === true){
			html = html.replace(/<script(.*[^.])*<\/script>/im, "");
		}
		return html;
	};
	
	$.isJSONstring = function(text){
		return /^[[\],:{}\s0]*$/.test(text.replace(/\\\\|\\"|\\'|\w+\s*\:|null|true|false|[+\-eE.]|new Date(\d*)/g, '0').replace(/"[^"]*"|'[^']*'|\d+/g, '0'));
	};
	
	$.tpl = function(str, o, regexp) {
		if (typeof str != 'string' || !o) {
			return str;
		}
		return str.replace(regexp || /\\?\$\{([^{}]+)\}/igm, function (match, name) {
			if (match.charAt(0) === '\\') {
				return match.slice(1);
			}
			return (o[name] === undefined) ? '' : o[name];
		});
	};

	(function(){
		$.file = $.file || {};
		
		var _head = document.head || document.getElementsByTagName('head')[0],
		_stack = $.file.stack = {},
		
		fileConfig = $.extend({
			base: 'js/',
			alias: {},
			charset: 'utf-8',
			async : true
		}, $.file.config || {}),
		
		_onload = function(node , callFn){
			node.onload = node.onreadystatechange = function() {
				if (!this.readyState || /complete|loaded/.test(this.readyState)) {
					node.onload = node.onreadystatechange = null;
					node.tagName == 'SCRIPT' && _head.removeChild( node );
					callFn.call(this);
				}
			};
			_head.appendChild( node );
		};
		
		$.file.load = {
			
			js:function(src , fn){
				if(_stack[src]){
					if(typeof fn === 'function')
						fn();
					return ;
				}
				var script = document.createElement('script');
				script.type = 'text/javascript';
				script.src = fileConfig.base + (fileConfig.alias[src] || src).replace(/\.js(\?(.*)|$)/, "") + '.js';
				script.setAttribute('async', fileConfig.async);
				script.setAttribute('charset', fileConfig.charset);
				
				_onload(script , function(){
					_stack[src] = {};
					fn.call(this);
				});
				
			},
			
			css:function(src , fn){
				if(_stack[src]){
					if(typeof fn === 'function')
						fn();
					return ;
				}
				var link = document.createElement('link');
				link.type ='text/css';
				link.rel ='stylesheet';
				link.href = fileConfig.base + (fileConfig.alias[src] || src);
				
				_onload(link , function(){
					_stack[src] = {};
					fn.call(this);
				});
			}	
		};
		
		$.file.require = $.file.include = function(srcGroup, callFn){
				srcGroup = srcGroup.constructor == Array ? srcGroup : srcGroup.split(",");
				callFn = callFn || function(){};
				if( !srcGroup.length ) return;
				function loadFile(){
					var src = $.trim( srcGroup.shift() ).replace(/\.js(\?(.*)|$)/, "");
					var argCaller = arguments.callee;
					if(_stack[ src ]){
						srcGroup.length == 0 ?
						callFn( src ):
						argCaller.call();
					}
					else{
						if ( /\.css(\?(.*)|$)/.test( src ) ) {
							$.file.load.css(src, function(){
								srcGroup.length == 0 ?
								callFn( src ) :
								argCaller.call();
							});
						}else{
							$.file.load.js(src, function(){
								srcGroup.length == 0 ?
								callFn( src ) :
								argCaller.call();
							});
						}
					}
				}
				loadFile();
			}
	})();
	
	;(function () {
		
		  "use strict"; // jshint
		
		 /* TAB CLASS DEFINITION
		  * ==================== */
		
		  var Tab = function (element) {
			this.element = $(element)
		  }
		
		  Tab.prototype = {
		
			constructor: Tab
		
		  , show: function () {
			  var $this = this.element
				, $ul = $this.closest('ul:not(.dropdown-menu)')
				, selector = $this.attr('data-target')
				, previous
				, $target
				, e
		
			  if (!selector) {
				selector = $this.attr('href')
				selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
			  }
		
			  if ( $this.parent('li').hasClass('active') ) return
		
			  previous = $ul.find('.active:last a')[0]
		
			  e = $.Event('show', {
				relatedTarget: previous
			  })
		
			  $this.trigger(e)
		
			  if (e.isDefaultPrevented()) return
		
			  $target = $(selector)
		
			  this.activate($this.parent('li'), $ul)
			  this.activate($target, $target.parent(), function () {
				$this.trigger({
				  type: 'shown'
				, relatedTarget: previous
				})
			  })
			}
		
		  , activate: function ( element, container, callback) {
			  var $active = container.find('> .active')
				, transition = callback
					&& $.support.transition
					&& $active.hasClass('fade')
		
			  function next() {
				$active
				  .removeClass('active')
				  .find('> .dropdown-menu > .active')
				  .removeClass('active')
		
				element.addClass('active')
		
				if (transition) {
				  element[0].offsetWidth // reflow for transition
				  element.addClass('in')
				} else {
				  element.removeClass('fade')
				}
		
				if ( element.parent('.dropdown-menu') ) {
				  element.closest('li.dropdown').addClass('active')
				}
		
				callback && callback()
			  }
		
			  transition ?
				$active.one($.support.transition.end, next) :
				next()
		
			  $active.removeClass('in')
			}
		  }
		
		
		 /* TAB PLUGIN DEFINITION
		  * ===================== */
		
		  var old = $.fn.tab
		
		  $.fn.tab = function ( option ) {
			return this.each(function () {
			  var $this = $(this)
				, data = $this.data('tab')
			  if (!data) $this.data('tab', (data = new Tab(this)))
			  if (typeof option == 'string') data[option]()
			})
		  }
		
		  $.fn.tab.Constructor = Tab
		
		
		 /* TAB NO CONFLICT
		  * =============== */
		
		  $.fn.tab.noConflict = function () {
			$.fn.tab = old
			return this
		  }
		
		
		 /* TAB DATA-API
		  * ============ */
		
		  $(document).on('click.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function (e) {
			e.preventDefault()
			$(this).tab('show')
		  })
		
	})();
	
	(function(){
	
		$.fn.tapDispose = function(target, callback){
			if( !this.length )
				return;
			var isMoved = true;
			if(target == undefined || typeof target == 'function'){
				callback = target;
				target = this;
			}
			this.delegate(target, eventNames.start, function(){
				isMoved = true;
				$(this).addClass('active');
			});
			this.delegate(target, eventNames.move, function(){
				isMoved = false;
				$(this).removeClass('active');
			});
			this.delegate(target, eventNames.end, function(e){
				if( isMoved ){
					var _this = this;
					//setTimeout(function(){
						$(_this).removeClass("active");
						callback && callback.call(_this, e);
					//}, 100);
				}
			});	
			return this;
		};
		
		$.fn.tap = function(callback){
			if( !this.length )
				return;
			return this.bind(eventNames.start, function(e){
				callback.call(this, e)								 
			});	
		};
		
	})();
	
	(function(){
		$.dialog = function(options){
			this.options = $.extend({
				type: 'dialog',
				title: "&nbsp;",
				content: "",
				button: null,
				addClass: '',
				timeout: null,
				onClose: null,
				template: $.dialog.template
			}, options || {});
			this.init();
		};
		
		$.dialog.prototype = {
			init: function(){
				var that = this;
				that.isTips = that.options.type == 'tips';
				that.show();
				that.dialog.on(eventNames.end, "[data-dismiss='dialog']", function(){
					that.close();
				});
			},
			renderTemplate: function(){
				var that = this,
				opt = that.options,
				dialog_data = {
					title: opt.title,
					content: opt.content
				},

				tmpl = opt.template.slice();
				
				if( that.isTips ){
					tmpl.splice(11, 2);
					tmpl.splice(2, 6, '<i class="ui-icon-loader"></i>');
					delete dialog_data[ 'title' ];
				}
				
				that.dialog = $($.tpl(tmpl.join(''), dialog_data))
				.appendTo(document.body);

				var name;
				that.dialog.find('*[class^="ui-dialog-"]').each(function(){
					name = this.className;
					that[ name.split('-')[2] ] = $('.' + name, that.dialog);
				});
				
				that.layer = $('.ui-dialog', that.dialog).addClass( opt.addClass );
				
				that.setButton( opt.button );
				
				if( opt.timeout > 0 ){
					setTimeout(function(){
						that.close();					
					}, opt.timeout);	
				}
				
				return that;
			},
			setTitle: function( title ){
				this.title.html( title );
				return this;
			},
			setContent: function( content ){
				this.content.html( content );
				return this;
			},
			setButton: function( btns ){
				if( !this.footer || !btns ){
					return this;
				}
				var that = this,
				index = 0;
				for(var i in btns){
					$('<a/>',{
					 	'html': i,
						'class': 'btn btn-blue'
					 })
					 .on( eventNames.end, (function(K){
						return function(e){
							e.preventDefault();
							btns[K].call(that, e);
							that.close();
						}
					})(i))
					.appendTo(that.footer);
					++index;
				}

				if( index == 1 ){
					that.footer.addClass('ui-button-single');	
				}
				return this;
			},
			show: function(){
				var that = this;
				that.renderTemplate();
				that.dialog.addClass('fadeIn');
				setTimeout(function(){
					that.dialog.removeClass('fadeIn');
				}, 200);
				return that;
			},
			close: function(){
				var that = this;
				that.dialog.addClass('fadeOut');
				setTimeout(function(){
					that.dialog.remove();
					that.options.onClose && that.options.onClose.call(null);
				}, 200);
				return that;
			}
		};
		
		$.dialog.template = [
			'<div class="ui-dialog-overlay">',
				'<div class="ui-dialog">',
					'<div class="ui-dialog-header">',
						'<h2 class="ui-dialog-title">',
						'${title}',
						'</h2>',
						'<a href="javascript:;" class="dialog-close" data-dismiss="dialog">\u00d7</a>',
					'</div>',
					'<div class="ui-dialog-content">',
					'${content}',
					'</div>',
					'<div class="ui-dialog-footer">',
					'</div>',
				'</div>',
			'</div>'				 
		];
		
		$.confirm = function(msg, fn, opts) {
			fn = fn || $.noop;
			return new $.dialog($.extend({
				title: '确认信息',
				content: msg,
				button: {
					'确定': function() {
						fn.call(this, true);
					},
					'取消': function() {
						fn.call(this, false);
					}
				}
			},
			opts || {}))
		};

		$.alert = function(msg, fn, opts) {
			fn = fn || $.noop;
			return new $.dialog($.extend({
				title: '提示信息',
				content: msg,
				button: {
					'确定': function() {
						fn.call(this);
					}
				}
			},
			opts || {}))
		};

		$.tips = function(msg, fn, opts) {
			return new $.dialog($.extend({
				type: 'tips',
				timeout: 2000,
				addClass: 'ui-dialog-tips',
				content: msg,
				onClose: fn
			},
			opts || {}))
		};

		$.tipsOK = function(msg, fn) {
			return this.tips(msg, fn, {
				addClass: 'ui-dialog-tipsOK'
			})
		};

		$.tipsError = function(msg, fn) {
			return this.tips(msg, fn, {
				addClass: 'ui-dialog-tipsError'
			})
		};

		$.loader = function(msg, fn) {
			$.loader.j = new $.dialog({
				type: 'tips',
				addClass: 'ui-dialog-loader',
				content: msg,
				onClose: fn
			})
		};

		$.loader.close = function() {
			if ($.loader.j) {
				$.loader.j.close();
				delete $.loader.j
			}
		};		  
	})();
	
	(function(){
		$.goback = function(){
			history.back();	
		};
		
		$.disableMove = function( flag ){
			if( flag ){
				if( $.disableMove.count == 0 ){
					$(document).on('touchmove.iScroll', function(e){
						e.preventDefault();									 
					});
				}
				++$.disableMove.count;
			}else{
				--$.disableMove.count;
				if( $.disableMove.count == 0 || $.disableMove.count < 0 ){
					$.disableMove.count = 0;
					$(document).off('touchmove.iScroll');
				}
			}
		};
		
		$.disableMove.count = 0;
		
		$.pageSlide = function( options ){
			if( !( this instanceof $.pageSlide ) ){
				return new $.pageSlide( options );	
			}
			this.options = $.extend({
				title: false,
				fillsize: '100%',
				speed: 250,
				timeout: 20000,
				effect: 'slideIn-right',
				content: '<span class="slide-loader"><i class="miniloader"></i>加载中...</span>',
				addClass: '',
				url: null,
				dataType: 'text',
				type: 'get',
				pageWrapper: '#page',
				singlePage: false,
				pageSlide: true,
				overlay: true,
				iScroll: false,
				cache: false,
				storage: false,
				onOpen: null,
				onClose: null,
				complete: null,
				template: $.pageSlide.template
			}, options || {});
			this.init();
		};
		
		$.pageSlide.prototype = {
			init: function(){
				var that = this,
				opts = that.options;
				that.hasOverlay = opts.overlay && (parseFloat( opts.fillsize ) < 100 );
				that.extraClass = $.pageSlide.effects[opts.effect.split('-')[1]];
				that.pageSlide = opts.pageSlide;
				that.page = $(opts.pageWrapper);
				that.show();
				if( that.hasOverlay ){
					that.overlay.addClass('ui-slide-fadeIn').tap(function(){
						$.goback();
					});
				}
				
				that.slide.on(eventNames.end, '.ui-slide-close', $.proxy(this.close, this));
				
				if( opts.url ){
					var J_cache = localStorage.getItem(opts.url);

					if( J_cache != undefined || J_cache != null ){
						if( !opts.storage ){
							localStorage.removeItem(opts.url);	
						}else{
							opts.complete && opts.complete.call(that, $.isJSONstring(J_cache) ? JSON.parse(J_cache) : J_cache, that.content[0]);
							return;
						}
					}

					var error = false;
					function requestData(){
						$.ajax({
							url: opts.url,
							type: opts.type.toLowerCase(),
							dataType: opts.dataType.toLowerCase(),
							cache: opts.cache,
							timeout: opts.timeout,
							beforeSend: function(){
								that.setContent( that.options.content );	
							},
							success: function( html ){
								html = opts.singlePage ? $.getBody( html ) : html;
								
								if( opts.storage ){
									localStorage.setItem(opts.url, typeof html == 'object' ? JSON.stringify(html) : html);	
								}
								
								if( error ){
									error = false;
									that.content.removeClass('slide-content-holder');
								}
								
								opts.complete && opts.complete.call(that, $.isJSONstring(html) ? JSON.parse(html) : html, that.content[0]);

							},
							error: function(){
								error = true;
								that.content.addClass('slide-content-holder').html('<span class="slide-loader" style="margin-left:-7em;">数据加载失败，请点击屏幕重试</span>')
								.one(eventNames.end, requestData);
							}
						});
					}
					
					requestData();

				}
	
			},
			renderTemplate: function(){
				var that = this,
				tmpl = that.options.template.slice();
				
				if( !that.options.title ){
					tmpl.splice( that.hasOverlay ? 4 : 3, 9);
				}
				
				that.body = $(document.body);
				
				var overlay = tmpl.shift();
				if( that.hasOverlay ){
					that.overlay = $(overlay).appendTo( that.body );
				}

				that.slide = $( tmpl.join('') ).appendTo( that.body );
				
				var name;
				that.slide
				.addClass(that.options.addClass)
				.find('*[class^="ui-slide-"]').each(function(){
					name = this.className;
					that[ name.split('-')[2] ] = $('.' + name, that.slide);
				});
				
				++$.pageSlide.count;
								
				return that;
			},
			setTitle: function( title ){
				this.title.html( title );
				return this;
			},
			setContent: function( content ){
				this.content.html( content );
				return this;
			},
			show: function(){
				var that = this,
				opt = that.options;
				
				that.renderTemplate();
				that.body.addClass("ui-slide-body");
				that.slide.show().addClass( opt.effect );
				if( that.pageSlide ){
					that.page.addClass('slideOut-'.concat(that.extraClass));
				}

				if( opt.title ){
					that.setTitle( opt.title );	
				}
				
				if( that.hasOverlay ){
					that.layer.css( that.extraClass, ( 100 - parseFloat(opt.fillsize)) + "%" );	
				}
				
				that.setContent( typeof opt.content == 'function' ? opt.content.call(that) : opt.content );
				
				$.disableMove(true);
				
				setTimeout(function(){
					that.slide.removeClass( opt.effect );
					if( that.pageSlide ){
						that.page.removeClass('slideOut-'.concat(that.extraClass));
					}
					
					if(that.overlay){
						that.overlay.removeClass("ui-slide-fadeIn");	
					}
					
					//if( opt.iScroll ){
					//	$.file.load.js("/Content/js/iScroll.min", function(){
					//		new iScroll(that.layer[0]);
					//	});
					//}

					opt.onOpen && opt.onOpen.call(that, that.content[0]);
				}, opt.speed);

				return that;
			},
			close: function(){
				var that = this;
				that.slide.addClass( $.pageSlide.effects[ that.options.effect ] );
				if( that.pageSlide ){
					that.page.addClass('slideIn-'.concat(that.extraClass));
				}
				
				if(that.overlay){
					that.overlay.addClass("ui-slide-fadeOut");	
				}
				
				$.disableMove(false);

				setTimeout(function(){
					that.slide.remove();
					if(that.overlay){
						that.overlay.remove();	
					}
					that.body.removeClass("ui-slide-body");
					if( that.pageSlide ){
						that.page.removeClass('slideIn-'.concat(that.extraClass));
					}
					if( --$.pageSlide.count == 0){
						$.pageSlide.count = 0;
					}
					that.options.onClose && that.options.onClose.call(that, that.content[0]);
				}, that.options.speed);

				return that;
			}
		};
		
		$.pageSlide.template = [
			'<div class="ui-slide-overlay"></div>',
			'<div class="ui-slide-wrapper">',
				'<div class="ui-slide-layer">',
					'<div class="ui-slide-inner">',
						'<header class="header ui-slide-header">',
							'<div class="header-navi">',
								'<a href="javascript:;"><i class="icon-arrow-l ui-slide-close"></i></a>',
							'</div>',
							'<h1 class="ui-slide-title"></h1>',
							'<div class="header-tools">',
								'<a href="javascript:;"><i class="icon-home"></i></a>',
							'</div>',
						'</header>',
						'<div class="ui-slide-content">',
						'</div>',
					'</div>',
				'</div>',
			'</div>'				 
		];
		
		$.pageSlide.effects = {
			'slideIn-right' : 'slideOut-right',
			'slideIn-left': 'slideOut-left',
			'slideIn-top' : 'slideOut-top',
			'slideIn-bottom'   : 'slideOut-bottom',
			'right' : 'left',
			'left' : 'right',
			'top' : 'bottom',
			'bottom' : 'top'
		};
		
		$.pageSlide.count = 0;
		
		$.pageSlide.hashTable = {};
		
		$.genUID = function(prefix){ 
			return (prefix || "uid_") + +new Date+(1E10*Math.random()).toFixed(0);
		};		  
	})();
	
	(function () { "use strict";

		  var backdrop = '.dropdown-backdrop'
		  var toggle   = '[data-toggle=dropdown]'
		  var Dropdown = function (element) {
			$(element).on('click.bs.dropdown', this.toggle)
		  }
		
		  Dropdown.prototype.toggle = function (e) {
			var $this = $(this)
		
			if ($this.is('.disabled, :disabled')) return
		
			var $parent  = getParent($this)
			var isActive = $parent.hasClass('open')
		
			clearMenus()
		
			if (!isActive) {
			  if ('ontouchstart' in document.documentElement && !$parent.closest('.navbar-nav').length) {
				// if mobile we use a backdrop because click events don't delegate
				$('<div class="dropdown-backdrop"/>').insertAfter($(this)).on('click', clearMenus)
			  }
		
			  $parent.trigger(e = $.Event('show.bs.dropdown'))
		
			  if (e.isDefaultPrevented()) return
		
			  $parent
				.toggleClass('open')
				.trigger('shown.bs.dropdown')
		
			  $this.focus()
			}
		
			return false
		  }
		
		  Dropdown.prototype.keydown = function (e) {
			if (!/(38|40|27)/.test(e.keyCode)) return
		
			var $this = $(this)
		
			e.preventDefault()
			e.stopPropagation()
		
			if ($this.is('.disabled, :disabled')) return
		
			var $parent  = getParent($this)
			var isActive = $parent.hasClass('open')
		
			if (!isActive || (isActive && e.keyCode == 27)) {
			  if (e.which == 27) $parent.find(toggle).focus()
			  return $this.click()
			}
		
			var $items = $('[role=menu] li:not(.divider):visible a', $parent)
		
			if (!$items.length) return
		
			var index = $items.index($items.filter(':focus'))
		
			if (e.keyCode == 38 && index > 0)                 index--                        // up
			if (e.keyCode == 40 && index < $items.length - 1) index++                        // down
			if (!~index)                                      index=0
		
			$items.eq(index).focus()
		  }
		
		  function clearMenus() {
			$(backdrop).remove()
			$(toggle).each(function (e) {
			  var $parent = getParent($(this))
			  if (!$parent.hasClass('open')) return
			  $parent.trigger(e = $.Event('hide.bs.dropdown'))
			  if (e.isDefaultPrevented()) return
			  $parent.removeClass('open').trigger('hidden.bs.dropdown')
			})
		  }
		
		  function getParent($this) {
			var selector = $this.attr('data-target')
		
			if (!selector) {
			  selector = $this.attr('href')
			  selector = selector && /#/.test(selector) && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
			}
		
			var $parent = selector && $(selector)
		
			return $parent && $parent.length ? $parent : $this.parent()
		  }
		
		
		  // DROPDOWN PLUGIN DEFINITION
		  // ==========================
		
		  var old = $.fn.dropdown
		
		  $.fn.dropdown = function (option) {
			return this.each(function () {
			  var $this = $(this)
			  var data  = $this.data('bs.dropdown')
		
			  if (!data) $this.data('bs.dropdown', (data = new Dropdown(this)))
			  if (typeof option == 'string') data[option].call($this)
			})
		  }
		
		  $.fn.dropdown.Constructor = Dropdown
		
		
		  // DROPDOWN NO CONFLICT
		  // ====================
		
		  $.fn.dropdown.noConflict = function () {
			$.fn.dropdown = old
			return this
		  }
		
		
		  // APPLY TO STANDARD DROPDOWN ELEMENTS
		  // ===================================
		
		  $(document)
			.on('click.bs.dropdown.data-api', clearMenus)
			.on('click.bs.dropdown.data-api', '.dropdown form', function (e) { e.stopPropagation() })
			.on('click.bs.dropdown.data-api'  , toggle, Dropdown.prototype.toggle)
			//.on('keydown.bs.dropdown.data-api', toggle + ', [role=menu]' , Dropdown.prototype.keydown)
		
	})();
	
	(function(){
		var modalSelectBtn = ".modalSelect-btn";
		var modalSelect = function( element, options ){
			this.element = element;	
			this.init.call(this, options);
		};
		
		modalSelect.prototype = {
			init: function( options ){
				this.options = $.extend({}, $.fn.modalSelect.defaults,options||{});
				this.selectedValue = '';
				this.selectOpts = this.getOptions();
				this.createNode();
			},
			createNode: function(){
				var exraCls = this.options.extraClass;
				var thisEl = this.element;
				
				thisEl.style.display = "none";
				this.wrapper = $("<div/>",{
								'class': 'btn-group modal-select ' + (thisEl.className||"").replace(/(^|\s*)bs\-select(\s*|$)/,"") + ( exraCls ? ' ' + exraCls : ''),
								'style': thisEl.style.cssText,
								'html': '<button class="btn btn-blue modalSelect-btn" data-toggle="dropdown">'+ this.selectedValue||"" +'</button>'
							})
							.insertAfter( thisEl ).show();
				
				this.selectBtn = this.wrapper.find( modalSelectBtn );
				
				this.dropdown = $('<ul/>',{
					'class': 'dropdown-menu select-dropdown'
				})
				.html( this.renderSelect())
				.appendTo(this.wrapper);
				
				this.initEvents();
			},
			setValue: function( value ){
				for(var i = 0; i < this.selectOpts.length; i++){
					if( this.selectOpts[i].value == value ){
						this.selectBtn.text( value );
						this.element.options.selectedIndex = i;
						$(this.element).trigger("change");
						this.dropdown.find("li:eq("+ i +")").addClass("selected").siblings().removeClass("selected");
						break;
					}								 
				}
				return this;
			},
			getValue: function(){
				return this.element.value;	
			},
			getOptions: function(){
				var that = this;
				var dataOpts = $.map(this.element.options, function( option ){
					var opt = { value: "", text: ""};
					if( option.selected ){
						that.selectedValue = option.text;
						opt.selected = true;
					}
					opt.value = option.value;
					opt.text = option.text;
					return opt;									
				});
				
				return dataOpts;
			},
			renderSelect: function(){
				var that = this;
				var selectHTML = '';
				this.selectOpts.forEach(function( opt, index ){
					opt.index = index;
					opt.selected = opt.selected ? ' class="selected"' : '';
					selectHTML += $.tpl( that.options.itemTpl, opt );
				});
				return selectHTML;
			},
			refresh: function(){
				this.selectOpts = this.getOptions();
				this.selectBtn.text( this.selectedValue );
				this.dropdown.html( this.renderSelect() );
				return this;
			},
			initEvents: function(){
				var that = this;
				this.dropdown.on(eventNames.end, ">li>a", function(){
					if( this.getAttribute("data-value") == that.element.value )
						return;
					that.selectBtn.text( $(this).text() );
					that.element.options.selectedIndex = this.getAttribute("data-index");
					$(that.element).trigger("change");
					$(this.parentNode).addClass("selected").siblings().removeClass("selected");
				});	
			},
			destroy: function(){
				this.wrapper.remove();
				$(this.element).show();
				return this;
			}
		};
		
		$.fn.modalSelect = function() {
			var option = [].slice.call( arguments );
			var method = option.shift();
			return this.each(function () {
			  var $this = $(this)
			  var data  = $this.data('bs.modalSelect')
		
			  if (!data) $this.data('bs.modalSelect', (data = new modalSelect(this, option)))
			  if (typeof method == 'string') data[method].apply(data, option)
			})
		  }
		
		$.fn.modalSelect.Constructor = modalSelect;
		
		$.fn.modalSelect.defaults = {
			zIndex: 200,
			itemTpl: '<li${selected}><a href="javascript:;" data-index="${index}" data-value="${value}">${text}</a></li>'
		};
		
		$(document)
			.on('focus.modalSelect', modalSelectBtn, function(){
				this.parentNode.style.zIndex = $.fn.modalSelect.defaults.zIndex + 10;
			})
			.on('blur.modalSelect'  , modalSelectBtn, function(){
				this.parentNode.style.zIndex = "";												   
			});
		
		$(function(){
			$(".bs-select").modalSelect();
		});
		
	})();
		
	$.fn.ajaxSubmit = function(fnSuccess, fnError){
		if( !this.length )
			return;
		var options, _this;
		return this.each(function(){
			options = {
				url: this.action || this.getAttribute('action') || location.href,
				type: this.method || this.getAttribute('method') || 'POST'
			};
			
			_this = this;

			if(typeof fnSuccess == 'object'){
				options = $.extend(options, fnSuccess || {});
			}
			
			options.success = function(){
				(typeof fnSuccess == 'function' ? fnSuccess : fnSuccess.success).apply(_this, arguments);	
			};
				
			options.error = fnError || fnSuccess.error ? function(){
				(fnError || fnSuccess.error).apply(_this, arguments);
			} : function(){
				alert('request error');
			};
			
			this.onsubmit = function(e){
				e.preventDefault();
				if(options.beforeSubmit && options.beforeSubmit.call(this) == false){
					return false
				}
				if(options.confirm){
					var _self = this;
					$.confirm(options.confirm, function(){
						options.data = $(_self).serialize();
						$.ajax(options);							
					});
					return
				}
				options.data = $(this).serialize();
				$.ajax(options);
			};
		});	
	};
	
	(function(){
		var swipeSlider = function(){
			this.init.apply(this, arguments);
		};
		
		swipeSlider.prototype = {
			init: function( options ){
				var that = this;
				this.slider = $(options.slider);
				this.bullets = this.slider.find(".slider-nav").children();
				
				var opt = this.slider.attr("data-slider");
				if( opt ){
					opt = eval("("+ opt +")");	
				}
				if( options.callback ){
					var cb = options.callback;
					options.callback = function(){
						cb.apply(that, arguments);	
					}
				}else{
					options.callback = function(){
						that.sliderCallback.apply(that, arguments);
					}
				}
				
				this.options = $.extend({}, swipeSlider.defaults, options, opt);
				
				$.file.load.js("swipe.min", function(){
					that.buildSlider();	
				});
				
			},
			buildSlider: function(){
				Swipe(this.slider[0], this.options);
			},
			sliderCallback: function(index, element) {
				var i = this.bullets.length;
				while ( i-- ) {
					this.bullets[ i ].className = ' ';
				}
				try{
					this.bullets[ index ].className = 'active';
				}catch(e){}
			}
		};
		
		swipeSlider.defaults = {
			auto: 3000,
			callback: null
		};
		
		$.swipeSlider = swipeSlider;
		
		$.fn.swipeSlider = function(options){
			options = options || {};
			return this.each(function(){
				var data = $.data(this, "swipeSlider");
				if( !data ){
					options.slider = this;
					return $.data(this, "swipeSlider", new swipeSlider(options) );
				}
			});	
		};
		
	})();
	
	(function(){
		var swipeGallery = function(){
			this.init.apply(this, arguments);
		};
		
		swipeGallery.prototype = {
			init: function( options ){
				var that = this;
				this.slider = $(options.slider);
				this.sliderItem = this.slider.find(".slider-item");
				this.bullets = this.slider.find(".slider-nav").children();
				this.counter = this.slider.find(".swipe-counter");
				this.counter.text("1" + "/"+ this.sliderItem.length);
				
				var opt = this.slider.attr("data-slider");
				if( opt ){
					opt = eval("("+ opt +")");	
				}
				if( options.callback ){
					var cb = options.callback;
					options.callback = function(){
						cb.apply(that, arguments);	
					}
				}else{
					options.callback = function(){
						that.galleryCallback.apply(that, arguments);
					}
				}
				
				this.options = $.extend({}, swipeGallery.defaults, options, opt);
				
				$.file.load.js("swipe.min", function(){
					that.buildGallery();
				});
				
			},
			buildGallery: function(){
				Swipe(this.slider[0], this.options);
			},
			galleryCallback: function(index, element) {
				this.counter.text(index + 1 + "/"+ this.sliderItem.length);
			}
		};
		
		swipeGallery.defaults = {
			auto: 3000,
			callback: null
		};
		
		$.swipeGallery = swipeGallery;
		
		$.fn.swipeGallery = function(options){
			options = options || {};
			return this.each(function(){
				var data = $.data(this, "swipeGallery");
				if( !data ){
					options.slider = this;
					return $.data(this, "swipeGallery", new swipeGallery(options) );
				}
			});	
		};
		
	})();
	
	;(function(){
		var navSwiper = function(){
			this.init.apply(this, arguments);
		};
		
		navSwiper.prototype = {
			init: function( opts ){
				var that = this;
				this.options = $.extend({}, navSwiper.defaults, opts || {});
				this.element = $( this.options.scroller );
				if(!this.element.length){
					return
				}
				//$.file.load.js("iScroll.min", function(){
				//	that.renderSwipe(that.options);	
				//	that.initEvents();
				//});
			},
			renderUI: function(){
				var navBd = this.swiper = this.element.children().eq(0);
				var child = navBd.children();
				var width = 0;
				child.each(function(){
					width += (this.offsetWidth + ( parseInt( $(this).css("margin-left") ) || 0 ) + ( parseInt(  $(this).css("margin-right") ) ) );
				});
				navBd.width(width);
			},
			renderSwipe: function( opt ){
				this.renderUI();
				this.menu = new iScroll(this.element[0], opt);
			},
			initEvents: function(){
				var that = this;
				$(window).on("resize", this.resizeHandler = function(){
					if( that.timer ){
						clearTimeout(that.timer);	
					}
					that.timer = setTimeout(function(){
						that.renderUI();
					},50);
					
				});	
			}
		};
		
		navSwiper.defaults = {
			hScrollbar: false	
		};
		
		$.navSwiper = navSwiper;
		
		$.fn.navSwiper = function(options){
			options = options || {};
			return this.each(function(){
				var data = $.data(this, "navSwiper");
				if( !data ){
					options.scroller = this;
					return $.data(this, "navSwiper", new navSwiper(options));
				}
			});	
		};
		
	})();
	
	$.fillBlank = function(elem){
		if(elem.tagName !== "IMG"){
			return;
		}
		elem.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF////AAAAVcLTfgAAAAF0Uk5TAEDm2GYAAAAMSURBVHjaYmAACDAAAAIAAU9tWeEAAAAASUVORK5CYII=";	
	};
	
	(function(){
		var lazyload = function(){
			this.init.apply(this, arguments);
		};
		
		lazyload.prototype = {
			
			nodeMap: [],
			
			init: function( opts ) {
				opts = opts || {};
				this.options = $.extend({}, $.lazyload.defaults, opts || {});
				this.win = $(this.options.panel);
				this.container = $(this.options.container || document.body);
				this.add( this.container.find( this.options.selector ) );
				this._addEvent();
				this.start();
			},
			
			add: function(selector){
				var nodeList = typeof selector == "object" ? Array.prototype.slice.call(selector) : $(selector).get();
				this._renderMap(nodeList);
			},
			
			_renderMap: function(list){
				if(typeof list !== "object"){
					return	
				}
				var map = [];
				list.forEach(function(item){
					map.push({
						element: item,
						top: $(item).offset().top		 
					});					  
				});
				Array.prototype.push.apply(this.nodeMap, map);
			},
			
			destroy: function () {
				this.win.off('scroll', this.scrollHandler);
			},
			
			rebuild: function () {
				this.win.on('scroll', this.scrollHandler);
			},
			
			start: function(){
				this.scrollHandler();	
			},
			
			_addEvent: function () {
				var that = this;
				
				that.timeout = null;
				
				that.scrollHandler = function () {
					if(that.timeout){
						clearTimeout(that.timeout);	
					}
					that.timeout = setTimeout(function(){
						that._handler();
					},that.options.timeout);
				}
				
				this.win.on('scroll', that.scrollHandler);
			},
			
			_handler: function () {
				var that = this,
				opts = that.options;
				
				typeof opts.onScroll == 'function' && opts.onScroll.apply(that);
				
				if(!that.nodeMap.length){
					return;	
				}
				
				this.winHeight = this.win.height();
				this.scrllTop = this.win.scrollTop();
				
				var i = 0;
				var checkItem = function(){
					
					if( !that.nodeMap.length ){
						if(opts.autoDestory){
							that.destroy();
						}
						return;	
					}
					
					var item = that.nodeMap[i];
					
					if(!item){
						return;	
					}
					
					if ( that._isAppeared( item.top ) ) {
						typeof opts.onAppear == 'function' && opts.onAppear.call(that, item.element);
						that.nodeMap.splice(i, 1);
					}else{
						i++;	
					}
					arguments.callee.call();
				};
				
				checkItem();
			},
			
			_isAppeared: function ( top ) {
				return ( top - this.winHeight - this.scrllTop ) < this.options.bufferPx;
			}
			
		};
		
		lazyload.defaults = {
			panel: window,
			container: null,
			selector: "img[data-src]",
			bufferPx: 0,
			timeout: 100,
			onAppear: null,
			onScroll: null,
			autoDestory: true
		};
		
		$.lazyload = lazyload;
		
	})();
	
	$.goTop = {
		isShown: false,
		defOpts: {
			distance: 300,
			tpl: '<div class="go-top"></div>'
		},
		init: function(opts){
			if( !this.isShown ){
				this.opts = $.extend({}, this.defOpts, opts||{});
				this.handler = $(this.opts.tpl).appendTo(document.body);
				this.win = $(window);
				this._bindEvent();
				this._scrollHandler();
				this.isShown = true;
			}
		},
		_bindEvent: function(){
			var that = this;
			
			this.handler.on("click", this._eventHandler);
			
			this.scrollHandler = function(){
				that._scrollHandler();
			};
			this.win.on("scroll", this.scrollHandler);
		},
		_scrollHandler: function(){
			if(this.win.scrollTop() > this.opts.distance){
				this.handler.show();	
			}else{
				this.handler.hide();
			}
		},
		_eventHandler: function(){
			var scrTop = window.pageYOffset || document.body.scrollTop || document.documentElement.scrollTop;
			if(!scrTop){
				return;	
			}
			if( scrTop > 5000 ){
				window.scroll(0, 0);
				return;
			}
			var doScroll = function(){
				if(scrTop > 0){
					scrTop -= 50;
					window.scroll(0, scrTop);
					requestAnimationFrame(doScroll);
				}
			};
			doScroll();
		},
		destory: function(){
			this.win.off("scroll", this.scrollHandler);
			this.handler.remove();
		}
		
	};
	
	$.toggler = function( e ){
		var $parent = $(this).parent();
		if( $parent.hasClass("open") ){
			$parent.removeClass("open");
		}else{
			$parent.addClass("open");	
		}
	};
	
	$.collapse = function(){
		var $parent = $(this).closest(".module-collapse");
		if( $parent.hasClass("closed") ){
			$parent.removeClass("closed");
		}else{
			$parent.addClass("closed");	
		}
	};
	
	$.fixMenu = {
		init: function(){
			var menus = this.menus = $("[data-role=fixed-menu]");
			menus.each(function(){
				$.data(this, "ui.offsetTop", $(this).offset().top);
		 	});
			this.handler.call(this);
			this.initEvents();
		},
		initEvents: function(){
			if( !this.menus.length ) return;
			$(window).on("scroll.fixedMenu", $.proxy(this.handler, this));
		},
		handler: function(){
			var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
			this.menus.each(function(){
				if( scrollTop >= $.data(this, 'ui.offsetTop') ){
					$(this).addClass("menu-fixed");
				}else{
					$(this).removeClass("menu-fixed");
				}
			});	
		}
	};
	
	$.header = (function(){
		var init = function(){
			 $("#header").on(eventNames.end + ".header", "[data-toggle]", function( e ){
				e.preventDefault();
				var toggle = $(this).attr("data-toggle");
				if (toggle == 'search') {
				    alert($("#site_search").css('display'))
					$("#site_search").slideToggle(400);	
				}									   
			});	
		}
		return {
			init: init	
		}
		
	})();
	
	$.bottom = {
		init: function(){
			$("#b_share_trigger").on(eventNames.end, function(e){
				e.preventDefault();
				var	page_PPicker = $.pageSlide({
					effect: 'slideIn-bottom',
					pageSlide: false,
					fillsize: '30%',
					addClass: 'pageSlide-share',
					overlay: false,
					content: $("#share-wrapper").html(),
					onOpen: function( panel ){
						$(panel).find("#share_cancel_btn").on(eventNames.end, function(){
							page_PPicker.close();														
						});
					}
				});									  
				
			});
		}				 
	};
	
	$.global = (function(){
		return {
			init: function(){
				$(document)
				.on(eventNames.end + ".toggler", '[data-toggle="collapse"]', $.toggler)
				.on(eventNames.end + ".collapse", ".module-collapse > .module-header", $.collapse)
				.on(eventNames.end, ".page-gotop", function(){
					$.goTop._eventHandler();				
				});
				
				$.fixMenu.init();
			}	
		}					 
	})();
	
	$(function(){
		$.header.init();
		$.global.init();
		$.bottom.init();
		$(document.body).tapDispose(".tap, .btn");
		$(".swipe-slider").swipeSlider();
		$(".swipe-gallery").swipeGallery();
		$(".scrollview-menu").navSwiper();	
		//$.goTop.init();		   
	});
		  
})(this.jQuery || this.Zepto);