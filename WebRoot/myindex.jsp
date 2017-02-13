<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"";

	String parentMenuStr=(String)request.getAttribute("parentMenuStr");
	String deptId=(String)request.getAttribute("deptId");
	String userId=(String)request.getAttribute("userId");
%>
<head>
    <title>主界面</title>
    <base target="mainPanle"/>
<!--  修改菜单颜色  -->
	<link href="<%=request.getContextPath() %>/static/css/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/static/js/easyui/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/default/easyui.css" />
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jQuery.easyui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/easyloader.js"></script>
    <script type="text/javascript">
<%--	 var _menus2 =<%=parentMenuStr%> ;--%>
	 var _menus2 ={
		"menus":
			[
			{
				"icon":
						"icon-sys",
				"menus":
						[{"icon":"icon-nav","menuname":"审计管理员管理","url":"/pfuser/SelectSJAdmin"},
						{"icon":"icon-nav","menuname":"审计操作员管理","url":"/pfuser/queryForPageList"}
						],
				"menuid":
						"610","menuname":"用户信息管理"
				}
			]
		} ;
				
        //设置登录窗口
        function openPwd() {
            $('#w').window({
                title: '修改密码',
                width: 350,
                modal: true,
                shadow: true,
                closed: true,
                height: 185,
                resizable:false
            });
        }
        //关闭登录窗口
        function close() {
            $('#w').window('close');
        }

        //修改密码
        function serverLogin() {
            var $newpass = $('#txtNewPass');
            var $rePass = $('#txtRePass');

            if ($newpass.val() == '') {
                msgShow('系统提示', '请输入密码！', 'warning');
                return false;
            }
            if ($rePass.val() == '') {
                msgShow('系统提示', '请在一次输入密码！', 'warning');
                return false;
            }
            if ($newpass.val() != $rePass.val()) {
                msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                return false;
            }
           
            $.post('/ajax/editpassword.ashx?newpass=' + $newpass.val(), function(msg) {
                msgShow('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + msg, 'info');
                $newpass.val('');
                $rePass.val('');
                close();
            })
        }
        
		//退出
        $(function() {
            openPwd();
            //
            $('#editpass').click(function() {
                $('#w').window('open');
            });

            $('#btnEp').click(function() {
                serverLogin();
            })
           
            $('#loginOut').click(function() {
                $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {
                    if (r) {
                        location.href = '/ajax/loginout.ashx';
                    }
                });
            })
        });
    </script>

<style type="text/css">
  div.menu ul
{
    list-style:none; /* 去掉ul前面的符号 */
    margin: 0px; /* 与外界元素的距离为0 */
    padding:0px; /* 与内部元素的距离为0 */
    width: auto; /* 宽度根据元素内容调整 */
    
}
/* 所有class为menu的div中的ul中的li样式 */
div.menu ul li
{
    float:left; /* 向左漂移，将竖排变为横排 */
}
/* 所有class为menu的div中的ul中的a样式(包括尚未点击的和点击过的样式) */
div.menu ul li a, div.menu ul li a:visited
{
    background-color: ; /* 背景色 */
    border: 2px #FFE9EB solid; /* 边框 */
    border-top:none;
    border-bottom:none;
<!--    border-left:none;-->
    color: black; /* 栏中的文字颜色 */
    display: block; /* 此元素将显示为块级元素，此元素前后会带有换行符 */
    line-height: 1.35em; /* 行高 */
    padding: 4px 20px; /* 内部填充的距离 */
    text-decoration: none; /* 不显示超链接下划线 */
    white-space: nowrap; /* 对于文本内的空白处，不会换行，文本会在在同一行上继续，直到遇到 <br> 标签为止。 */
}
/* 所有class为menu的div中的ul中的a样式(鼠标移动到元素中的样式) */
div.menu ul li a:hover
{
    background-color: #880000; /* 背景色 */
    color: l465c71; /* 文字颜色 */
    text-decoration: none; /* 不显示超链接下划线 */
}
/* 所有class为menu的div中的ul中的a样式(鼠标点击元素时的样式) */
div.menu ul li a:active
{
    background-color: #880000; /* 背景色 */
    color: #cfdbe6; /* 文字颜色 */
    text-decoration: none; /* 不显示超链接下划线 */
}
</style>
<style type="text/css">
.textclass{border:0px solid;text-align: center;}
.date{
  border: none;
  text-align: center;
}

.alwaysCenter{
	position:fixed;
	width:800px;
	height:500px;
	z-index:99;
	top:50%;
	left:50%;
	margin-left:-400px;
	margin-top:-250px;
}
</style>
<base target="_self">
<script type="text/javascript">
	function o(e){
		window.open(e,"","width=400,height=300,scrollbars=1,top=200,left=500");
	}
		
