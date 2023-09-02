<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
    <!-- 引入样式 -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport"
    />

    <link rel="stylesheet" href="../plugins/elementui/index.css" />

    <link
            rel="stylesheet"
            href="../plugins/font-awesome/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="../css/style.css" />
  <!-- 引入样式 -->
  <script src="../js/vue.js"></script>

  <script src="../plugins/elementui/index.js"></script>

  <script type="text/javascript" src="../js/jquery.min.js"></script>

  <script src="../js/axios-0.18.0.js"></script>
</head>
<style>
    #app{
        width: 1400px;
    }
    #nav {
        line-height: 30px;
        background-color: #8deaf0;
        height: 1000px;
        float: left;
        padding: 5px;
    }
    #section {
        float: right;
        width: 1000px;
        padding: 10px;
        clear:right;
    }
    .el-dialog{
        width: 1200px !important;

    }

</style>
<body>
<div>
<div class="right">
  <!-- 头部标题栏 -->
  <div class="location">
    <strong>你现在所在的位置是:</strong>
    <span>树形查询界面</span>
  </div>
<%--  <div style="height: 100px;width: 100%;background-color: aqua;--%>
<%--	text-align: center;">--%>
<%--<!--    <img src="./assets/LOGO.png" width="60px"/>-->--%>
<%--    <span>科技政策查询系统</span>--%>
<%--  </div>--%>
  <!-- 搜索区域 -->
  <!-- 下边栏区域 -->
<div id="app">
    <div id="nav">
        <h2>导航</h2>
    <!-- 侧边树形结构 -->
    <el-tree :data="trees" :props="defaultProps" @node-click="handleNodeClick"></el-tree>
    <!-- 表格显示 -->
    </div>
    <div >
    <el-table id="section"
            :fixed='right'
          :data='tableData'
          stripe
          :border='true'
    >
    <el-table-column width="250px" prop='zcmc' label='名称'></el-table-column>
    <el-table-column width="150px" prop='fwjg' label='分区'></el-table-column>
    <el-table-column width="120px" prop='bbrq' label='年龄'></el-table-column>
      <el-table-column width="100px" prop='zcfl' label='基础信息'></el-table-column>
    <el-table-column width="100px"   label='操作'>
      <template slot-scope='scope'>
        <el-button @click="handleClick(scope.row)" type="text" size="medium">查看</el-button>
      </template>
    </el-table-column>
      </el-table>
    </div>

    <el-dialog :visible.sync="dialogTableVisible" title="正文">
        <div v-html="text">{{text}}</div>
    </el-dialog>

  <!-- 底部信息区域 -->
  <!-- <div style="position: absolute;bottom: 0;background-color: black;color: white;width: 99%;text-align: center;height: 50px;line-height: 50px;">
    <span>Copyright 1996-2022 All Rights Reserved 版权所有：河北省科学技术情报研究院 河北省科技创新战略研究院 技术支持：河北省科技信息处理实验室。</span>
  </div> -->
</div>
</div>


<script>

  var vue = new Vue({
    el: "#app",
    data(){
      return{
          dialogTableVisible:false,
        text:"",
        data:"123",
        input01:"",
        input02:"",
        input03:"",
        input04:"",
        formInline: {
          user: '',
        },
        trees:[],
        defaultProps: {
          children: 'children',
          label: 'label'
        },
        tableData: [],
      }
    },



    created() {
      this.gettrees()
    },
    methods:{
      open(name,text) {
        this.$alert(text, name, {
          dangerouslyUseHTMLString: true,
          showClose:true,
          closeOnPressEscape:true,
          lockScroll:false,
        });
      },
      handleClick(data){
         // alert(data)
        console.log(data)
        var name = data.zcmc;
        axios.get('http://localhost:80/gettextbymc/'+name).then(res=>{
            console.log( res)
            //alert(res)
          this.text = res.data;
            this.dialogTableVisible=true;
          // this.open(name,this.text)
        })
      },
      gettrees(){
        axios.get('http://localhost:80/getsorttree/').then(res=>{
          console.log(res)
          this.trees = res.data;
        })
      },
      getbytype(type){
        var b = type.substr(0,type.lastIndexOf("("));
        axios.get('http://localhost:80/getbytype/'+b).then(res=>{
          console.log(res)
          this.tableData = res.data;
        })
      },
      onSubmit(){

      },
      handleNodeClick(data){
        console.log(data)
        this.getbytype(data.label)
      },
    }
  })

  // import axios from 'axios';
  // export default {
  //   name: 'app',
  //
  //   }
  // }
</script>

  <%@include file="/WEB-INF/jsp/common/foot.jsp" %>


