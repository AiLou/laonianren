<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>老年人信息录入界面</span>
    </div>
    <div class="providerAdd">
        <form id="billForm" name="billForm" method="post" action="${pageContext.request.contextPath }/jsp/addbill">
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
                <label>性别：</label>
                <input type="radio" name="isPayment" value="1" checked="checked">男
                <input type="radio" name="isPayment" value="2">女
                <font color="red"></font>
            </div>
            <div>
                <label>出生日期：</label>
                <input type="date" name="csrq" value="1970-01-01"/>
                <font color="red"></font>
            </div>
            <div>
                <label for="productName">身份证号：</label>
                <input type="text" name="productName" id="435" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="productName">社保卡号：</label>
                <input type="text" name="productName" id="453" value="">
                <font color="red"></font>
            </div>
            <div>
                <label>民族：</label>
                <input type="radio" name="mz" value="1" checked="checked">汉族
                <input type="radio" name="mz" value="">少数民族
                <select type="radio" name="mz">
                    <option value="蒙古族">蒙古族</option>
                    <option value="彝族">彝族</option>
                    <option value="侗族">侗族</option>
                    <option value="哈萨克族">哈萨克族</option>
                    <option value="畲族">畲族</option>
                    <option value="纳西族">纳西族</option>
                    <option value="仫佬族">仫佬族</option>
                    <option value="仡佬族">仡佬族</option>
                    <option value="怒族">怒族</option>
                    <option value="保安族">保安族</option>
                    <option value="鄂伦春族">鄂伦春族</option>
                    <option value="回族">回族</option>
                    <option value="壮族">壮族</option>
                    <option value="瑶族">瑶族</option>
                    <option value="傣族">傣族</option>
                    <option value="高山族">高山族</option>
                    <option value="景颇族">景颇族</option>
                    <option value="羌族">羌族</option>
                    <option value="锡伯族">锡伯族</option>
                    <option value="乌孜别克族">乌孜别克族</option>
                    <option value="裕固族">裕固族</option>
                    <option value="赫哲族">赫哲族</option>
                    <option value="藏族">藏族</option>
                    <option value="布依族">布依族</option>
                    <option value="白族">白族</option>
                    <option value="黎族">黎族</option>
                    <option value="拉祜族">拉祜族</option>
                    <option value="柯尔克孜族">柯尔克孜族</option>
                    <option value="布朗族">布朗族</option>
                    <option value="阿昌族">阿昌族</option>
                    <option value="俄罗斯族">俄罗斯族</option>
                    <option value="京族">京族</option>
                    <option value="门巴族">门巴族</option>
                    <option value="维吾尔族">维吾尔族</option>
                    <option value="朝鲜族">朝鲜族</option>
                    <option value="土家族">土家族</option>
                    <option value="傈僳族">傈僳族</option>
                    <option value="水族">水族</option>
                    <option value="土族">土族</option>
                    <option value="撒拉族">撒拉族</option>
                    <option value="普米族">普米族</option>
                    <option value="鄂温克族">鄂温克族</option>
                    <option value="塔塔尔族">塔塔尔族</option>
                    <option value="珞巴族">珞巴族</option>
                    <option value="苗族">苗族</option>
                    <option value="满族">满族</option>
                    <option value="哈尼族">哈尼族</option>
                    <option value="佤族">佤族</option>
                    <option value="东乡族">东乡族</option>
                    <option value="达斡尔族">达斡尔族</option>
                    <option value="毛南族">毛南族</option>
                    <option value="塔吉克族">塔吉克族</option>
                    <option value="德昂族">德昂族</option>
                    <option value="独龙族">独龙族</option>
                    <option value="基诺族">基诺族</option>
                </select>
                <font color="red"></font>
            </div>
            <div>
                <label>文化程度：</label>
                <select name="mz">
                    <option value="文盲">文盲</option>
                    <option value="小学">小学</option>
                    <option value="初中">初中</option>
                    <option value="高中/技校/中专">高中/技校/中专</option>
                    <option value="大学专科及以上">大学专科及以上</option>
                    <option value="不祥">不祥</option>
                </select>
            </div>
            <div>
                <label>宗教信仰：</label>
                <input type="radio" name="mz" value="1" checked="checked">无
                <input type="radio" name="mz" value="">有
                <input type="text" name="mz" value="">
                <font color="red"></font>
            </div>
            <div>
                <label>婚姻状况：</label>
                <select name="mz">
                    <option value="未婚">未婚</option>
                    <option value="已婚">已婚</option>
                    <option value="丧偶">丧偶</option>
                    <option value="离婚">离婚</option>
                    <option value="未说明的婚姻状况">未说明的婚姻状况</option>
                </select>
            </div>
            <div>
                <label>居住情况：</label>
                <select name="mz">
                    <option value="独居">独居</option>
                    <option value="与配偶/伴侣居住">与配偶/伴侣居住</option>
                    <option value="与子女居住">与子女居住</option>
                    <option value="与父母居住">与父母居住</option>
                    <option value="与兄弟姐妹居住">与兄弟姐妹居住</option>
                    <option value="与其他亲属居住">与其他亲属居住</option>
                    <option value="与非亲属关系的人居住">与非亲属关系的人居住</option>
                    <option value="养老机构">养老机构</option>
                </select>
            </div>
            <div>
                <label>医疗费用支付方式：</label>
                <select name="mz">
                    <option value="城镇职工基本医疗保险">城镇职工基本医疗保险</option>
                    <option value="城镇居民基本医疗保险">城镇居民基本医疗保险</option>
                    <option value="新型农村合作医疗">新型农村合作医疗</option>
                    <option value="贫困救助">贫困救助</option>
                    <option value="商业医疗保险">商业医疗保险</option>
                    <option value="全公费">全公费</option>
                    <option value="全自费">全自费</option>
                    <option value="其他">其他</option>
                </select>
            </div>
            <div>
                <label>经济来源：</label>
                <select name="mz">
                    <option value="退休金/养老金">退休金/养老金</option>
                    <option value="子女补贴">子女补贴</option>
                    <option value="亲友资助">亲友资助</option>
                    <option value="其他补贴">其他补贴</option>
                </select>
            </div>
            <div>
                <label>痴呆：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="轻度">轻度</option>
                    <option value="中度">中度</option>
                    <option value="重度">重度</option>
                </select>
            </div>
            <div>
                <label>精神疾病：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="精神分裂症">精神分裂症</option>
                    <option value="双向情感障碍">双向情感障碍</option>
                    <option value="偏执型精神障碍">偏执型精神障碍</option>
                    <option value="分裂情感性障碍">分裂情感性障碍</option>
                    <option value="癫痫所致精神障碍">癫痫所致精神障碍</option>
                    <option value="精神发育迟滞伴发精神障碍">精神发育迟滞伴发精神障碍</option>
                </select>
            </div>
            <div>
                <label for="productName">慢性疾病：</label>
                <input type="text" name="productName" id="123123" value="">
                <font color="red"></font>
            </div>
            <div>
                <label>跌倒：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="发生过1次">发生过1次</option>
                    <option value="发生过2次">发生过2次</option>
                    <option value="发生过3次及以上">发生过3次及以上</option>
                </select>
            </div>
            <div>
                <label>走失：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="发生过1次">发生过1次</option>
                    <option value="发生过2次">发生过2次</option>
                    <option value="发生过3次及以上">发生过3次及以上</option>
                </select>
            </div>
            <div>
                <label>噎食：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="发生过1次">发生过1次</option>
                    <option value="发生过2次">发生过2次</option>
                    <option value="发生过3次及以上">发生过3次及以上</option>
                </select>
            </div>
            <div>
                <label>自杀：</label>
                <select name="mz">
                    <option value="无">无</option>
                    <option value="发生过1次">发生过1次</option>
                    <option value="发生过2次">发生过2次</option>
                    <option value="发生过3次及以上">发生过3次及以上</option>
                </select>
            </div>
            <div>
                <label for="productName">其他：</label>
                <input type="text" name="productName" id="123123" value="">
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
            您也可以选择文件进行批量导入
            <a href="${pageContext.request.contextPath }/jsp/toaddprovider">批量添加</a>
            <input type="file"/>
            <script>
                const fileElement = document.querySelector('#file');
                fileElement.addEventListener('change', (e) => {
                    const file = e.target.files[0];// 文件信息
                    if (file) {
                        const reader = new FileReader();
                        reader.readAsText(file);// 将文件读取为文本
                        reader.onload = () => { // 文件读取完成后的回调
                            console.log(reader.result, '////'); // 读取到的文件内容
                        }
                        reader.onerror = (e) => {
                            console.log(e, '????XXX')
                        }
                    }
                })
            </script>
        </form>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/billadd.js"></script>