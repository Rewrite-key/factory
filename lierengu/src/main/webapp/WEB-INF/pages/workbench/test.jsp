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

            $("#saveaddEmployeeBtn").click(function () {
                var empId = $.trim($("#add-empId").val());
                var empName = $.trim($("#add-empName").val());
                var gender = $.trim($("#add-gender").val());
                var identity = $.trim($("#add-identity").val);
                var degree = $.trim($("#add-degree").val);
                var working = $.trim($("#add-working").val);
                var department = $.trim($("#add-department").val);
                var job = $.trim($("#add-job").val);
                var onboarding = $.trim($("#add-onboarding").val);
                var dimission = $.trim($("#add-dimission").val);
                var phone = $.trim($("#add-phone").val);
                var email = $.trim($("#add-email").val);
                var photoId = $.trim($("#add-photoId").val);
                var groupId = $.trim($("#add-groupId").val);
                var address = $.trim($("#add-address").val);
                var school = $.trim($("#add-school").val);
                var profession = $.trim($("#add-profession").val);
                var birth = $.trim($("#add-birth").val);
                var age = $.trim($("#add-age").val);

                if(empId==""){
                    alert("??????id????????????");
                    return;
                }
                if(empName==""){
                    alert("????????????????????????");
                    return;
                }
                if(gender==""){
                    alert("????????????????????????");
                    return;
                }
                if(identity==""){
                    alert("????????????????????????");
                    return;
                }
                if((onboarding!="" && dimission!="") && onboarding>dimission){
                    alert("???????????????????????????????????????");
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

<!-- ????????????????????????????????? -->
<div class="modal fade" id="addEmployeeModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">??</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">??????????????????</h4>
            </div>
            <div class="modal-body">

                <form id="addEmployeeForm" class="form-horizontal" role="form">

                    <div class="form-group">
                        <label for="create-marketActivityOwner" class="col-sm-2 control-label">?????????<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <select class="form-control" id="create-marketActivityOwner">
                                <c:forEach items="${users}" var="user">
                                    <option value="${user.id}">
                                            ${user.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <label for="create-marketActivityName" class="col-sm-2 control-label">??????<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="create-marketActivityName">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="create-startDate" class="col-sm-2 control-label">????????????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control myDate" id="create-startDate">
                        </div>
                        <label for="create-endDate" class="col-sm-2 control-label">????????????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control myDate" id="create-endDate">
                        </div>
                    </div>
                    <div class="form-group">

                        <label for="create-cost" class="col-sm-2 control-label">??????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="create-cost">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">??????</label>
                        <div class="col-sm-10" style="width: 81%;">
                            <textarea class="form-control" rows="3" id="description"></textarea>
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                <button type="button" class="btn btn-primary" id="saveaddEmployeeBtn">??????</button>
            </div>
        </div>
    </div>
</div>

<!-- ????????????????????????????????? -->
<div class="modal fade" id="editActivityModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">??</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">??????????????????</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form">

                    <div class="form-group">
                        <label for="edit-marketActivityOwner" class="col-sm-2 control-label">?????????<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <select class="form-control" id="edit-marketActivityOwner">
                                <c:forEach items="${users}" var="user">
                                    <option value="${user.id}">
                                            ${user.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <label for="edit-marketActivityName" class="col-sm-2 control-label">??????<span style="font-size: 15px; color: red;">*</span></label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="edit-marketActivityName" value="?????????">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-startTime" class="col-sm-2 control-label">????????????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control myDate" id="edit-startTime" readonly>
                        </div>
                        <label for="edit-endTime" class="col-sm-2 control-label">????????????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control myDate" id="edit-endTime" readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-cost" class="col-sm-2 control-label">??????</label>
                        <div class="col-sm-10" style="width: 300px;">
                            <input type="text" class="form-control" id="edit-cost" value="5,000">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit-describe" class="col-sm-2 control-label">??????</label>
                        <div class="col-sm-10" style="width: 81%;">
                            <textarea class="form-control" rows="3" id="edit-describe">????????????Marketing??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</textarea>
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">??????</button>
            </div>
        </div>
    </div>
</div>

<!-- ????????????????????????????????? -->
<div class="modal fade" id="importActivityModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">??</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">??????????????????</h4>
            </div>
            <div class="modal-body" style="height: 350px;">
                <div style="position: relative;top: 20px; left: 50px;">
                    ??????????????????????????????<small style="color: gray;">[?????????.xls]</small>
                </div>
                <div style="position: relative;top: 40px; left: 50px;">
                    <input type="file" id="activityFile">
                </div>
                <div style="position: relative; width: 400px; height: 320px; left: 45% ; top: -40px;" >
                    <h3>????????????</h3>
                    <ul>
                        <li>???????????????Excel????????????????????????XLS????????????</li>
                        <li>?????????????????????????????????????????????</li>
                        <li>????????????????????????????????????5MB???</li>
                        <li>?????????????????????????????????????????????yyyy-MM-dd?????????</li>
                        <li>????????????????????????????????????????????????yyyy-MM-dd HH:mm:ss????????????</li>
                        <li>?????????????????????????????????UTF-8 (?????????)????????????????????????????????????????????????????????????????????????</li>
                        <li>??????????????????????????????????????????????????????????????????????????????</li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                <button id="importActivityBtn" type="button" class="btn btn-primary">??????</button>
            </div>
        </div>
    </div>
</div>


<div>
    <div style="position: relative; left: 10px; top: -10px;">
        <div class="page-header">
            <h3>??????????????????</h3>
        </div>
    </div>
</div>
<div style="position: relative; top: -20px; left: 0px; width: 100%; height: 100%;">
    <div style="width: 100%; position: absolute;top: 5px; left: 10px;">

        <div class="btn-toolbar" role="toolbar" style="height: 80px;">
            <form class="form-inline" role="form" style="position: relative;top: 8%; left: 5px;">

                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">??????</div>
                        <input class="form-control" type="text">
                    </div>
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">?????????</div>
                        <input class="form-control" type="text">
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">????????????</div>
                        <input class="form-control" type="text" id="startTime" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">????????????</div>
                        <input class="form-control" type="text" id="endTime">
                    </div>
                </div>

                <button type="submit" class="btn btn-default">??????</button>

            </form>
        </div>
        <div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;top: 5px;">
            <div class="btn-group" style="position: relative; top: 18%;">
                <button type="button" class="btn btn-primary" id="addEmployeeBtn"><span class="glyphicon glyphicon-plus"></span> ??????</button>
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#editActivityModal"><span class="glyphicon glyphicon-pencil"></span> ??????</button>
                <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-minus"></span> ??????</button>
            </div>
            <div class="btn-group" style="position: relative; top: 18%;">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#importActivityModal" ><span class="glyphicon glyphicon-import"></span> ??????????????????????????????</button>
                <button id="exportActivityAllBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-export"></span> ????????????????????????????????????</button>
                <button id="exportActivityXzBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-export"></span> ????????????????????????????????????</button>
            </div>
        </div>
        <div style="position: relative;top: 10px;">
            <table class="table table-hover">
                <thead>
                <tr style="color: #B3B3B3;">
                    <td><input type="checkbox" /></td>
                    <td>??????</td>
                    <td>?????????</td>
                    <td>????????????</td>
                    <td>????????????</td>
                </tr>
                </thead>
                <tbody>
                <tr class="active">
                    <td><input type="checkbox" /></td>
                    <td><a style="text-decoration: none; cursor: pointer;" onclick="window.location.href='detail.html';">?????????</a></td>
                    <td>zhangsan</td>
                    <td>2020-10-10</td>
                    <td>2020-10-20</td>
                </tr>
                <tr class="active">
                    <td><input type="checkbox" /></td>
                    <td><a style="text-decoration: none; cursor: pointer;" onclick="window.location.href='detail.html';">?????????</a></td>
                    <td>zhangsan</td>
                    <td>2020-10-10</td>
                    <td>2020-10-20</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div style="height: 50px; position: relative;top: 30px;">
            <div>
                <button type="button" class="btn btn-default" style="cursor: default;">???<b>50</b>?????????</button>
            </div>
            <div class="btn-group" style="position: relative;top: -34px; left: 110px;">
                <button type="button" class="btn btn-default" style="cursor: default;">??????</button>
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
                <button type="button" class="btn btn-default" style="cursor: default;">???/???</button>
            </div>
            <div style="position: relative;top: -88px; left: 285px;">
                <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="#">??????</a></li>
                        <li class="disabled"><a href="#">?????????</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">?????????</a></li>
                        <li class="disabled"><a href="#">??????</a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>

</div>
</body>
</html>