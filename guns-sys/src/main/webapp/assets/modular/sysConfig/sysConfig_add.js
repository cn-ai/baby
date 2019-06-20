/**
 * 添加或者修改页面
 */
var SysConfigInfoDlg = {
    data: {
        name: "",
        dictFlag: "",
        code: "",
        value: "",
        remark: "",
        createTime: "",
        createUser: "",
        updateTime: "",
        updateUser: ""
    }
};

layui.use(['form', 'admin', 'ax'], function () {
    var $ = layui.jquery;
    var $ax = layui.ax;
    var form = layui.form;
    var admin = layui.admin;

    //初始化字典选择框
    var initDictSelect = function () {
        $("#dictCodeDiv").show();
        $("#customCodeDiv").hide();

        //初始化所有字典类型
        $("#dictTypeCode").html('<option value="">请选择系统字典类型</option>');
        var ajax = new $ax(Feng.ctxPath + "/dictType/listTypes", function (data) {

            for (var i = 0; i < data.data.length; i++) {
                var dictTypeId = data.data[i].dictTypeId;
                var name = data.data[i].name;
                var code = data.data[i].code;
                $("#dictTypeCode").append('<option value="' + dictTypeId + '">' + code + '--' + name + '</option>');
            }
            form.render();

        }, function (data) {
        });
        ajax.start();
    };

    //初始化非字典选择
    var initCustomSelect = function () {
        $("#dictCodeDiv").hide();
        $("#customCodeDiv").show();
    };

    //表单提交事件
    form.on('submit(btnSubmit)', function (data) {
        var ajax = new $ax(Feng.ctxPath + "/sysConfig/addItem", function (data) {
            Feng.success("添加成功！");
            window.location.href = Feng.ctxPath + '/sysConfig'
        }, function (data) {
            Feng.error("添加失败！" + data.responseJSON.message)
        });
        ajax.set(data.field);
        ajax.start();

        return false;
    });

    //监听单选切换
    form.on('radio(dictChecked)', function (data) {
        if (data.value === "Y") {
            initDictSelect();
        } else {
            initCustomSelect();
        }
    });

    //监听字典选择
    form.on('select(dictTypeCode)', function (data) {

        var dictTypeId = data.value;

        //初始化字典详细列表
        $("#dictDetails").html('');
        var ajax = new $ax(Feng.ctxPath + "/dict/listDicts", function (data) {

            for (var i = 0; i < data.data.length; i++) {
                var name = data.data[i].name;
                var code = data.data[i].code;
                $("#dictDetails").append('<input type="radio" name="value" value="' + code + '" title="' + name + '">');
            }
            form.render();

        }, function (data) {
        });
        ajax.set("dictTypeId", dictTypeId);
        ajax.start();

    });

    //返回按钮
    $("#backupPage").click(function () {
        window.location.href = Feng.ctxPath + '/sysConfig'
    });

    //显示字典编码选择
    initDictSelect();

});