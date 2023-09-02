<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>科技政策查询系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/public.css"/>

</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>科技政策查询系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> ${userSession.userName }</span> , 欢迎你！</p>
        <a href="${pageContext.request.contextPath }/jsp/logout.do">退出</a>
    </div>
</header>

<!--时间-->
<section class="publicTime">
    <span id="time">2015年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">

    <div class="left">
        <div id="nav">
            <h2>导航</h2>
            <div id="tree" style="font-size: 15px;">
                <el-tree
                        :data="typeDataJson"
                        nodeKey="id"
                        :props="children"
                        default-expand-all
                        @node-click="handleNodeClick"
                >
                </el-tree>
            </div>
        </div>
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="${pageContext.request.contextPath }/jsp/xinwenManagement">科技政策查询</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/pwdmodify">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/jsp/logout.do">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
    <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>
    <script>
    // 调用时，字段名以字符串的形式传参，如treeData(source, 'id', 'parentId', 'children')


    var vue = new Vue({
    el: "#app",
    data: {
    pagination: {},
    dataList: [], //当前页要展示的列表数据
    formData: {}, //表单数据
    typeDataList : [], //树形结构数据
    typeDataTree : {},
    typeDataJson : {},
    dialogFormVisible: false, //控制表单是否可见
    dialogFormVisible4Edit: false, //编辑表单是否可见
    rules: {
    //校验规则
    type: [
    { required: true, message: "图书类别为必填项", trigger: "blur" },
    ],
    name: [
    { required: true, message: "图书名称为必填项", trigger: "blur" },
    ],
    },
    },

    //钩子函数，VUE对象初始化完成后自动执行
    created() {
    this.getAll();
    this.getAllType();
    },

    methods: {
    //列表

    handleNodeClick(data){
    const json = JSON.stringify({ id:0 , label:data.label, children:[]});
    axios.post("/policys/type", json , {
    headers:{
    'Content-Type': 'application/json'
    }
    }).then((res)=>{
    this.dataList = res.data;

    })
    },

    getAllType(){
    axios.get("/types").then((res) => {
    this.typeDataJson = res.data;


    })
    },

    getAll() {
    //发送ajax请求
    axios.get("/policys").then((res) => {
    this.dataList = res.data;
    });
    },

    //弹出添加窗口
    handleCreate() {
    this.dialogFormVisible = true;
    this.resetForm();
    },

    //重置表单
    resetForm() {
    this.formData = {};
    },

    //添加
    handleAdd() {
    //发送ajax请求
    axios
    .post("/books", this.formData)
    .then((res) => {
    console.log(res.data);
    //如果操作成功，关闭弹层，显示数据
    if (res.data.code == 20011) {
    this.dialogFormVisible = false;
    this.$message.success("添加成功");
    } else if (res.data.code == 20010) {
    this.$message.error("添加失败");
    } else {
    this.$message.error(res.data.msg);
    }
    })
    .finally(() => {
    this.getAll();
    });
    },

    //弹出编辑窗口
    handleGetById(row) {
    // console.log(row);   //row.id 查询条件
    //查询数据，根据id查询


    this.formData = row;
    this.dialogFormVisible4Edit = true;

    // axios.get("/policys/" + row.id).then((res) => {
    //   // console.log(res.data.data);

    //   //展示弹层，加载数据
    //   this.formData = res.data;
    //   this.dialogFormVisible4Edit = true;
    // });
    },
    handleGetByIndex() {
    // console.log(row);   //row.id 查询条件
    //查询数据，根据id查询
    var _name = this.formData.name;
    var _document = this.formData.document;
    var _organ = this.formData.organ;
    if(_name == null){
    _name = "null";
    }
    if(_document == null){
    _document = "null";
    }
    if(_organ == null){
    _organ = "null";
    }
    const json = JSON.stringify({ name:_name , document : _document, organ:_organ});
    axios
    .post(
    "/policys/" , json , {
    headers:{
    'Content-Type': 'application/json'
    }
    }
    )
    .then((res) => {
    // console.log(res.data.data);

    //展示弹层，加载数据
    this.dataList = res.data;
    });
    },
    //编辑
    handleEdit() {
    //发送ajax请求
    axios
    .put("/books", this.formData)
    .then((res) => {
    //如果操作成功，关闭弹层，显示数据
    if (res.data.code == 20031) {
    this.dialogFormVisible4Edit = false;
    this.$message.success("修改成功");
    } else if (res.data.code == 20030) {
    this.$message.error("修改失败");
    } else {
    this.$message.error(res.data.msg);
    }
    })
    .finally(() => {
    this.getAll();
    });
    },

    // 删除
    handleDelete(row) {
    //1.弹出提示框
    this.$confirm("此操作永久删除当前数据，是否继续？", "提示", {
    type: "info",
    })
    .then(() => {
    //2.做删除业务
    axios
    .delete("/books/" + row.id)
    .then((res) => {
    if (res.data.code == 20021) {
    this.$message.success("删除成功");
    } else {
    this.$message.error("删除失败");
    }
    })
    .finally(() => {
    this.getAll();
    });
    })
    .catch(() => {
    //3.取消删除
    this.$message.info("取消删除操作");
    });
    },
    },
    });
    function aa(type){
        alert(type);
        window.location.href = "http://localhost:8080/smbms_mvc_war/jsp/selectAllServlet?type=" + type;
        window.location.href = "http://localhost:8080/2022.10.25/selectAllServlet?type=" + type;

    }
    </script>