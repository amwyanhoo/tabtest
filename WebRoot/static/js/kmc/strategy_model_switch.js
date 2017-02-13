/*
		协商方式	策略类型	模板类型	密钥类型
		-----------------------------
		1集中		5单节点	1单节点	3.5
		1集中		0.2.3	2双节点	无
		0分散		4分散		2双节点	无
		1集中		1AK		3AK		无
		涉及方法：switchKey()、changeType()、changeDisperse()
	*/
	//20161116_HRX_策略类型变化时，改为AK，密钥协商方式只有集中
	var check = true;
	function switchKey(){
		var isallencrtomsg = $('#isallencrtomsg').val();//策略类型：0-普通 1-AK 2-银联 3-行内 4-分散 5-单节点
		if(isallencrtomsg==1){
			//处理模板类型
			document.getElementById("modeltype").options.value=3;
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//密钥类型：存储密钥5，用户主密钥3
			document.getElementById("revision").disabled="disabled";
		}else if(isallencrtomsg==4){
			//处理模板类型
			document.getElementById("modeltype").options.value=2;
			//处理协商方式
			document.getElementById("keyEx").options.value=0;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}else if(isallencrtomsg==5){
			//处理模板类型
			document.getElementById("modeltype").options.value=1;
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//密钥类型
			document.getElementById("revision").disabled="";
		}else{
			//处理模板类型
			document.getElementById("modeltype").options.value=2;
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}
	}
	//20161116_HRX_模板变化时，添加单节点策略相关，单节点的密钥协商方式只有集中方式
	function changeType(){
		var modelType =  $('#modeltype').val();//模板类型： 1-单节点 2-双节点
		if(modelType == 1){
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//处理策略类型
			document.getElementById("isallencrtomsg").value=5;
			//密钥类型
			document.getElementById("revision").disabled="";
		}else if(modelType == 3){
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//处理策略类型
			document.getElementById("isallencrtomsg").value=1;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}else{
			//处理协商方式
			document.getElementById("keyEx").options.value=1;
			//处理策略类型
			document.getElementById("isallencrtomsg").value=0;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}
	}
	//20161114_HRX_密钥协商方式变化时
	function changeDisperse(){
		var keyEx =  $('#keyEx').val();//密钥协商方式：1-集中、0-分散
		if(keyEx==0){
			//处理策略类型
			document.getElementById("isallencrtomsg").value=4;
			//处理模板类型
			document.getElementById("modeltype").value=2;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}else if(keyEx==1){
			//处理策略类型
			document.getElementById("isallencrtomsg").value=0;
			//处理模板类型
			document.getElementById("modeltype").value=2;
			//密钥类型
			document.getElementById("revision").disabled="disabled";
		}
	}