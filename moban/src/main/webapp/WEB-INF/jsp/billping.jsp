<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>老年人能力评估页面 >> 能力评估</span>
    </div>
    <div class="providerAdd">
        <form id="billForm" name="billForm" method="post" action="${pageContext.request.contextPath }/jsp/addbillping">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="billCode">编号：</label>
                <input type="text" name="billCode" class="text" id="billCode" value="">
                <!-- 放置提示信息 -->
                <font color="red"></font>
            </div>
            <div>
                <label for="productName">姓名：</label>
                <input type="text" name="productName" id="productName" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="productUnit">基础信息：</label>
                <input type="text" name="productUnit" id="productUnit" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="productCount">基础信息：</label>
                <input type="text" name="productCount" id="productCount" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="totalPrice">基础信息：</label>
                <input type="text" name="totalPrice" id="totalPrice" value="">
                <font color="red"></font>
            </div>
            <div>
                <label>基础信息：</label>
                <select name="providerId" id="providerId">
                </select>
                <font color="red"></font>
            </div>
            <div>
                <label>是否评估：</label>
                <input type="radio" name="isPayment" value="1" checked="checked">未评估
                <input type="radio" name="isPayment" value="2">已评估
            </div>
            <div class="providerAddBtn">
                <input type="button" name="add" id="add" value="保存">
                <input type="button" id="back" name="back" value="返回">
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/billadd.js"></script>