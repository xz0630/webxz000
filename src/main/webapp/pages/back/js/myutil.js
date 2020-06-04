$(function  ajaxMethod(sendUrl,sendData,func) {
    $("input[type='text']").blur(function ()
    {
        var inputData = $(this).val();
        $.ajax({
            type:"POST",
            url:"sendUrl",
            data:"sendData="+inputData,
            success:func,
            error:function ()
            {
                alert("服务器正忙  ajax无法提交");
            }
        });
    });
})