<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String basePath = request.getScheme() + "://" + request.getServerName() +
            ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">

    <link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="jquery/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
    <script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="jquery/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="jquery/bootstrap-datetimepicker-master/locale/bootstrap-datetimepicker.zh-CN.js"></script>

    <script type="text/javascript">

        $(function(){
            $(window).keydown(function (e) {
                if (e.keyCode == 13) {
                    $("#saveEmployeeBtn").click();
                }
            });

            $("#addEmployeeBtn").click(function () {
                $("#addEmployeeForm").get(0).reset();
                $("#addEmployeeModal").modal("show");
            });

            $("#saveAddEmployeeBtn").click(function () {
                var empId = $.trim($("#add-empId").val());
                var empName = $.trim($("#add-empName").val());
                var gender = $.trim($("#add-gender").val());
                var identity = $.trim($("#add-identity").val());
                var degree = $.trim($("#add-degree").val());
                var working = $.trim($("#add-working").val());
                var department = $.trim($("#add-department").val());
                var job = $.trim($("#add-job").val());
                var onboarding = $.trim($("#add-onboarding").val());
                var dimission = $.trim($("#add-dimission").val());
                var phone = $.trim($("#add-phone").val());
                var email = $.trim($("#add-email").val());
                var photoId = $.trim($("#add-photoId").val());
                var groupId = $.trim($("#add-groupId").val());
                var address = $.trim($("#add-address").val());
                var school = $.trim($("#add-school").val());
                var profession = $.trim($("#add-profession").val());
                var birth = $.trim($("#add-birth").val());
                var age = $.trim($("#add-age").val());

                if(empId==""){
                    alert("员工id不能为空");
                    return;
                }
                if(empName==""){
                    alert("员工姓名不能为空");
                    return;
                }
                if(gender==""){
                    alert("员工性别不能为空");
                    return;
                }
                if(identity==""){
                    alert("身份证号不能为空");
                    return;
                }
                if(identity.len)
                if((onboarding!="" && dimission!="") && onboarding>dimission){
                    alert("入职日期不能在离职日期之后");
                    return;
                }

                $.ajax({
                    url:"workbench/saveEmployee.do",
                    data:{
                        "id":null,
                        "empId":empId,
                        "empName":empName,
                        "gender":gender,
                        "identity":identity,
                        "degree":degree,
                        "working":working,
                        "department":department,
                        "job":job,
                        "onboarding":onboarding,
                        "dimission":dimission,
                        "phone":phone,
                        "email":email,
                        "photoId":photoId,
                        "groupId":groupId,
                        "address":address,
                        "school":school,
                        "profession":profession,
                        "birth":birth,
                        "age":age
                    },
                    type:"post",
                    dataType:"json",
                    success:function (data) {
                        if (data.code == "1"){
                            $("#addEmployeeModal").modal("hide");
                        }else {
                            alert(data.message);
                            $("#addEmployeeModal").modal("show")
                        }
                    }
                });
            });

            $(".theDate").datetimepicker({
                language:"zh-CN",
                format:"yyyy-mm-dd",
                minView:"month",
                initialDate:new Date(),
                autoclose:true,
                todayBtn:true,
                clearBtn:true
            })

        });

    </script>
</head>
<body>

