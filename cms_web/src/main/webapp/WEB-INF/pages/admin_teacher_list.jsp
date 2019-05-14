<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<jsp:include page="admin_left.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 老师列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel-body pn">
                <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                    <thead>
                    <tr class="">
                        <th>工号</th>
                        <th>姓名</th>
                        <th>专业</th>
                        <th>手机</th>
                        <th>管理</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="emp">
                        <tr class="message-unread">
                            <td>${emp.num}</td>
                            <td>${emp.name}</td>
                            <td>${emp.profession}</td>
                            <td>${emp.phone}</td>
                            <td>
                                <a href="/admin/teacherToMod?tnum=${emp.num}">修改</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <br>
                <a href="/admin/teacherToAdd">添加老师</a>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>