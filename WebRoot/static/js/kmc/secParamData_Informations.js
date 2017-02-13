$(function(){
		var arr = [{title:"hsm_monitor_exec",pValue:"001",Desc:"是否执行监控"},
			{title:"hsm_timeout",pValue:"2000",Desc:"加密机超时时间"},
			{title:"hsm_bug_segregate",pValue:"180",Desc:"故障隔离时间"},
			{title:"hsm_retry_times",pValue:"3",Desc:"失败重试次数"},
			{title:"hsm_upload_time",pValue:"010000",Desc:"上传时间点"},
			{title:"tps_obtain_period",pValue:"010000-223000",Desc:"加密机监控时间段"},
			{title:"tps_run_seconds",pValue:"20",Desc:"运算时间长度"},
			{title:"tps_max_connections",pValue:"30",Desc:"运算时间加密机最大的连接数"},
			{title:"hsm_nattach_threshold",pValue:"512@768",Desc:"连接数使用告警阀值"},
			{title:"hsm_mem_threshold",pValue:"5000@7000",Desc:"内存使用告警阀值"},
			{title:"hsm_cpu_threshold",pValue:"3000@5000",Desc:"cpu使用告警阀值"},
			{title:"hsm_collect_time",pValue:"10",Desc:"cmp监控文件采集时间"},
			{title:"polling_interval_update",pValue:"sa7_1001",Desc:"轮询周期"},
			{title:"senType1008",pValue:"0508@@0019@@1234567890123456789@@0010@@1234567890",Desc:"E00080 DATA"},
			{title:"senType1009",pValue:"0509@@0019@@1234567890123456789@@0010@@123",Desc:"E00090 DATA"},
			{title:"senType1005",pValue:"0505@@0019@@1234567890123456789@@0010@@1234567890",Desc:"E00050 DATA"},
			{title:"senType1013",pValue:"060D@@0019@@1234567890123456789@@0010@@1234567890@@123",Desc:"E00130 DATA"},
			{title:"log_level",pValue:"4",Desc:"log_level"},
			{title:"bug_segregate_param",pValue:"600",Desc:"kmc故障隔离时间"},
			{title:"log_update",pValue:"50",Desc:"日志上传条数"}]
		$("#paramKey").bigAutocomplete({width:160,data:arr,callback:function(data){
			document.getElementById("paramValue").value = data.pValue;
			document.getElementById("description").value = data.Desc;
		}});
	})