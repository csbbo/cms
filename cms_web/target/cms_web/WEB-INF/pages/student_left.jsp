<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 5/9/19
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside id="sidebar_left" class="nano nano-light affix">
    <div class="sidebar-left-content nano-content">
        <header class="sidebar-header">
            <div class="sidebar-widget search-widget hidden">
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                    <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                </div>
            </div>
        </header>
        <ul class="nav sidebar-menu">
            <li>
                <a href="/student/self">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">个人信息</span>
                </a>
            </li>
            <li>
                <a href="/student/course_list">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">选课管理</span>
                    <span class="sidebar-title-tray">
              </span>
                </a>
            </li>
            <li>
                <a href="/student/mycourse">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">我的课表</span>
                </a>
            </li>
            <li>
                <a href="/student/score">
                    <span class="fa fa-calendar"></span>
                    <span class="sidebar-title">我的成绩</span>
                </a>
            </li>
        </ul>
        <div class="sidebar-toggle-mini">
            <a href="#">
                <span class="fa fa-sign-out"></span>
            </a>
        </div>
    </div>
</aside>
<section id="content_wrapper">