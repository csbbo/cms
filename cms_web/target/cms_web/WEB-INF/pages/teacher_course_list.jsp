<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<jsp:include page="teacher_left.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 我的课程 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel-body pn">
                <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                    <thead>
                    <tr class="">
                        <th>课程号</th>
                        <th>上课教室</th>
                        <th>课程名</th>
                        <th>上课时间</th>
                        <th>限选人数</th>
                        <th>已选人数</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="emp">
                        <tr class="message-unread">
                            <td>${emp.num}</td>
                            <td>${emp.roomNum}</td>
                            <td>${emp.name}</td>
                            <td>${emp.ctime}</td>
                            <td>${emp.maxCount}</td>
                            <td>${emp.studentCount}</td>
                            <td>
                                <a href="/teacher/manager?cnum=${emp.num}">管理</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>