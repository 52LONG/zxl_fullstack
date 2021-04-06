<%@ page import="model.Propertymanager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.6/umd/popper.js"></script>
    <script src="../js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/archvist_index.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2289786_fjx7ggkzot7.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2289798_fxf6a43yx7g.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2289798_n8d7qm2rl4k.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_ux5fmekqiej.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_u3j3bmp62in.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_y8knuojakrf.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_jowdk54fsdl.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_6ozaz4x5u5m.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_mrnnhh9mjp.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_obwju88m2o.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_1y7mjcdjpng.css">
    <style>
        .nav {
            display: inline-block;
        }
    </style>
</head>
<body>

    <div class="zhSystem border  rounded">
        <div class="zh-head">
            <div class="zh-head__logininfo">
                <a href="#"><i class="iconfont icon-email"></i>[0]</a>&nbsp;&nbsp;
                <!-- 读取用户名 -->
                <%
                    Propertymanager propertymanager = (Propertymanager) session.getAttribute("propertymanager");
                %>
                <a href="#"><i class="iconfont icon-user"><%if (propertymanager!=null){out.print(propertymanager.getName());}else{response.sendRedirect("../propertymanager_login.jsp");}%></i></a>&nbsp;
                <img src="../images/main.png">
            </div>


        </div>
        <div class="row">
            <div class="col-1">
                <ul class="nav nav-pills  rounded" style="background-color: rgba(244, 248, 248, 0.938);">
                    <li class="nav-item">
                        <a href="#baoxiu" class="nav-link active" data-toggle="pill"><i
                                class="iconfont icon-baoxiu"></i>报修</a>
                    </li>
                    <li class="nav-item">
                        <a href="#water" class="nav-link " data-toggle="pill"><i
                                class="iconfont icon-shuidian"></i>水电</a>
                    </li>
                    <li class="nav-item">
                        <a href="#suggestion" class="nav-link " data-toggle="pill"><i
                                class="iconfont icon-fankui"></i>反馈</a>
                    </li>

                </ul>
            </div>
            <div class="col-11">
                <div class="tab-content">
                    <div class="tab-pane  active" id="baoxiu">
                        <div class="bg-white pt-4 border rounded" style="width: 100%;height: 100%;">
                            <p class="text-center">请处理以下报修申请</p>
                            <hr><br>
                            <div class="row ">
                                <div class="col-3 pb-4">
                                    <div class="card text-center ">
                                        <div class="card-header">
                                            姓名：邹振于<br>
                                            员工号：201820181311 <br>
                                            员工部门：管理部门
                                        </div>
                                        <div class="card-body">
                                            物业你好:由于地下室的水管长期没有维护，导致水管爆裂,大量水涌入停车场，对停车造成了许多困扰，现申请报修，请物业尽快处理！
                                        </div>
                                        <div class="card-footer">
                                            <a href="login1.html" class="text-center btn btn-primary rounded-pill">确认报修</a>
                                        </div>
                                        <!--名字，员工号，员工部门，问题描述                -->
                                    </div>
                                </div>
                                <div class="col-3 pb-4">
                                    <div class="card text-center ">
                                        <div class="card-header">
                                            姓名：邹振于<br>
                                            员工号：201820181311 <br>
                                            员工部门：管理部门
                                        </div>
                                        <div class="card-body">
                                            物业你好:由于地下室的水管长期没有维护，导致水管爆裂,大量水涌入停车场，对停车造成了许多困扰，现申请报修，请物业尽快处理！
                                        </div>
                                        <div class="card-footer">
                                            <a href="login1.html" class="text-center btn btn-primary rounded-pill">确认报修</a>
                                        </div>
                                        <!--名字，员工号，员工部门，问题描述                -->
                                    </div>
                                </div>
                                <div class="col-3 pb-4">
                                    <div class="card text-center ">
                                        <div class="card-header">
                                            姓名：邹振于<br>
                                            员工号：201820181311 <br>
                                            员工部门：管理部门
                                        </div>
                                        <div class="card-body">
                                            物业你好:由于地下室的水管长期没有维护，导致水管爆裂,大量水涌入停车场，对停车造成了许多困扰，现申请报修，请物业尽快处理！
                                        </div>
                                        <div class="card-footer">
                                            <a href="login1.html" class="text-center btn btn-primary rounded-pill">确认报修</a>
                                        </div>
                                        <!--名字，员工号，员工部门，问题描述                -->
                                    </div>
                                </div>
                                <div class="col-3 pb-4">
                                    <div class="card text-center ">
                                        <div class="card-header">
                                            姓名：邹振于<br>
                                            员工号：201820181311 <br>
                                            员工部门：管理部门
                                        </div>
                                        <div class="card-body">
                                            物业你好:由于地下室的水管长期没有维护，导致水管爆裂,大量水涌入停车场，对停车造成了许多困扰，现申请报修，请物业尽快处理！
                                        </div>
                                        <div class="card-footer">
                                            <a href="login1.html" class="text-center btn btn-primary rounded-pill">确认报修</a>
                                        </div>
                                        <!--名字，员工号，员工部门，问题描述                -->
                                    </div>
                                </div><br>


                            </div>
                        </div>
                    </div>
                    <div class="tab-pane " id="water">

                        <div class="border rounded bg-white pt-4" style="width: 100%;height: 100%;">
                            <div class="form-group row p-2 ">
                                <span class="badge badge-secondary col-2 ml-4 p-2">请选择所在地址</span>
                                <div class="col-2">
                                    <select name="input_province" id="input_province"
                                            class="form-control">
                                        <option disabled>-请选择区域-</option>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <select name="input_city" id="input_city" class="form-control">
                                        <option disabled>-请选择小区-</option>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <select name="input_area" id="input_area" class="form-control">
                                        <option disabled>-请选择楼栋-</option>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <select name="input_suit" id="input_suite" class="form-control">
                                        <option disabled>-请选择套房-</option>
                                    </select>
                                </div>
                                <input class="col-1 btn btn-primary" type="submit" value="确定"></input>
                            </div>
                            <table class="table table-hover table-bordered mt-4">
                                <thead class="table-secondary">
                                <tr class="text-center">
                                    <th>本月用水</th>
                                    <th>本月水费</th>
                                    <th>本月用电</th>
                                    <th>本月电费</th>
                                </tr>
                                </thead>
                                <tbody class="table">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane " id="suggestion">
                        <div class="border rounded bg-white" style="width: 100%;height: 100%;">
                            <div class="text-center pt-4">
                                <h4>意见描述：</h4>
                                <form method="post" action="#">
                                <textarea class=" border rounded p-2" name="report" style="font-size:18px;width: 100%;height: 300px" id="report"
                                          placeholder="请详细描述你的意见，以向管理员有效反馈信息"></textarea><br>
                                <button class="text-center btn btn-primary mt-4" type="submit">提交</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<script type="text/javascript">
    function reflash_history(){
        history.forward(1);
    }

    reflash_history();

</script>
</body>
</html>