</script>
</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
	<input id="currentUserId" value="<%=userId%>">
    <div region="north" split="true" border="false" style="overflow: hidden; height:65px; line-height: 30px;color: #fff; font-family:Times New Roman,宋体">
        <div style="height:60px;background-image:url('<%=request.getContextPath() %>/static/img/index/top.png');background-size:100%;background-repeat: no-repeat;">
						<%
							Date date=new Date();
							DateFormat nowdate = new SimpleDateFormat("yyyy-MM-dd HH:mm");
							String now = nowdate.format(date);
						 %>
			      <span id='uInfo' style="color:black;float:right; padding-right:20px;padding-top: 20px; float:right;" class="head" >
			    	 您好！<input id="serialNum" value="serialNum" width='120' style='background:transparent;border:0px' readonly="readonly" onkeydown="stop();"/>
<!--			    	 <shiro:principal/>&nbsp;&nbsp;&nbsp;&nbsp;-->
			                         登录时间: 
			        <input class="right" name="insertdata" type="hidden" id="insertdata" style="color:black;font-size:14px;border: 0px;" readonly="readonly" value="<%=now %>"></input>
						<%=now %>&nbsp;&nbsp;&nbsp;&nbsp;
			        <a id="loginOut1" style="color:black;cursor:pointer;text-decoration:none;" onclick="return doLogOut();">安全退出</a>
			      </span>
        </div>
        
        <div style="width: 100%; background-color: transparent;border: none;">
	        <div class="menu"  style="width: 90%;background-color: transparent;border: none; float: left;">
	        </div>
        </div>
    </div>
    <div region="south" split="true" style="height: 29px; ">
        <div style="color:black;text-align:center;padding-top:3px;">教育卡密钥管理系统欢迎您!&nbsp;&nbsp;&nbsp;&nbsp;Copyright © 2016 – 2025 MYGL All Rights Reserved.v1.0</div>
    </div>
    <div region="west" split="true" title="菜单栏" style="width:220px;" id="west" >
           <div class="easyui-accordion" fit="true" border="false" >
           		<div title="用户信息管理"  icon="icon-sys" style="overflow:auto;">
	<ul>
		<li>
			<div  onclick="showMenu(this,'mainFrame00')">
				<img src="/tabtest/static/img/index/txt.gif" />
				<a target=mainFrame00 href="/tabtest/pfuser/SelectSJAdmin" >
					<span class="icon icon-nav" >
					</span>审计管理员管理
				</a>
			</div>
		</li> 
		<li>
			<div  onclick="showMenu(this,'mainFrame01')">
				<img src="/tabtest/static/img/index/txt.gif" />
				<a target=mainFrame01 href="/tabtest/pfuser/queryForPageList" >
				<span class="icon icon-nav" ></span>
				审计操作员管理</a>
			</div></li> 
	</ul>
</div>
			</div>
    </div>
<!--  background-image:url('<%=request.getContextPath() %>/static/images/changePic/1435043866443794.png');background-repeat: no-repeat;  -->
    <div id="mainPanle" style="background-image:url('<%=request.getContextPath() %>/static/images/changePic/xlogo.jpg');background-repeat: no-repeat;overflow-y:hidden" region="center">
		 
        <div id="tabs" class="easyui-tabs"  fit="true" border="false">
			<div title="首页" style="overflow:hidden;text-align:center;" id="home">
				   <table cellpadding="0" cellspacing="0" border="0" width="100%" height="70%"style="margin:0px auto;">
						<tr>
						<td align="center" valign="middle" height='240px'>
							<table width="100%"  style='background-color: transparent;;' cellspacing="0" cellpadding="0" >
							   	<tr>
								    <td align='center' height='60px;' style='font-family:"楷体";font-size:36px;'>
									 	教育卡密钥管理系统欢迎您！
			   							<br/> 当您完成工作，请务必退出系统。
									</td>
							  	</tr>
							</table>
						</tr>
					</table>
				</div>
			</div>
		</div>

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>

<script type="text/javascript">

	var path='<%=path%>';

