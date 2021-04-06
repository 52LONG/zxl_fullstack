
<%@ page import="model.Departmenter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.6/umd/popper.js"></script>
    <script  src="../js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/departmenter_index.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_jar6665yko.css"><!-- 用户icon -->
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_rech5iphrxs.css"><!-- 消息icon -->
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2287521_qdlhir45au.css"> <!--人员管理icon-->
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2287521_72riyx0dznu.css"> <!-- 部门管理icon -->
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2287521_9x87kyjdvuc.css"><!-- 管理员状态icon -->
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_mrnnhh9mjp.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2287616_lrygqzstqjd.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_1y7mjcdjpng.css">
</head>
<body>
<div class="zhSystem ">
    <div class="zh-head">
        <div class="zh-head__logininfo">
            <a href="#"><i class="iconfont icon-email"></i>[0]</a>&nbsp;&nbsp;
            <!-- 读取用户名 -->
            <%
                Departmenter department1 = (Departmenter)session.getAttribute("departmenter");
            %>
            <a href="#"><i class="iconfont icon-user"><%if(department1!=null){out.print(department1.getName());}else{response.sendRedirect("../departmenter_login.jsp");}%></i></a>&nbsp;
            <img src="../images/main.png">
        </div>
    </div>
    <div class="row">
        <div class="col-1">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a href="#manage" class="nav-link active" data-toggle="pill"><i
                            class="iconfont icon-person"></i><br>人员管理</a>
                </li>
                <li class="nav-item">
                    <a href="#apply" class="nav-link " data-toggle="pill"><i
                            class="iconfont icon-shouyetubiao-05"></i><br>租房审批</a>
                </li>
                <li class="nav-item">
                    <a href="#archives" class="nav-link" data-toggle="pill"><i class="iconfont icon-qitafuwu"></i><br>
                        档案管理
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#department" class="nav-link" data-toggle="pill"><i class="iconfont icon-bumenguanli"></i><br>部门管理</a>
                </li>
            </ul>
        </div>
        <div class="col-11">
            <div class="tab-content">
                <div class="tab-pane  active" id="manage">
                    <div class="row"> <!-- 用户管理增删改查 -->
                        <div class="col-md-11 zh-message">
                            <i class="iconfont icon-navicon-gggl"></i>
                            <h6>用户管理</h6>
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a href="#add1" class="nav-link" data-toggle="pill">添加用户</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#delete1" class="nav-link" data-toggle="pill">删除用户</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#change1" class="nav-link" data-toggle="pill">修改用户</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#search1" class="nav-link" data-toggle="pill">查找用户</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="add1">
                                    <form action="addemployee" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_add1">ID</label>
                                                <input type="text" required name="id" class="form-control" id="id_add1" placeholder="请输入用户ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="num_add1">用户名</label>
                                                <input type="text" required name="name" class="form-control" id="num_add1" placeholder="请输入用户名">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="part_add1">部门</label>
                                                <input type="text" required name="emdepartment" class="form-control" id="part_add1" placeholder="请输入用户部门">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="time_add1">入职时长</label>
                                                <input type="text" required name="worktime" class="form-control" id="time_add1" placeholder="请输入用户入职时长">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="type_add1">用户类型</label>
                                                <select id="type_add1" class="form-control" name="client">
                                                    <option value="KH003">员工</option>
                                                    <option value="KH004">业主</option>
                                                    <option value="KH002">商户</option>
                                                    <option value="KH001">公司</option>
                                                </select>
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="delete1">
                                    <form action="deleteemployee" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="id_delete1">ID</label>
                                                <input type="text" required name="employee" class="form-control" id="id_delete1"
                                                       placeholder="请输入需要删除的用户ID">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="change1">
                                    <form action="updateemployee" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_change1">ID</label>
                                                <input type="text" class="form-control" id="id_change1" required
                                                     name="id"  placeholder="请输入需要修改的用户ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="psw_change1">密码</label>
                                                <input type="text" required name="psd" class="form-control" id="psw_change1" placeholder="请输入新密码">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="num_change1">员工号</label>
                                                <input type="text" required name="emid" class="form-control" id="num_change1" placeholder="请输入新员工号">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="part_change1">员工部门</label>
                                                <input type="text" required name="emdepartment" class="form-control" id="part_change1" placeholder="请输入新部门">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="time_change1">入职时长</label>
                                                <input type="text" required class="form-control" name="worktime" id="time_change1" placeholder="请输入入职时长">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="search1">
                                    <form action="#" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="id_search1">ID</label>
                                                <input type="text" class="form-control" id="id_search1">
                                            </div>
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>姓名</th>
                                                    <th>性别</th>
                                                    <th>员工部门</th>
                                                    <th>员工号</th>
                                                    <th>入职时长</th>
                                                    <th>身份证号</th>
                                                </tr>
                                                </thead>
                                                <tbody id="employeetable">
                                                </tbody>
                                            </table>
                                        </div>
                                        <button class="btn btn-info" type="button" onclick="getemployee()">提交</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row"> <!-- 档案管理员增删改查 -->
                        <div class="col-md-11  zh-message ">
                            <i class="iconfont icon-jiankangbaike"></i>
                            <h6>档案管理员</h6>
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a href="#add3" class="nav-link" data-toggle="pill">添加管理员</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#delete3" class="nav-link" data-toggle="pill">删除管理员</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#change3" class="nav-link" data-toggle="pill">修改管理员</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#search3" class="nav-link" data-toggle="pill">查找管理员</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="add3">
                                    <form action="addarchvist" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_add3">ID</label>
                                                <input type="text" required name="id" class="form-control" id="id_add3" placeholder="请输入管理员ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="name_add3">姓名</label>
                                                <input type="text" required name="name" class="form-control" id="name_add3" placeholder="请输入管理员姓名">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="part_add1">部门</label>
                                                <input type="text" required name="emdepartment" class="form-control" id="part_add1" placeholder="请输入所属部门">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="delete3">
                                    <form action="deletearchvist" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="id_delete3">ID</label>
                                                <input type="text" class="form-control" id="id_delete3" required name="id"
                                                       placeholder="请输入需要删除的管理员ID">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="change3">
                                    <form action="updatearchvist" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_change3">ID</label>
                                                <input type="text" class="form-control" id="id_change3" required name="id"
                                                       placeholder="请输入需要修改的管理员ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="name_change3">姓名</label>
                                                <input type="text" name="name" required class="form-control" id="name_change3" placeholder="请输入新名字">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="psw_change3">密码</label>
                                                <input type="text" name="psd" required class="form-control" id="psw_change3" placeholder="请输入新密码">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="num_change3">员工号</label>
                                                <input type="text" name="emid" required class="form-control" id="num_change3" placeholder="请输入新员工号">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="part_change1">员工部门</label>
                                                <input type="text"name="emde" required class="form-control" id="part_change1" placeholder="请输入新部门">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="search3">
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="id_search3">ID</label>
                                                <input type="text" class="form-control" id="id_search3">
                                            </div>
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>姓名</th>
                                                    <th>员工号</th>
                                                    <th>员工部门</th>
                                                </tr>
                                                </thead>
                                                <tbody id="archvisttable">
                                                </tbody>
                                            </table>
                                        </div>
                                        <button class="btn btn-info" type="button" onclick="getarchvist()">提交</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane " id="apply">
                    <div class="row"> <!-- 租房审批内容 -->
                        <div class="col-md-10">
                            <div class="tab-pane tab1" id="community"><a href="#"></a>
                                <form action="" id="form1">
                                    <table class="table table-bordered">
                                        <caption>员工周转宿舍租赁电子审批表</caption>
                                        <tbody>
                                        <tr>
                                            <td class="rentform">申请编号：</td>
                                            <td colspan="3"><input type="text" id="docode" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">申请日期：</td>
                                            <td><input type="text" id="dodate" readonly></td>
                                            <td class="rentform">租用人：</td>
                                            <td><input type="text" id="doemname" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">铺位编号：</td>
                                            <td><input type="text" id="dobunkcode" readonly></td>
                                            <td class="rentform">员工号：</td>
                                            <td><input type="text" id="doemid" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">小区名称：</td>
                                            <td colspan="3"><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">楼栋名称：</td>
                                            <td colspan="3"><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">房间名称：</td>
                                            <td colspan="3"><input type="text"  readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">铺位名称：</td>
                                            <td colspan="3"><input type="text" id="dobunkname" readonly></td>
                                        </tr>

                                        <tr>
                                            <td class="rentform">所在部门：</td>
                                            <td><input type="text" id="doemdepartmrnt" readonly></td>
                                            <td class="rentform">性别：</td>
                                            <td><input type="text" id="gender" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">手机：</td>
                                            <td><input type="text" id="phone" readonly></td>
                                            <td class="rentform">工作电话：</td>
                                            <td><input type="text" id="worrkphone" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">学历：</td>
                                            <td><input type="text" id="education" readonly></td>
                                            <td class="rentform">婚姻状况：</td>
                                            <td><input type="text" id="marrgae" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">原住房情况：</td>
                                            <td><input type="text" id="oldhome" readonly></td>
                                            <td class="rentform">是否换新宿舍：</td>
                                            <td><input type="text" id="changeroom" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">入行时间：</td>
                                            <td><input type="text" name="" value="" readonly></td>
                                            <td class="rentform">是否家庭在深圳：</td>
                                            <td><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">身份证号：</td>
                                            <td><input type="text" id="id" readonly></td>
                                            <td class="rentform">是否是深圳户口：</td>
                                            <td><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">银行卡号：</td>
                                            <td><input type="text" name="" value="" readonly></td>
                                            <td class="rentform">是否有暂住证：</td>
                                            <td><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">住址：</td>
                                            <td colspan="3"><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">申请原因：</td>
                                            <td colspan="3"><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform">是否有介绍信：</td>
                                            <td colspan="3"><input type="text" name="" value="" readonly></td>
                                        </tr>
                                        <tr>
                                            <td class="rentform"><a href="#"> 附件（点击下载)</a></td>
                                            <td colspan="3"></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="3">审批环节：租房审批<br>
                                                审批部门：<%if(department1!=null){out.print(department1.getEmdepartment());}%><br>
                                                审批人：<%if(department1!=null){out.print(department1.getName());}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <div style="text-align: center;">
                                                    <input type="button" value="批准"
                                                           style="cursor:pointer;background-color:#FFA500;width:50px">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="button" value="拒绝" style="cursor:pointer;background-color:#FFA500;width:50px" >
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane " id="archives">
                    <div class="row">
                        <div class="col-md-11 zh-message">
                            <i class="iconfont icon-zhuangtaijiankong"></i>
                            <h6>状态信息</h6>
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a href="#dangan" class="nav-link" data-toggle="pill" onclick="getarchvistfile()">档案管理员</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#admin" class="nav-link" data-toggle="pill" onclick="getdepartmenterfile()">部门管理员</a>
                                </li>
                                <li class="nav-link"><a href="../archvist_login.jsp">跳转到档案管理</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="dangan"><!-- 档案管理员信息 -->
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>姓名</th>
                                            <th>员工号</th>
                                            <th>部门</th>
                                            <th>时间</th>
                                            <th>操作信息</th>
                                        </tr>
                                        </thead>
                                        <tbody id="afiletable">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane" id="admin"><!-- 管理员信息 -->
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>姓名</th>
                                            <th>员工号</th>
                                            <th>部门</th>
                                            <th>时间</th>
                                            <th>操作信息</th>
                                        </tr>
                                        </thead>
                                        <tbody id="filetable">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="department">
                    <div class="row"> <!-- 部门管理增删改查 -->
                        <div class="col-md-11  zh-message ">
                            <i class="iconfont icon-bumenguanli"></i>
                            <h6>部门管理</h6>
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a href="#add4" class="nav-link" data-toggle="pill">添加部门</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#delete4" class="nav-link" data-toggle="pill">删除部门</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#change4" class="nav-link" data-toggle="pill">修改部门</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#search4" class="nav-link" data-toggle="pill">查找部门</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="add4">
                                    <form action="adddepartment" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_add4">ID</label>
                                                <input type="text" required name="code" class="form-control" id="id_add4" placeholder="请输入部门ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="name_add4">名称</label>
                                                <input type="text" required name="name" class="form-control" id="name_add4" placeholder="请输入部门名称">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="delete4">
                                    <form action="deletedepartment" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="id_delete4">ID</label>
                                                <input type="text" class="form-control" id="id_delete4" required name="department"
                                                       placeholder="请输入需要删除的部门ID">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="change4">
                                    <form action="updatedepartment" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="id_change4">ID</label>
                                                <input type="text" class="form-control" id="id_change4" required name="department_code"
                                                       placeholder="请输入需要修改的部门ID">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="name_change4">名称</label>
                                                <input type="text" class="form-control" required name="department_newname" id="name_change4" placeholder="请输入新名称">
                                            </div>
                                        </div>
                                        <button class="btn btn-info" type="submit">提交</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="search4">
                                    <form action="">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label >ID</label>
                                                <input type="text" class="form-control"  id="searchdepartment_input"
                                                       placeholder="如不输入则输出全部部门信息">
                                            </div>
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>名称</th>
                                                </tr>
                                                </thead>
                                                <tbody id="departmenttable">
                                                </tbody>
                                            </table>
                                        </div>
                                        <button class="btn btn-info" type="button" id="searchdepartment">查询</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

    function datechange(dates){
        var date = new Date(dates)
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' ';
        return Y+M+D;
    }


    $(function (){
        $("#searchdepartment").on("click",function (){
            var s=$("#searchdepartment_input").val();
          $.ajax({
            url:"selectdepartment",
            data:"department="+s,
            dataType:"json",
              success:function (data){
                var d="";
                for (var i=0;i<data.length;i++){
                 d+="<tr>" + "<td>" + data[i].departmentCode + "</td>" + "<td>" + data[i].departmentName + "</td>"
                }
                $("#departmenttable").html(d);
              }
          })
        })
    })


    function getarchvistfile(){
        $.ajax({
            url:"selectarchvistfile",
            dataType: "json",
            success:function (data){
                var p="";
                for (var i=0;i<data.length;i++) {
                    p +="<tr>"+"<td>" + data[i].id + "</td>" + "<td>" + data[i].name + "</td>" + "<td>" + data[i].emid +"</td>"+"<td>"+data[i].emdepartment+"</td>"+"<td>"+datechange(data[i].time)+"</td>"+"<td>"+data[i].information+"</td>"+"</tr>";
                }
                $("#afiletable").html(p);
            }
        })
    }

    function getdepartmenterfile(){
        $.ajax({
            url:"selectdepatmenterfile",
            dataType: "json",
            success:function (data){
                var p="";
                for (var i=0;i<data.length;i++) {
                    p +="<tr>"+"<td>" + data[i].id + "</td>" + "<td>" + data[i].name + "</td>" + "<td>" + data[i].emid +"</td>"+"<td>"+data[i].emdepartment+"</td>"+"<td>"+datechange(data[i].time)+"</td>"+"<td>"+data[i].information+"</td>"+"</tr>";
                }
                $("#filetable").html(p);
            }
        })
    }

    function getemployee(){
        var em=$("#id_search1").val();
        $.ajax({
          url:"selectemployee",
            data:"employee="+em,
            dataType:"json",
            success:function (data){
              var p="";
                p="<tr>"+"<td>"+data.id+"</td>"+
                "<td>"+data.name+"</td>"+
                "<td>"+data.gender+"</td>"+
                "<td>"+data.emdepartment+"</td>"+
                "<td>"+data.emid+"</td>"+
                "<td>"+data.incumbency+"</td>"+
                "<td>"+data.idCard+"</td>"+"</tr>";
                $("#employeetable").html(p);
            }
        })
    }

    function getarchvist(){
        var a=$("#id_search3").val();
        $.ajax({
            url:"selectarchvist",
            data:"archvist="+a,
            dataType:"json",
            success:function (data){
                var p="";
                p="<tr>"+"<td>"+data.id+"</td>"+
                "<td>"+data.name+"</td>"+
                "<td>"+data.emid+"</td>"+
                "<td>"+data.emdartment+"</td>"+"</tr>"
                $("#archvisttable").html(p);
            }
        })
    }


    function reflash_history(){
        history.forward(1);
    }

    reflash_history();
</script>

</body>
</html>
