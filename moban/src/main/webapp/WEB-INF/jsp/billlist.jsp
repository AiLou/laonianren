<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>老年人能力评估页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/jsp/billManagement">

            <span>姓名：</span>
            <input name="queryProductName" type="text" value="${queryProductName }">

            <span>民族：</span>
                <select name="queryProviderId">
                    <c:if test="${providerList != null }">
                        <option value="0">--请选择--</option>
                        <c:forEach var="provider" items="${providerList}">
                            <option
                                    <c:if test="${provider.id == queryProviderId }">selected="selected"</c:if>
                                    value="${provider.id}">${provider.proName}</option>
                        </c:forEach>
                    </c:if>
            </select>
            <span>评估状态：</span>
            <select name="queryIsPayment">
                <option value="0">--请选择--</option>
                <option value="1" ${queryIsPayment == 1 ? "selected=\"selected\"":"" }>未评估</option>
                <option value="2" ${queryIsPayment == 2 ? "selected=\"selected\"":"" }>已评估</option>
            </select>

            <input value="查 询" type="submit" id="searchbutton">
        </form>
    </div>
    <!--账单表格 样式和供应商公用-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">编号</th>
            <th width="20%">姓名</th>
            <th width="20%">民族</th>
            <th width="10%">基础信息</th>
            <th width="10%">基础信息</th>
            <th width="10%">基础信息</th>
            <th width="20%">操作</th>
        </tr>
        <c:forEach var="bill" items="${billList }" varStatus="status">
            <tr>
                <td>
                    <span>${bill.billCode }</span>
                </td>
                <td>
                    <span>${bill.productName }</span>
                </td>
                <td>
                    <span>${bill.providerName}</span>
                </td>
                <td>
                    <span>${bill.totalPrice}</span>
                </td>
                <td>
					<span>
						<c:if test="${bill.isPayment == 1}">未评估</c:if>
						<c:if test="${bill.isPayment == 2}">已评估</c:if>
					</span>
                </td>
                <td>
					<span>
					<fmt:formatDate value="${bill.creationDate}" pattern="yyyy-MM-dd"/>
					</span>
                </td>
                <c:if test="${userSession.userRole=='1' }">
                <td>
                    <span><a class="viewBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
                </c:if>
                <c:if test="${userSession.userRole=='2' }">
                    <td>
                    <span><a class="viewBill" href="javascript:;" billid=${bill.id } billcc=${bill.billCode }><img
                            src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                        <span><a  href="${pageContext.request.contextPath }/billpingadd.jsp"><img
                                src="${pageContext.request.contextPath }/images/xiugai.png" alt="评估" title="评估"/></a></span>
                         </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/billlist.js"></script>