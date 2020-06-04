$(function () {
    $("#opendialog").button();
    $("#indentdialog").dialog({
        modal:true,
        width:300,
        height:500,
        autoOpen:false,
        title:"订单管理",
        position:{my:"center",at:"center",for:"mybody"},
        resizable:false,
        draggable:false,
    });

    $("#opendialog").click(function () {
        $("#indentdialog").dialog("open");
    });
})
