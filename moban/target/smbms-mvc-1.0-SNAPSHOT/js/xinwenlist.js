var xinwenObj;

//供应商管理页面上点击删除按钮弹出删除框(providerlist.jsp)
function deleteXinwen(obj) {
    $.ajax({
        type: "GET",
        url: path + "/jsp/deletexinwen",
        data: {id: obj.attr("id")},
        dataType: "json",
        success: function (data) {
            if (data.delResult == "true") {//删除成功：移除删除行
                cancleBtn();
                obj.parents("tr").remove();
            } else if (data.delResult == "false") {//删除失败
                //alert("对不起，删除供应商【"+obj.attr("proname")+"】失败");
                changeDLGContent("对不起，删除供应商【" + obj.attr("name") + "】失败");
            } else if (data.delResult == "notexist") {
                //alert("对不起，供应商【"+obj.attr("proname")+"】不存在");
                changeDLGContent("对不起，供应商【" + obj.attr("name") + "】不存在");
            } else {
                // alert("对不起，该供应商【" + obj.attr("proname") + "】下有【" + data.delResult + "】条订单，不能删除");
                changeDLGContent("对不起，该供应商【" + obj.attr("name") + "】下有【" + data.delResult + "】条订单，不能删除");
            }
        },
        error: function (data) {
            //alert("对不起，删除失败");
            changeDLGContent("对不起，删除失败");
        }
    });
}

function openYesOrNoDLG() {
    $('.zhezhao').css('display', 'block');
    $('#removeProv').fadeIn();
}

function cancleBtn() {
    $('.zhezhao').css('display', 'none');
    $('#removeProv').fadeOut();
}

function changeDLGContent(contentStr) {
    var p = $(".removeMain").find("p");
    p.html(contentStr);
}

$(function () {
    $(".viewXinwen").on("click", function () {
        //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
        var obj = $(this);
        alert(obj.attr("id"));
        window.location.href = path + "/jsp/viewxinwen?id=" + obj.attr("id");
    });

    $(".modifyXinwen").on("click", function () {
        var obj = $(this);
        window.location.href = path + "/jsp/modifyxinwen?id=" + obj.attr("id");
    });

    $('#no').click(function () {
        cancleBtn();
    });

    $('#yes').click(function () {
        deleteXinwen(xinwenObj);
    });

    $(".deleteXinwen").on("click", function () {
        xinwenObj = $(this);
        changeDLGContent("你确定要删除供应商【" + xinwenObj.attr("name") + "】吗？");
        openYesOrNoDLG();
    });

});