<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>

<div class="right">
  <div class="location">
    <strong>你现在所在的位置是:</strong>
    <span>科技政策查询页面</span>
  </div>

  <div class="search">
    <form method="get" action="${pageContext.request.contextPath }/jsp/xinwenManagement">
      <span>政策名称：</span>
      <input name="queryName" type="text" value="${queryName }">

      <span>发文字号：</span>
      <input name="queryDocument" type="text" value="${queryDocument }">

      <span>发文机构：</span>
      <input name="queryOrgan" type="text" value="${queryOrgan }">

      <span>全文检索：</span>
      <input name="queryText" type="text" value="${queryText }">

      <input value="查 询" type="submit" id="searchbutton">
    </form>
  </div>
  <!--供应商操作表格-->
  <table class="providerTable" cellpadding="0" cellspacing="0">
    <tr class="firstTr">
      <th width="30%">政策名称</th>
      <th width="10%">发文机构</th>
      <th width="10%">颁布日期</th>
      <th width="10%">政策分类</th>
      <th width="10%">操作</th>
    </tr>
    <c:forEach var="xinwen" items="${xinwenList }" varStatus="status">
      <tr>
        <td>
          <span>${xinwen.name }</span>
        </td>
        <td>
          <span>${xinwen.organ }</span>
        </td>
        <td>
          <span>${xinwen.pubdata}</span>
        </td>
        <td>
          <span>${xinwen.type}</span>
        </td>

        <td>
                    <span><a class="viewXinwen" href="javascript:;"
                             id=${xinwen.id } xname=${xinwen.name }><input value="查看"type="submit" id="searchbutton"/></a></span>

        </td>
      </tr>
    </c:forEach>
  </table>

</div>



<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/xinwenlist.js"></script>
