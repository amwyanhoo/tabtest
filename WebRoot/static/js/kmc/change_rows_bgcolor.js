/*20160912_hrx_点击一行变色*/
   //鼠标点击选择行时候变色
function rowColor_change(change) {
	var oObj = window.event.srcElement;
	//alert(change.tagName.toLowerCase());
	if(oObj.tagName.toLowerCase() == "td"){   
		var oTr = oObj.parentNode;   
		for(var i=1; i<document.all.caapptable.rows.length; i++)   {   
			document.all.caapptable.rows[i].style.backgroundColor   =   "";   
			document.all.caapptable.rows[i].tag = false;   
		}
		oTr.style.backgroundColor = "#aaffee";   
		oTr.tag = true;   
	}
}
//鼠标点击另外一行时关闭已选行变色
function rowColor_out() {
	var oObj = event.srcElement;
	if(oObj.tagName.toLowerCase() == "td"){
		var oTr = oObj.parentNode;
		if(!oTr.tag) oTr.style.backgroundColor = "";
	}
}
//鼠标移动到选择行上时的行变色
function rowColor_over(){   
	var oObj = event.srcElement;
	if(oObj.tagName.toLowerCase() == "td"){   
	var oTr = oObj.parentNode;
	if(!oTr.tag) oTr.style.backgroundColor = "#E1E9FD";
	}
}


/*20160908_hrx_设置获得焦点与失去焦点时的背景_start*/
function setFocus(element){
	element.style.backgroundColor="#99CCFF";
}

function lostFocus(element){
	element.style.backgroundColor="white";
}
/*20160908_hrx_设置获得焦点与失去焦点时的背景_end*/