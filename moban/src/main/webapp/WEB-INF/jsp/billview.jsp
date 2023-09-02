<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>老年人能力评估页面 >> 信息查看</span>
    </div>
    <div class="providerView">
        <p><strong>编号：</strong><span>${bill.billCode }</span></p>
        <p><strong>姓名：</strong><span>${bill.productName }</span></p>
        <p><strong>基础信息：</strong><span>${bill.productUnit }</span></p>
        <p><strong>基础信息：</strong><span>${bill.productCount }</span></p>
        <p><strong>基础信息：</strong><span>${bill.totalPrice }</span></p>
        <p><strong>基础信息：</strong><span>${bill.providerName }</span></p>
        <p><strong>是否评估：</strong>
            <span>
         		<c:if test="${bill.isPayment == 1}">未评估</c:if>
				<c:if test="${bill.isPayment == 2}">已评估</c:if>
			</span>
        </p>
        <div class="providerAddBtn">
            <input type="button" id="back" name="back" value="返回">
        </div>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/billview.js"></script>