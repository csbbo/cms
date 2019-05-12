<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<jsp:include page="teacher_left.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 录入成绩 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form method="post" action="/teacher/typeinscore" id="admin-form">
                    <div class="section row">
                        <div class="col-md-6">
                            <br>
                            <input name="cnum" hidden value="${cnum}">
                            <input name="snum" hidden value="${snum}">
                            <input type="text" name="score" id="score" class="gui-input" placeholder="请录入成绩...">
                        </div>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="submit" class="button"> 确认录入 </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>