<!-- 创建市场活动的模态窗口 -->
<div class="modal fade" id="addEmployeeModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">添加员工信息</h4>
            </div>
            <div class="modal-body">

                <form id="addEmployeeForm" class="form-horizontal" role="form">

                    <div class="form-group">
                        <label for="add-empId" class="col-sm-2 control-label">员工id<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-empId">
                        </div>
                        <label for="add-empName" class="col-sm-2 control-label">员工姓名<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-empName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-gender" class="col-sm-2 control-label">员工性别<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-gender">
                        </div>
                        <label for="add-identity" class="col-sm-2 control-label">身份证号<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-identity">
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="add-degree" class="col-sm-2 control-label">学历</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-degree">
                        </div>
                        <label for="add-working" class="col-sm-2 control-label">是否在职</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-working">
                        </div>
                    </div>

                    <div class="form-group">

                        <label for="add-department" class="col-sm-2 control-label">部门或组</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-department">
                        </div>
                        <label for="add-job" class="col-sm-2 control-label">职务/工种</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-job">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="add-onboarding" class="col-sm-2 control-label">入职日期</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control theDate" id="add-onboarding">
                        </div>
                        <label for="add-dimission" class="col-sm-2 control-label">离职日期</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control theDate" id="add-dimission">
                        </div>
                    </div>

                    <div class="form-group">

                        <label for="add-phone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-phone">
                        </div>
                        <label for="add-email" class="col-sm-2 control-label">邮箱地址</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-email">
                        </div>
                    </div>
                    <div class="form-group">

                        <label for="add-photoId" class="col-sm-2 control-label">照片id</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-photoId">
                        </div>
                        <label for="add-groupId" class="col-sm-2 control-label">群组id</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-groupId">
                        </div>
                    </div>
                    <div class="form-group">

                        <label for="add-address" class="col-sm-2 control-label">联系地址</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-address">
                        </div>
                        <label for="add-school" class="col-sm-2 control-label">毕业院校</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-school">
                        </div>
                    </div>
                    <div class="form-group">

                        <label for="add-profession" class="col-sm-2 control-label">专业</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-profession">
                        </div>
                        <label for="add-birth" class="col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-birth">
                        </div>
                    </div>
                    <div class="form-group">

                        <label for="add-age" class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="add-age">
                        </div>

                    </div>


                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="saveAddEmployeeBtn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 修改市场活动的模态窗口 -->
