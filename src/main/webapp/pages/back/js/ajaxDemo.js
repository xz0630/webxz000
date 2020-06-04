//javascript 原生ajax
function ajaxMethod(node)
{
	//ajax操作对象
	var xhr = new XMLHttpRequest();
	//ajax发送并接收 成功以后的逻辑
	xhr.onreadystatechange = function ()
	{
		if (xhr.readyState == 4)
		{
			if (xhr.status == 200)
			{
				//打印ajax交互的返回结果
				var divNode  = document.getElementById("mydiv")
				divNode.innerHTML = xhr.responseText;
				divNode.className = "show";
			}
		}
	}
	//ajax准备工作  三个参数  请求方式  请求的路径  是否异步
	// var path = document.getElementById("contentPath").value;  获取jsp中的工程路径
	// xhr.open('get', path+'/AJAXServlet' , true);  通过字符拼接使用绝对路径
	xhr.open('post', 'AJAXServlet' , true);
	//发送 null为 发送的时候没有提交数据
	xhr.send("word="+node.value);
}
$(function ()
{
	$("input[type='text']").blur(function ()
	{
		var inputData = $(this).val();
		ajaxMethod("AJAXServlet",inputData,function(msg)
			{
				alert("服务器 返回结果= "+msg);
			});
	});
});
