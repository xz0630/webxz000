<%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/6/2
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
 String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"  media="all">
    <script src="<%=path%>/layui/layui.js" charset="utf-8"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<table class="layui-hide" id="test" lay-filter="test"></table>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
        <button class="layui-btn layui-btn-sm" lay-event="addadmin">添加管理员</button>

    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>




<form class="layui-form" id="userinfoform" action="" style="display: none">
    <div class="layui-form-item" id="accountdiv">
        <label class="layui-form-label">账号：</label>
        <div class="layui-input-block" id="account_inputdiv">
            <input type="text" name="acount" id="acount" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">名字：</label>
        <div class="layui-input-block">
            <input type="text" name="name" id="name" required  lay-verify="required" placeholder="请输入管理员名字" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码：</label>
        <div class="layui-input-block">
            <input type="text" name="pass" id="pass" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn formbtn" id="insertconfirm" lay-submit lay-filter="insertconfirm">确定</button>
                <button type="reset" class="layui-btn layui-btn-primary formbtn">重置</button>
        </div>
    </div>
</form>

<script>
    layui.use('table', function(){
        var table = layui.table;
        var $ = layui.jquery;
        table.render({
            elem: '#test'
            ,url:'/webxz/adminContrller/selectAdmin'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: []
            ,title: '用户数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', fixed: 'left', unresize: true, sort: true}
                ,{field:'acount', title:'账号', edit: 'text'}
                ,{field:'name', title:'名字', edit: 'text'}
                ,{field:'pass', title:'密码', edit: 'text', sort: true}
                // ,{field:'city', title:'城市', width:100}
                // ,{field:'sign', title:'签名'}
                // ,{field:'experience', title:'积分', width:80, sort: true}
                // ,{field:'ip', title:'IP', width:120}
                // ,{field:'logins', title:'登入次数', width:100, sort: true}
                // ,{field:'joinTime', title:'加入时间', width:120}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:180}
            ]]
            ,page: true
        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
                case 'addadmin':
                    var layerinsert = layer.open({
                        type: 1
                        ,title: '添加人员'
                        ,area: ['500px','400px']
                        ,shade: [0.8, '#314949'] //遮罩
                        ,resize: false //不可拉伸
                        ,content: $('#userinfoform') //内容
                        ,btn: 0
                        //如果设定了yes回调，需进行手工关闭
                    });
                    layui.use('form', function(){
                        var form = layui.form;
                        form.render();
                        form.on('submit(insertconfirm)', function(data){
                            // data.field.dealtype = "insertadmin"
                            // layer.alert("角色id:"+data.field.roleId)
                            // data.field.roleId = ""
                            layer.alert("ssssssss:"+data.field)
                            $.ajax({
                                url:"/webxz/adminContrller/addAdmin",
                                type: "POST",
                                data: data.field,
                                error: function (msg) {
                                    layer.alert("服务器繁忙");
                                },
                                success: function (msg) {
                                    layer.alert("添加成功");
                                    layer.close(layerinsert);
                                }
                            });
                            return false;
                        });
                    });
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.alert("data"+data);
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    $.ajax({
                        url:"/webxz/adminContrller/deleteAdmin",
                        type: "POST",
                        data: data,
                        error: function (msg) {
                            layer.alert("服务器繁忙");
                        },
                        success: function (msg) {
                            layer.alert("删除成功");
                        }
                    });
                    window.location.reload();
                    return false;
                });
            } else if(obj.event === 'edit'){
                var adminId = data.id;
                var layerinsert = layer.open({
                    type: 1
                    ,title: '修改人员'
                    ,area: ['500px','400px']
                    ,shade: [0.8, '#314949'] //遮罩
                    ,resize: false //不可拉伸
                    ,content: $('#userinfoform') //内容
                    ,btn: 0
                    //如果设定了yes回调，需进行手工关闭
                });
                layui.use('form', function(){
                    var form = layui.form;
                    form.render();
                    form.on('submit(insertconfirm)', function(data){
                        // data.field.dealtype = "insertadmin"
                        // layer.alert("角色id:"+data.field.roleId)
                        // data.field.roleId = ""
                        layer.alert("ssssssss:"+adminId)
                        data.field.id = adminId;
                        $.ajax({
                            url:"/webxz/adminContrller/updateAdmin",
                            type: "POST",
                            data: data.field,
                            error: function (msg) {
                                layer.alert("服务器繁忙");
                            },
                            success: function (msg) {
                                layer.alert("修改成功");
                                layer.close(layerinsert);
                                window.location.reload();
                            }
                        });
                        return false;
                    });
                });


                // layer.prompt({
                //     formType: 2
                //     ,value: data.email
                // }, function(value, index){
                //     obj.update({
                //         email: value
                //     });
                //     layer.close(index);
                // });
            }
        });
    });
</script>
</body>

</html>
