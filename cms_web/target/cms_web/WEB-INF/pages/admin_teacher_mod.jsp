<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="css" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<jsp:include page="admin_left.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 修改老师 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel-body pn">
                <form:form modelAttribute="teacher" method="post" action="/admin/teacherAdd" id="regist" name="registTeacher">
                    <div class="panel-body bg-light p25 pb15">
                        <div class="section">
                            <label for="num" class="field-label text-muted fs18 mb10">工号</label>
                            <label for="num" class="field prepend-icon">
                                <form:input css:name="num" path="num" class="gui-input" placeholder="请输入工号..."/>
                                <label for="num" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>

                        <div class="section">
                            <label for="name" class="field-label text-muted fs18 mb10">姓名</label>
                            <label for="name" class="field prepend-icon">
                                <form:input css:name="name" path="name" class="gui-input" placeholder="请输入姓名..."/>
                                <label for="name" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>

                        <div class="section">
                            <label for="phone" class="field-label text-muted fs18 mb10">手机</label>
                            <label for="phone" class="field prepend-icon">
                                <form:input css:name="phone" path="phone" class="gui-input" placeholder="请输入手机号..."/>
                                <label for="phone" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>

                        <div class="profession">
                            <label for="profession" class="field-label text-muted fs18 mb10">专业</label>
                            <label for="profession" class="field prepend-icon">
                                <form:input css:name="profession" path="profession" class="gui-input" placeholder="请输入专业..."/>
                                <label for="profession" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>

                        <div class="password">
                            <label for="password" class="field-label text-muted fs18 mb10">密码</label>
                            <label for="password" class="field prepend-icon">
                                <form:input type="password" css:name="password" path="password" class="gui-input" placeholder="请输入密码..."/>
                                <label for="password" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                    </div>
                    <div class="panel-footer clearfix">
                        <button type="submit" class="button btn-primary mr10 pull-right">添加</button>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>