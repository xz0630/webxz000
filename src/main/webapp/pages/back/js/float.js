// function closeMenu(node)
// {
//     var divNode = document.getElementById("aside");
//     var arr = divNode.childNodes;
//     arr = filterSpaceNode(arr);
//
//     var childDivArr = divNode.getElementsByTagName("div");
//
//     var nowDiv = node.nextSibling;
//
//     for (var i = 0; i < childDivArr.length; i++) {
//       if (nowDiv === childDivArr[i]) {
//         if(nowDiv.className == "close")
//         {
//           nowDiv.className = "open";
//         }else{
//           nowDiv.className = "close";
//         }
//       }else{
//           childDivArr[i].className = "close";
//       }
//     }
// }
$(function (node) {
    // var childDivArr = divNode.getElementsByTagName($("#aside div"));
    // var nowDiv = node.nextSibling;
    // for (var i = 0; i < childDivArr.length; i++) {
    //     if (nowDiv === childDivArr[i]) {
    //     if(nowDiv.className == "close")
    //     {
    //       nowDiv.className = "open";
    //     }else{
    //       nowDiv.className = "close";
    //     }
    //   }else{
    //       childDivArr[i].className = "close";
    //   }
    // }
    $("#aside div").css("display","none")
    $("#aside h2").on("click",function () {
        $(this).next().css("display","block");
    })

});