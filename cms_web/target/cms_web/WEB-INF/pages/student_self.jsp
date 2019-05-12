<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<jsp:include page="student_left.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 个人信息 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <h3><b>姓名:</b>${student.name}</h3>
                <h3><b>学号:</b>${student.num}</h3>
                <h3><b>年龄:</b>${student.age}</h3>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>