<div class="modal fade" id="editActivityModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">修改员工信息</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form">

                    <div class="form-group">
                        <label for="edit-marketActivityOwner" class="col-sm-2 control-label">所有者<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <select class="form-control" id="edit-marketActivityOwner">
                                <c:forEach items="${users}" var="user">
                                    <option value="${user.id}">
                                            ${user.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <label for="edit-marketActivityName" class="col-sm-2 control-label">名称<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="edit-marketActivityName" value="发传单">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-startTime" class="col-sm-2 control-label">开始日期</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control theDate" id="edit-startTime" readonly>
                        </div>
                        <label for="edit-endTime" class="col-sm-2 control-label">结束日期</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control theDate" id="edit-endTime" readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-cost" class="col-sm-2 control-label">成本</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="edit-cost" value="5,000">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-describe" class="col-sm-2 control-label">描述</label>
                        <div class="col-sm-10" style="width: 81%;">
                            <textarea class="form-control" rows="3" id="edit-describe">市场活动Marketing，是指品牌主办或参与的展览会议与公关市场活动，包括自行主办的各类研讨会、客户交流会、演示会、新产品发布会、体验会、答谢会、年会和出席参加并布展或演讲的展览会、研讨会、行业交流会、颁奖典礼等</textarea>
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">更新</button>
            </div>
        </div>
    </div>
</div>

<!-- 导入市场活动的模态窗口 -->
<div class="modal fade" id="importActivityModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">导入市场活动</h4>
            </div>
            <div class="modal-body" style="height: 350px;">
                <div style="position: relative;top: 20px; left: 50px;">
                    请选择要上传的文件：<small style="color: gray;">[仅支持.xls]</small>
                </div>
                <div style="position: relative;top: 40px; left: 50px;">
                    <input type="file" id="activityFile">
                </div>
                <div style="position: relative; width: 400px; height: 320px; left: 45% ; top: -40px;" >
                    <h3>重要提示</h3>
                    <ul>
                        <li>操作仅针对Excel，仅支持后缀名为XLS的文件。</li>
                        <li>给定文件的第一行将视为字段名。</li>
                        <li>请确认您的文件大小不超过5MB。</li>
                        <li>日期值以文本形式保存，必须符合yyyy-MM-dd格式。</li>
                        <li>日期时间以文本形式保存，必须符合yyyy-MM-dd HH:mm:ss的格式。</li>
                        <li>默认情况下，字符编码是UTF-8 (统一码)，请确保您导入的文件使用的是正确的字符编码方式。</li>
                        <li>建议您在导入真实数据之前用测试文件测试文件导入功能。</li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button id="importActivityBtn" type="button" class="btn btn-primary">导入</button>
            </div>
        </div>
    </div>
</div>


<div>
    <div style="position: relative; left: 10px; top: -10px;">
        <div class="page-header">
            <h3>市场活动列表</h3>
        </div>
    </div>
</div>
<div style="position: relative; top: -20px; left: 0px; width: 100%; height: 100%;">
    <div style="width: 100%; position: absolute;top: 5px; left: 10px;">

        <div class="btn-toolbar" role="toolbar" style="height: 80px;">
            <form class="form-inline" role="form" style="position: relative;top: 8%; left: 5px;">

                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">名称</div>
                        <input class="form-control" type="text">
                    </div>
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">所有者</div>
                        <input class="form-control" type="text">
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">开始日期</div>
                        <input class="form-control" type="text" id="startTime" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">结束日期</div>
                        <input class="form-control" type="text" id="endTime">
                    </div>
                </div>

                <button type="submit" class="btn btn-default">查询</button>

            </form>
        </div>
        <div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;top: 5px;">
            <div class="btn-group" style="position: relative; top: 18%;">
                <button type="button" class="btn btn-primary" id="addEmployeeBtn"><span class="glyphicon glyphicon-plus"></span> 创建</button>
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#editActivityModal"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-minus"></span> 删除</button>
            </div>
            <div class="btn-group" style="position: relative; top: 18%;">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#importActivityModal" ><span class="glyphicon glyphicon-import"></span> 上传列表数据（导入）</button>
                <button id="exportActivityAllBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-export"></span> 下载列表数据（批量导出）</button>
                <button id="exportActivityXzBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-export"></span> 下载列表数据（选择导出）</button>
            </div>
        </div>
        <div style="position: relative;top: 10px;">
            <table class="table table-hover" border="1" cellspacing="0" cellpadding="4" width="400">
                <thead>
                <tr style="color: #B3B3B3;">
                    <th><input type="checkbox"/></th>
                    <th>员工id</th>
                    <th>员工姓名</th>
                    <th>员工性别</th>
                    <th>身份证号</th>
                    <th>学历</th>
                    <th>是否在职</th>
                    <th>部门或组</th>
                    <th>职务/工种</th>
                    <th>入职日期</th>
                    <th>离职日期</th>
                    <th>联系电话</th>
                    <th>邮箱地址</th>
                    <th>照片id</th>
                    <th>群组id</th>
                    <th>联系地址</th>
                    <th>毕业院校</th>
                    <th>专业</th>
                    <th>出生日期</th>
                    <th>年龄</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <div style="height: 50px; position: relative;top: 30px;">
            <div>
                <button type="button" class="btn btn-default" style="cursor: default;">共<b>50</b>条记录</button>
            </div>
            <div class="btn-group" style="position: relative;top: -34px; left: 110px;">
                <button type="button" class="btn btn-default" style="cursor: default;">显示</button>
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        10
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">20</a></li>
                        <li><a href="#">30</a></li>
                    </ul>
                </div>
                <button type="button" class="btn btn-default" style="cursor: default;">条/页</button>
            </div>
            <div style="position: relative;top: -88px; left: 285px;">
                <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="#">首页</a></li>
                        <li class="disabled"><a href="#">上一页</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">下一页</a></li>
                        <li class="disabled"><a href="#">末页</a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>

</div>
</body>
</html>