$(function(){
	$.ajax({
		url:$("base").attr("href")+"/pfCertRequest/getKeyUsage",
		dataType:"json",
		success:function(data){
			if(data.success == "success"){
				var list = data.list;
				var selectedStr = "selected='selected'";
				for(var i=0;i<list.length;i++){
					if(i != 0 && selectedStr !=""){
						selectedStr = "";
					}
					if(i == 0){
						$("#key_index").val(list[i].keyindex);
					}
					$("#key_usage_select").append("<option "+selectedStr+"value='"+list[i].keyindex+"'>"+list[i].keyusage+"</option>");
				}
			}else{
				alert("获取密钥用途失败!");
			}
		},
		error:function(){
			alert("获取密钥用途失败!");
		}
	});
	$("#key_usage_select").change(function(){
		$("#key_index").val($(this).find("option:selected").val());
	});
});