/**
 * 
 *
 */
$.extend($.fn.validatebox.defaults.rules, {
			    IP : {// 验证IP地址
			        validator : function(value) {
			            return /\d+\.\d+\.\d+\.\d+/.test(value);
			        },
			        message : 'IP地址格式不正确'
			    },
				number: {
					validator: function (value, param) {
						return /^[0-9]+.?[0-9]*$/.test(value);
					},
					message: '请输入数字'
				},
				
});