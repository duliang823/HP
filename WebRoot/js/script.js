/*
* JavaScript Template v0.1
* Copyright 2013, Poppy Chen
* www.xiguabaobao.com
* Free to use under the MIT license.
* http://www.opensource.org/licenses/mit-license.php
* 2013-9-9
*/


/* Table of Content
==================================================
	#Basic Scripts
	#Site Scripts 
	#Page Scripts */


/* #Basic Scripts（当使用jQuery时，为避免冲突，请删除或者注释此部分。）
==================================================*/


/* #Site Scripts
==================================================*/


/* #Page Scripts
==================================================*/
	$(document).ready(function(){
		/**
		 * 边栏导航悬停事件
		 */
		var $active = $('.side_item.active');
		$('.side_item').hover(function(){
			//移除所有
			$('.side_item').removeClass('active');
			//激活当前.side_item
			$(this).addClass('active');
		},function(){
			//移除所有
			$('.side_item').removeClass('active');
			//激活原来.side_item
			$active.addClass('active');
		});


		/**
		 * .option下拉列表事件
		 */
		//展开/收起下拉列表
		$('.option').click(function(){
			$(this).children('.option_list').slideToggle(200);
			$(this).toggleClass('active');
		});
		//设置option的值
		$('.option_list li').click(function(){
			//获取选择的值
			var text = $(this).text();
			//设置option的值
			$(this).parent().siblings('.option_result').text(text);
		});


		/**
		 * modal事件
		 */
		$('.modal-toggle').click(function(){
			$('#notice-modal').fadeIn('fast');
			$('#notice-modal').next('.modal-bg').fadeIn('fast');
		});

		/**
		 * 关闭事件
		 */
		$('.close').click(function(){
			$('#notice-modal').fadeOut('fast');
			$('#notice-modal').next('.modal-bg').fadeOut('fast');
		});
	});