<%--   		$(function(){--%>
<%--				InitLeftMenu(_menus2);--%>
<%--				tabClose();--%>
<%--				tabCloseEven();--%>
<%--			});--%>
<%--			--%>

		
//初始化左侧
function InitLeftMenu(_menus) {

    $(".easyui-accordion").empty();
    var menulist = "";
   
    $.each(_menus.menus, function(i, n) {
        menulist += '<div title="'+n.menuname+'"  icon="'+n.icon+'" style="overflow:auto;">';
		menulist += '<ul>';
        $.each(n.menus, function(j, o) {
           var flag=i+''+j;
           var frameName="mainFrame"+flag;
			menulist += '<li><div  onclick="showMenu(this,\''+frameName+'\')"><img src="<%=request.getContextPath() %>/static/img/index/txt.gif" /><a target='+frameName+' href="' +path+ o.url + '" ><span class="icon '+o.icon+'" ></span>' + o.menuname + '</a></div></li> ';
        })
        menulist += '</ul></div>';
    })

	$(".easyui-accordion").append(menulist);
	
	$('.easyui-accordion li div').click(function(){
	    var obj=$(this).find("a");
	    var frameN=$(obj).attr("target");
		var tabTitle = $(obj).text();
		var url = $(obj).attr("href");
		addTab(tabTitle,url,frameN);
		$('.easyui-accordion li div').removeClass("selected");
		$(this).addClass("selected");
	}).hover(function(){
		$(this).addClass("hover");
	},function(){
		$(this).removeClass("hover");
	});

	$(".easyui-accordion").accordion();
}

function addTab(subtitle,url,frameN){
	if(!$('#tabs').tabs('exists',subtitle)){
		$('#tabs').tabs('add',{
			title:subtitle,
			content:createFrame(url,frameN),
			closable:true,
			width:$('#mainPanle').width()-10,
			height:$('#mainPanle').height()-26
		});
	}else{
		$('#tabs').tabs('select',subtitle);
	}
	tabClose();
}

function createFrame(url,frameN)
{
	var s = '<iframe name='+frameN+' id='+frameN+' scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	return s;
}

function tabClose()
{
	//双击关闭TAB选项卡
	$(".tabs-inner").dblclick(function(){
		var subtitle = $(this).children("span").text();
		$('#tabs').tabs('close',subtitle);
	})
    $('.tabs-inner').click(function (e) {
		e.preventDefault();
	})
	$(".tabs-inner").bind('contextmenu',function(e){
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});
		
		var subtitle =$(this).children("span").text();
		$('#mm').data("currtab",subtitle);
		
		return false;
	});
}
//绑定右键菜单事件
function tabCloseEven()
{
	//关闭当前
	$('#mm-tabclose').click(function(){
		var currtab_title = $('#mm').data("currtab");
		$('#tabs').tabs('close',currtab_title);
	})
	//全部关闭
	$('#mm-tabcloseall').click(function(){
		$('.tabs-inner span').each(function(i,n){
			var t = $(n).text();
			$('#tabs').tabs('close',t);
		});	
	});
	//关闭除当前之外的TAB
	$('#mm-tabcloseother').click(function(){
		var currtab_title = $('#mm').data("currtab");
		$('.tabs-inner span').each(function(i,n){
			var t = $(n).text();
			if(t!=currtab_title)
				$('#tabs').tabs('close',t);
		});	
	});
	//关闭当前右侧的TAB
	$('#mm-tabcloseright').click(function(){
		var nextall = $('.tabs-selected').nextAll();
		if(nextall.length==0){
			//msgShow('系统提示','后边没有啦~~','error');
			alert('后边没有啦~~');
			return false;
		}
		nextall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});
	//关闭当前左侧的TAB
	$('#mm-tabcloseleft').click(function(){
		var prevall = $('.tabs-selected').prevAll();
		if(prevall.length==0){
			alert('到头了，前边没有啦~~');
			return false;
		}
		prevall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});

	//退出
	$("#mm-exit").click(function(){
		$('#mm').menu('hide');
	})
}

//弹出信息窗口 title:标题 msgString:提示信息 msgType:信息类型 [error,info,question,warning]
function msgShow(title, msgString, msgType) {
	$.messager.alert(title, msgString, msgType);
}

  function showMenu(obj,frameN){//flag是菜单的唯一标识
    var url=$(obj).find("a").attr("href");
    $("#"+frameN).attr("src",url);
  }	
	/*20160825_hrx_退出时的动作*/
	function doLogOut(){
		if(confirm("是否确认退出？")){
			window.location = "../login";
		}
		else{
			return false;
		}
	}	
	/*20160825_hrx_修改密码点击取消时的动作*/
	function doClose(){
		javascript:window.history.go(-1); return false
		//window.location = top.location.reload();
	}	
	function doUpdate(){
		var txtNewPass = $('#txtNewPass').val();
		var txtRePass  = $("#txtRePass").val();
		//alert(txtNewPass+","+txtRePass );
		window.location = "../pfuser/userInfoUpdateSkip";
    }
</script>
</body>
</html>