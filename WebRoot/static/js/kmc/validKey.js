/**
 * 
 */
var signValidFun;
$(function(){
	//固定需要签名的数据，后台也用这个
	var fixationData = "hello";
	
	//读key获取   序列号;签名
	function getserialAndSign(){
		       //方法返回值格式:当前key的序列号;签名值
		return PXCtl.LeaderKeySign(fixationData,fixationData.length);
	}
	signValidFun = function(){
		var serialAndSign = getserialAndSign();
		if(serialAndSign.split(";") != 2){
			alert("读Key错误:返回格式错误！");
			return "false";
		}
		var signResult =  "";
		$.ajax( {
			url : contextPath+"/pfgeneraterootkey/signValid",
			data :{serialNumber:serialAndSign.split[0],sign:serialAndSign.split[1],fixationData:fixationData},
			cache : false,
			type : 'POST',  
			secureuri:false,  
			dataType :'json',
			async : false,
			success : function(data) {
							if(data.success == "success"){
								signResult = data.signResult;
							}else{
								alert("签名验证失败！");
							}
					},
			error : function() {
					alert("签名验证失败！");
			}
		});
		return signResult;
	}
});