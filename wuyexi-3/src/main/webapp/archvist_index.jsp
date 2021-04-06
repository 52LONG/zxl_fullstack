<%@ page import="model.Archvist" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link  rel="stylesheet" href="../css/bootstrap.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.6/umd/popper.js"></script>
    <script  src="../js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/archvist_index.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_jar6665yko.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_rech5iphrxs.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_hfvs6qiq9at.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_2k6pls4ku3q.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_z4o0vz96fo.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2262701_62cwy2vvkw.css">
</head>
<body>
<div class="zhSystem ">
    <div class="zh-head">
        <div class="zh-head__logininfo">
            <a href="exit">退出</a>&nbsp;&nbsp;
            <a href="#"><i class="iconfont icon-email"></i>[0]</a>&nbsp;&nbsp;
            <!-- 读取用户名 -->
            <%
               Archvist archvist=(Archvist)session.getAttribute("archvist");
            %>
            <a href="#"><i class="iconfont icon-user"><%if (archvist!=null){out.print(archvist.getName());}else{ response.sendRedirect("../archvist_login.jsp");}%></i></a>&nbsp;
            <img  src="../images/main.png" >
        </div>
    </div>
    <div class="row  ">
        <div class="col-2 ">
            <ul class="nav nav-pills " style="background:rgba(255,255,255,0.7) ">
                <li class="nav-item" >
                    <a href="#area-info" class="nav-link  active" data-toggle="pill">区域信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#community-info" class="nav-link  " data-toggle="pill">小区信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#building-info" class="nav-link  " data-toggle="pill">楼栋信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#suit-info" class="nav-link" data-toggle="pill">套房信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#room-info" class="nav-link" data-toggle="pill">房间信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#beds-info" class="nav-link" data-toggle="pill">床位信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#use-info" class="nav-link " data-toggle="pill"> 用途信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#contract-info" class="nav-link " data-toggle="pill"> 合同信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#propertyCompany-info" class="nav-link " data-toggle="pill"> 物业公司信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#chargingProject-info" class="nav-link " data-toggle="pill"> 收费项目信息</a>
                </li>
                <li class="nav-item" >
                    <a href="#userHistory-info" class="nav-link " data-toggle="pill"> 用户历史信息</a>
                </li>

            </ul>
        </div>
        <div class="col-10">
            <div class="tab-content">
                <div class="tab-pane active container" id="area-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#area-info__select" class="nav-link active" data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i>
                        </a></li>
                        <li class="nav-item"><a href="#area-info__delete" class="nav-link  " data-toggle="pill"><i class="iconfont icon-shanchu">&nbsp;删除</i>
                        </a></li>
                        <li class="nav-item"><a href="#area-info__update" class="nav-link " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i>
                        </a></li>
                        <li class="nav-item"><a href="#area-info__add" class="nav-link" data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i>
                        </a></li>

                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane" id="area-info__add">
                            <!--添加数据-->
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="addregion" method="post">
                                        请输入要添加的区域<br>
                                        <label>区域编码</label> <input class="m-4" type="text" name="region_code" placeholder="例如：QY001"><br>
                                        <label>区域名字</label> <input class="m-4" type="text" name="region_name" placeholder="区域的名字"><br>
                                        <button type="submit" class="btn btn-primary">添加</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane " id="area-info__delete">

                            <!--删除数据-->
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="deleteregion" method="post">
                                        输入要删除的区域编号或区域名:<input class="m-4" type="text" name="region">
                                        <button type="submit" class="btn btn-primary ml-4">删除</button>
                                    </form>
                                </div>
                            </div>


                        </div>
                        <div class="tab-pane " id="area-info__update">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="updateregion" method="post">
                                        请进行数据修改:<br>
                                        <label>请输入区域编码</label> <input class="m-4" type="text" name="region_code" placeholder="例如：QY001"><br>
                                        <label>请输入新区域名</label> <input class="m-4" type="text" name="region_newname" placeholder="当前居住区域的名字"><br>
                                        <button type="submit" class="btn btn-info">修改</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane active" id="area-info__select">
                            <!--查询数据-->
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="selectregion" method="post">
                                        请输入区域编号或区域名进行查询:<input class="m-4" type="text" id="regions" placeholder="不输入查询所有">
                                        <button type="button" class="btn btn-info ml-4" id="searchregion">查询</button>
                                    </form>
                                </div>
                                <div class="p-2 text-center border border-info rounded border-radius: 10px; overflow-auto"
                                     style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        查询结果为:<br>
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>区域编码</th>
                                                <th>区域名字</th>
                                            </tr>
                                            </thead>
                                            <tbody id="regiontable">
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane  container" id="community-info">
                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="#community-info__select" class="nav-link  active" data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i>
                        </a></li>
                        <li class="nav-item"><a href="#community-info__delete" class="nav-link  " data-toggle="pill"><i class="iconfont icon-shanchu">&nbsp;删除</i>
                        </a></li>
                        <li class="nav-item"><a href="#community-info__update" class="nav-link  " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i>
                        </a></li>
                        <li class="nav-item"><a href="#community-info__add" class="nav-link" data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i>
                        </a></li>
                        <li class="nav-item"><a href="#community-info__fastSelect" class="nav-link" data-toggle="pill"><i class="iconfont icon-chaxun">快速查询</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">

                        <div class="tab-pane " id="community-info__add">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="additem" method="post">
                                        <h5>请输入添加的小区信息</h5> <br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td>
                                                    <select id="itemregion" name="region" required onfocus="getregion()">
                                                        <option disabled>-请选择区域-</option>
                                                    </select>
                                                </td>
                                                <td class="bg-light">小区名字</td>
                                                <td><input required name="itemName" type="text" placeholder="请输入小区名字" style="width: 100%;"></td></tr>
                                            <tr>
                                                <td class="bg-light">小区地址</td>
                                                <td colspan="3"><input required name="itemAddress" type="text" placeholder="请输入小区地址" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">小区面积</td>
                                                <td ><input required name="itemArea" type="text" placeholder="请输入小区面积" style="width: 100%;"></td>
                                                <td class="bg-light"> 物业名称</td>
                                                <td><select id="itempropertymc" name="propertymc" required onfocus="getpropertymc()">
                                                    <option disabled>-请选择物业-</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途</td>
                                                <td><select id="itempurpose" name="purpose" required onfocus="getpurpose()">
                                                    <option disabled>-请选择用途-</option>
                                                    </select>
                                                </td>
                                                <td class="bg-light">用途备注</td>
                                                <td><input  name="purposenote" type="text" placeholder="请输入用途备注" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">部门</td>
                                                <td><select id="itemdepartment" name="department" required onfocus="getdepartment()">
                                                    <option disabled>-请选择部门-</option>
                                                </select></td>
                                                <td class="bg-light">部门备注</td>
                                                <td><input  name="departmentnote" type="text" placeholder="请输入部门备注" style="width: 100%;"></td></tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td>
                                                    <input id="begintime" name="begintime" type="date" value="1990-01-01">
                                                </td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td>
                                                    <input id="endtime" name="endtime" type="date" value="1990-01-01">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><select name="status">
                                                    <option value="无">&nbsp;&nbsp;&nbsp;&nbsp;请选择状态&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                                    <option value="1">启用</option>
                                                    <option value="0">禁用</option>
                                                </select></td>
                                                <td class="bg-light">小区备注</td>
                                                <td ><input name="itemnote" type="text" placeholder="请输入备注信息" style="width: 100%;"></td>
                                            </tr>
                                            <tr class="container"><td colspan="4"><button class="btn btn-info" type="submit" id="additem">添加</button></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="community-info__delete">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="deleteitem" method="post">
                                        请输入要停用小区编号:<input class="m-4" type="text" name="item_code">
                                        <button class="btn btn-danger ml-4" type="submit">停用</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="community-info__update">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="updateitem" method="post">
                                        请输入小区编号或小区名进行修改:<input class="m-4" type="text" name="itemcode">
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <select id="itemregion2" name="region" required onfocus="getregion()">
                                                    <option disabled>&nbsp;&nbsp;&nbsp;&nbsp;请选择区域&nbsp; &nbsp;&nbsp;&nbsp;</option>
                                                </select></td>
                                                <td class="bg-light">小区名字</td>
                                                <td><input name="itemName" type="text" placeholder="请输入新小区名字" style="width: 100%;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">小区地址</td>
                                                <td colspan="3"><input required name="itemAddress" type="text" placeholder="请输入新小区地址" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">物业名称</td>
                                                <td > <select id="itempropertymc2" name="propertymc" required onfocus="getpropertymc()">
                                                    <option disabled>-请选择物业-</option>
                                                </select></td>
                                                <td class="bg-light"> 小区面积</td>
                                                <td><input required name="itemArea" type="text" placeholder="请输入新小区面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途</td>
                                                <td><select id="itempurpose2" name="purpose" required onfocus="getpurpose()">
                                                    <option disabled>-请选择用途-</option>
                                                </select></td>
                                                <td class="bg-light">用途备注</td>
                                                <td><input  name="purposenote" type="text" placeholder="请输入用途备注" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">部门</td>
                                                <td><select id="itemdepartment2" name="department" required onfocus="getdepartment()">
                                                    <option>请选择部门</option>
                                                </select></td>
                                                <td class="bg-light">部门备注</td>
                                                <td><input  name="departmentnote" type="text" placeholder="请输入部门备注" style="width: 100%;"></td></tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td>
                                                    <input name="begintime" type="date">
                                                </td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td>
                                                    <input name="endtime" type="date">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><select name="status" >
                                                    <option value="无">请选择新状态</option>
                                                    <option value="1">启用</option>
                                                    <option value="0">禁用</option>
                                                </select></td>
                                                <td class="bg-light">备注</td>
                                                <td ><input name="itemnote" type="text" placeholder="请输入新备注信息" style="width: 100%;"></td>
                                            </tr>
                                            <tr class="container"><td colspan="4"><button class="btn btn-info" type="submit" id="updateitem">确认</button></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane active" id="community-info__select">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入小区编号:<input class="m-4" type="text" id="search_item_input">
                                        <button class="btn bg-info" type="button" id="searchitem">查询</button>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td><input id="search_item_regionname" readonly type="text" style="width: 100%;"> </td>
                                                <td class="bg-light">小区名字</td>
                                                <td><input id="search_item_name" readonly type="text"  style="width: 100%;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">小区地址</td>
                                                <td colspan="3"><input readonly id="search_item_address" type="text"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">物业名称</td>
                                                <td > <input id="search_item_propertymc" readonly  type="text" style="width: 100%;"></td>
                                                <td class="bg-light">小区面积</td>
                                                <td><input  id="search_item_area" readonly  type="text" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途</td>
                                                <td><input id="search_item_purpose" type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">用途备注</td>
                                                <td><input id="search_item_purposenote" type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">部门</td>
                                                <td><input id="search_item_department" type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">部门备注</td>
                                                <td><input id="search_item_departmentnote" type="text" readonly style="width: 100%;"></td></tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td><input id="search_item_begintime" type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td><input id="search_item_endtime" type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><input id="search_item_status" type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">备注</td>
                                                <td><input id="search_item_note" type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="community-info__fastSelect">
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>快速查找小区编号</h3><br>
                                        <label for="region__code">区域：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择区域</option>
                                        </select><br>
                                        <label for="item__code">小区：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择小区</option>
                                        </select><br>
                                        <label class="ml-5" for="item__code">小区编号：</label><input  type="text" class="ml-2" readonly><br>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane container" id="building-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#building-info__select" class="nav-link   active" data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i>
                        </a></li>
                        <li class="nav-item"><a href="#building-info__update" class="nav-link " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i>
                        </a></li>
                        <li class="nav-item"><a href="#building-info__add" class="nav-link " data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i>
                        </a></li>
                        <li class="nav-item"><a href="#building-info__fastSelect" class="nav-link" data-toggle="pill"><i class="iconfont icon-chaxun">快速查询</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content ">
                        <div class="tab-pane " id="building-info__add">
                            <!--添加楼栋数据-->
                            <div class="" style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="addbuilding" method="post">
                                        <h5>请输入添加的楼栋信息</h5> <br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <select id="buildingregion" name="region" onfocus="getregion()" onclick="getitembyregion()">
                                                    <option disabled>-请选择区域-</option>
                                                </select>
                                                </td>
                                                <td class="bg-light">小区</td>
                                                <td>
                                                    <select id="buildingitem" name="item">
                                                        <option disabled>-请选择小区-</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋名称</td>
                                                <td ><input type="text" required placeholder="请输入楼栋名称" name="buildingname" style="width: 100%;"></td>
                                                <td class="bg-light">楼层数</td>
                                                <td ><input type="text" required placeholder="请输入楼栋楼层数" name="floor" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋地址</td>
                                                <td ><input type="text" required placeholder="请输入楼栋地址" name="buildingaddress" style="width: 100%;"></td>
                                                <td class="bg-light">从何处购买</td>
                                                <td ><input type="text" name="buyfrom" required placeholder="请输入从何处购买" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋用途</td>
                                                <td><select name="purpose" id="buildingpurpose"onfocus="getpurpose()">
                                                    <option disabled>-请选择楼栋用途-</option>
                                                </select></td>
                                                <td class="bg-light">楼栋用途备注</td>
                                                <td >
                                                    <input required name="purposenote" type="text" placeholder="请输入楼栋用途备注" style="width: 100%;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  class="bg-light">土地用途</td>
                                                <td><input type="text" name="landpurpose" required placeholder="请输入土地用途" style="width: 100%;"></td>
                                                <td class="bg-light">土地号</td>
                                                <td><input type="text" name="landno" required placeholder="请输入土地号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">土地面积</td>
                                                <td><input type="text" name="landarea" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" name="usearea" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">产权用途</td>
                                                <td><input type="text" name="rightpurpose" required placeholder="请输入产权用途" style="width: 100%;"></td>
                                                <td class="bg-light">房产证人</td>
                                                <td><input type="text" name="rightowner" required placeholder="请输入房产证人" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td ><input type="text" name="rightno" required placeholder="请输入房产证号" style="width: 100%;"></td>
                                                <td class="bg-light">固定资产卡片号</td>
                                                <td><input type="text" name="assetno" required placeholder="请输入固定资产卡片号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房型</td>
                                                <td ><input type="text" name="structure" required placeholder="请输入房型" style="width: 100%;"></td>
                                                <td class="bg-light">开发商</td>
                                                <td><select name="supplier" id="buildingsupplier"  onfocus="getsupplier()">
                                                    <option disabled>-请选择开发商-</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">购置金额</td>
                                                <td><input type="text" name="cost" required placeholder="请输入购置金额" style="width: 100%;"></td>
                                                <td class="bg-light">购买/租用日期</td>
                                                <td ><input type="date" name="buytime" placeholder="请输入购买/租用" style="width: 100%;" value="1990-01-01"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">购买方式</td>
                                                <td ><select name="buyway" >
                                                    <option disabled>-请选择购买方式-</option>
                                                    <option value="购买">购买</option>
                                                    <option value="租用">租用</option>
                                                </select></td>
                                                <td class="bg-light">所有人</td>
                                                <td><input type="text" name="owner" required placeholder="请输入所有人" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">竣工时间</td>
                                                <td ><input type="date" name="complitedtime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">剩余年限</td>
                                                <td><input type="text" name="lasttime" required placeholder="请输入剩余年限" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td ><input type="date" name="beginusetime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td><input type="date" name="endusetime" value="1995-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋评估</td>
                                                <td ><input type="text" name="assessnote" required placeholder="请输入楼栋评估" style="width: 100%;"></td>
                                                <td class="bg-light">评估价值（金额）</td>
                                                <td><input type="text" name="price" required placeholder="请输入评估价值" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始评估时间</td>
                                                <td ><input type="date" name="accessbtime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">结束评估时间</td>
                                                <td><input type="date" name="accessetime" value="1995-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light"> 总建筑面积</td>
                                                <td ><input type="text" name="totalarea" required placeholder="请输入总建筑面积" style="width:100%;"></td>
                                                <td class="bg-light">平均单价</td>
                                                <td ><input type="text" name="averprice" required  placeholder="请输入平均单价" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><select name="status">
                                                    <option disabled>-请选择状态-</option>
                                                    <option value="1">启用</option>
                                                    <option value="0">禁用</option>
                                                </select></td>
                                                <td class="bg-light">备注</td>
                                                <td ><input type="text" name="buildingnote" placeholder="请输入备注信息" style="width: 100%;"></td>
                                            </tr>
                                            <tr><td colspan="4"><input class="btn btn-info" type="submit" value="添加"  /></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>


                        <div class="tab-pane " id="building-info__update">
                            <div class="" style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入修改的楼栋编号：<input type="text" name="buildingngcode" required ><br>
                                    </form>
                                    <form action="#" method="post">
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <select name="region" id="buildingregion2" onfocus="getregion()" onclick="getitembyregion2()">
                                                    <option disabled>-请选择区域-</option>
                                                    <option value=""></option>
                                                </select>
                                                </td>
                                                <td class="bg-light">小区名字</td>
                                                <td>
                                                    <select name="item" id="buildingitem2">
                                                        <option disabled>-请选择小区-</option>
                                                    </select>
                                                </td>
                                                </tr>
                                            <tr>
                                                <td class="bg-light">小区地址</td>
                                                <td colspan="3"><input required type="text" placeholder="请输入小区地址" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋名称</td>
                                                <td ><input type="text"name="buildingname" required placeholder="请输入楼栋名称" style="width: 100%;"></td>
                                                <td class="bg-light">从何处购买</td>
                                                <td><input type="text" name="buyfrom" required placeholder="请输入从何处购买" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋地址</td>
                                                <td><input type="text" name="buildingaddress"  required placeholder="请输入楼栋地址" style="width: 100%;"></td>
                                                <td class="bg-light">楼层数</td>
                                                <td ><input type="text" name="floor" required placeholder="请输入楼栋楼层数" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋用途</td>
                                                <td><select name="purpose" id="buildingpurpose2" onfocus="getpurpose()">
                                                    <option disabled>-请选择楼栋用途-</option>
                                                </select></td>
                                                <td class="bg-light">楼栋用途备注</td>
                                                <td >
                                                    <input  type="text" name="purposenote" required  placeholder="请输入楼栋用途备注" style="width: 100%;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  class="bg-light">土地用途</td>
                                                <td><input type="text" name="landpurpose" required placeholder="请输入土地用途" style="width: 100%;"></td>
                                                <td class="bg-light">土地号</td>
                                                <td><input type="text" name="landno" required placeholder="请输入土地号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">土地面积</td>
                                                <td><input type="text" name="landarea" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" name="usearea" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">产权用途</td>
                                                <td><input type="text" name="rightpurpose" required placeholder="请输入产权用途" style="width: 100%;"></td>
                                                <td class="bg-light">房产证人</td>
                                                <td><input type="text" name="rightowner" required placeholder="请输入房产证人" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td ><input type="text" name="rightno" required placeholder="请输入房产证号" style="width: 100%;"></td>
                                                <td class="bg-light">固定资产卡片号</td>
                                                <td><input type="text" name="assetno" required placeholder="请输入固定资产卡片号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房型</td>
                                                <td ><input type="text" name="structure"  required placeholder="请输入房型" style="width: 100%;"></td>
                                                <td class="bg-light">房型备注</td>
                                                <td><input type="text" name="structurenote" required placeholder="请输入房型备注" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">购置金额</td>
                                                <td><input type="text" name="cost" required placeholder="请输入购置金额" style="width: 100%;"></td>
                                                <td class="bg-light">购买/租用日期</td>
                                                <td><input type="date" name="buytime" required  placeholder="请输入购买/租用日期" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">购买方式</td>
                                                <td ><select name="buyway" >
                                                    <option disabled>-请选择购买方式-</option>
                                                    <option value="购买">购买</option>
                                                    <option value="租用">租用</option>
                                                </select></td>
                                                <td class="bg-light">所有人</td>
                                                <td><input type="text" name="owner" required placeholder="请输入所有人" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">竣工时间</td>
                                                <td ><input type="date" name="complitedtime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">剩余年限</td>
                                                <td><input type="text" name="lasttime" required placeholder="请输入剩余年限" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td ><input type="date" name="beginusetime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td><input type="date" name="endusetime" value="1995-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋评估</td>
                                                <td ><input type="text" name="assessnote" required placeholder="请输入楼栋评估" style="width: 100%;"></td>
                                                <td class="bg-light">评估价值（金额）</td>
                                                <td><input type="text" name="price" required placeholder="请输入评估价值" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始评估时间</td>
                                                <td ><input type="date" name="accessbtime" value="1955-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">结束评估时间</td>
                                                <td><input type="date" name="accessetime" value="1955-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light"> 总建筑面积</td>
                                                <td ><input type="text" name="totalarea" required placeholder="请输入总建筑面积" style="width: 100%;"></td>
                                                <td class="bg-light">平均单价</td>
                                                <td ><input type="text" name="averprice" required  placeholder="请输入平均单价" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开发商名称</td>
                                                <td><select name="supplier" id="buildingsupplier2" onfocus="getsupplier()">
                                                    <option disabled>-请选择开发商名称-</option>
                                                </select></td>
                                                <td class="bg-light">开发商备注</td>
                                                <td ><input type="text" name="suppliernote" placeholder="开发商名称备注" style="width: 100%;"></td>

                                            </tr>
                                            <tr>
                                                <td class="bg-light">备注</td>
                                                <td colspan="3"><input type="text" name="buildingnote" placeholder="请输入备注信息" style="width: 100%;"></td>
                                            </tr>
                                            <tr><td colspan="4"><input class="btn btn-info" type="submit" value="确认修改"  /></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane active" id="building-info__select">
                            <div class="" style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入楼栋编号进行查询:<input class="m-4" type="text" id="building_input">
                                        <input class="ml-4 btn btn-info" type="button" value="查询"  id="search_building"/>
                                    </form>
                                </div>
                                <div class=" text-center border border-info rounded border-radius: 10px; "
                                     style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        查询结果为:<br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <input type="text" readonly id="search_building_region"  style="width: 100%;"></td>
                                                <td class="bg-light">小区名字</td>
                                                <td><input type="text" readonly id="search_building_itemname" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">物业名称</td>
                                                <td><input type="text" readonly id="search_building_propertymc" style="width: 100%;"></td>
                                                <td class="bg-light">楼栋名称</td>
                                                <td ><input type="text" readonly id="search_building_name" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋地址</td>
                                                <td><input type="text" readonly id="search_building_address" style="width: 100%;"></td>
                                                <td class="bg-light">楼层数</td>
                                                <td ><input type="text" readonly id="search_building_floor"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋用途</td>
                                                <td><input type="text" readonly id="search_building_purpose" style="width: 100%;"></td>
                                                <td class="bg-light">楼栋用途备注</td>
                                                <td >
                                                    <input  type="text" readonly id="search_building_purposenote" style="width: 100%;">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td  class="bg-light">土地用途</td>
                                                <td><input type="text" readonly id="search_building_landpurpose"  style="width: 100%;"></td>
                                                <td class="bg-light">土地号</td>
                                                <td><input type="text" readonly id="search_building_landno" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">土地面积</td>
                                                <td><input type="text" readonly id="search_building_landarea" style="width: 100%;"></td>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" readonly id="search_building_usearea"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">产权用途</td>
                                                <td><input type="text" readonly id="search_building_rightpurpose"  style="width: 100%;"></td>
                                                <td class="bg-light">房产证人</td>
                                                <td><input type="text" readonly id="search_building_lawowner"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td ><input type="text" readonly id="search_building_rightno" style="width: 100%;"></td>
                                                <td class="bg-light">固定资产卡片号</td>
                                                <td><input type="text" readonly id="search_building_rightcardno" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房型</td>
                                                <td ><input type="text" readonly id="search_building_structure" style="width: 100%;"></td>
                                                <td class="bg-light">开发商</td>
                                                <td ><input type="text" readonly id="search_building_supplier" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">从何处购买</td>
                                                <td ><input type="text" readonly id="search_building_buyfrom"  style="width: 100%;"></td>
                                                <td class="bg-light">购置金额</td>
                                                <td><input type="text" readonly id="search_building_cost" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">购买/租用</td>
                                                <td ><input type="text" readonly id="search_building_buyway" style="width: 100%;"></td>
                                                <td class="bg-light">购置/租用日期</td>
                                                <td><input type="text" readonly id="search_building_buytime" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">备注</td>
                                                <td ><input type="text" readonly id="search_building_note"  style="width: 100%;"></td>
                                                <td class="bg-light">所有人</td>
                                                <td><input type="text" readonly id="search_building_owner" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">竣工时间</td>
                                                <td ><input type="text" readonly id="search_building_complitedtime" style="width: 100%;"></td>
                                                <td class="bg-light">剩余年限</td>
                                                <td><input type="text" readonly id="search_building_lasttime" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始使用时间</td>
                                                <td ><input type="text" readonly id="search_building_beginusetime" style="width: 100%;"></td>
                                                <td class="bg-light">结束使用时间</td>
                                                <td><input type="text" readonly id="search_building_endusetime" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋评估</td>
                                                <td ><input type="text" readonly id="search_building_accessnote" style="width: 100%;"></td>
                                                <td class="bg-light">评估价值（金额）</td>
                                                <td><input type="text" readonly id="search_building_price" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">开始评估时间</td>
                                                <td ><input type="text" readonly id="search_building_begin_accesstime" style="width: 100%;"></td>
                                                <td class="bg-light">结束评估时间</td>
                                                <td><input type="text" readonly id="search_building_end_accesstime" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light"> 总建筑面积</td>
                                                <td ><input type="text" readonly id="search_building_totalarea" style="width: 100%;"></td>
                                                <td class="bg-light">平均单价</td>
                                                <td ><input type="text" readonly id="search_building_averprice" style="width: 100%;"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="building-info__fastSelect">
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>快速查找小区楼栋编号</h3><br>
                                        <label for="region_code1">区域：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择区域</option>
                                        </select><br>
                                        <label for="item_code1">小区：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择小区</option>
                                        </select><br>
                                        <label for="building_code1">楼栋：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择楼栋</option>
                                        </select><br>
                                        <label class="ml-5" for="building_code1">楼栋编号：</label><input  type="text" class="ml-2" readonly><br>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="tab-pane container" id="suit-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#suit-info__select" class="nav-link active " data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i>
                        </a></li>
                        <li class="nav-item"><a href="#suit-info__delete" class="nav-link  "data-toggle="pill"><i class="iconfont icon-shanchu">&nbsp;删除</i>
                        </a></li>
                        <li class="nav-item"><a href="#suit-info__update" class="nav-link " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i>
                        </a></li>
                        <li class="nav-item"><a href="#suit-info__add" class="nav-link " data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i>
                        </a></li>
                        <li class="nav-item"><a href="#suit-info__fastSelect" class="nav-link" data-toggle="pill"><i class="iconfont icon-chaxun">快速查询</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane active" id="suit-info__select">
                            <!--查询数据-->
                            <div  style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入查询的套房编号：<input type="text" required id="search_suite_input"><button class="btn bg-info ml-2" id="search_suite">查询</button><br>
                                    </form>
                                </div>
                                <div class=" text-center border border-info rounded border-radius: 10px; "style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <table class="table table-hover table-bordered">
                                            <tbody>
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td><input type="text" id="search_suite_regionname" readonly style="width: 100%;"></td>
                                                <td class="bg-light">小区名字</td>
                                                <td><input type="text" id="search_suite_itemname" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋名称</td>
                                                <td><input type="text" readonly id="search_suite_building" style="width: 100%;"></td>
                                                <td class="bg-light">楼层号</td>
                                                <td><input type="text" readonly id="search_suite_floor" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房号</td>
                                                <td><input type="text" id="search_suite_suitecode" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">拥有者</td>
                                                <td><input type="text" id="search_suite_owner" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td><input type="text" id="search_suite_rightno" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">资产卡片号</td></td>
                                                <td><input type="text" id="search_suite_asetno" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">建筑面积</td>
                                                <td><input type="text" id="search_suite_buildingarea" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">公摊面积</td>
                                                <td><input type="text" id="search_suite_averarea" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" id="search_suite_usearea" readonly style="width: 100%;"></td>
                                                <td class="bg-light">实际使用面积</td>
                                                <td><input type="text" id="search_suite_actualusearea" readonly style="width: 100%;" ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">户型</td>
                                                <td><input type="text" id="search_suite_structure" readonly style="width: 100%;"></td>
                                                <td class="bg-light">房间数</td>
                                                <td><input type="text" id="search_suite_roomnum" readonly style="width: 100%;" ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房备注</td>
                                                <td><input type="text" id="search_suite_note" readonly style="width: 100%;" ></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><input type="text" id="search_suite_active" readonly style="width: 100%;" ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途名</td>
                                                <td><input type="text" id="search_suite_purpose" readonly style="width: 100%;" ></td>
                                                <td class="bg-light">使用状态</td>
                                                <td><input type="text" id="search_suite_usestatus" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途开始时间</td>
                                                <td><input type="text" id="search_suite_purbetime" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">用途结束时间</td>
                                                <td><input type="text" id="search_suite_purendtime" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途备注</td>
                                                <td><input type="text" id="search_suite_purnote" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">评估金额</td>
                                                <td><input type="text" id="search_suite_accessprice" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估开始时间</td>
                                                <td><input type="text" id="search_suite_accessbtime" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">评估结束时间</td>
                                                <td><input type="text" id="search_suite_accessetime" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">平均单价</td>
                                                <td><input type="text" id="search_suite_accessaverprice" readonly style="width: 100%;"  ></td>
                                                <td class="bg-light">评估公司名称</td>
                                                <td><input type="text" id="search_suite_supplier" readonly style="width: 100%;"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估备注</td>
                                                <td colspan="3"><input type="text" id="search_suite_accessnote" readonly style="width: 100%;" ></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="suit-info__delete">
                            <!--删除数据-->
                            <div  style="height: 100%;width:100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="deletesuite" method="post">
                                        请输入要禁用的套房编号:<input class="m-4" type="text" name="suite_code">
                                        <input class="btn btn-danger ml-4" type="button" value="禁用"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="suit-info__update">
                            <!--修改数据-->
                            <div class="" style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="updatesuite" method="post">
                                        请输入修改的套房编号：<input type="text" name="suitecode" required ><br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <select name=""  id="suiteregion" onfocus="getregion()">
                                                    <option disabled>-请选择区域-</option>
                                                </select>
                                                </td>
                                                <td class="bg-light">小区名字</td>
                                                <td><select name="" id="suiteitem">
                                                    <option  disabled>-请选择小区-</option>
                                                </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋名称</td>
                                                <td><select name="" id="suitebuilding">
                                                    <option disabled>-请选择楼栋-</option>
                                                    <option value=""></option>
                                                </select></td>
                                                <td class="bg-light">楼层</td>
                                                <td><input type="text" required placeholder="请输入楼层" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房名</td>
                                                <td><input type="text" required placeholder="请输入套房名" style="width: 100%;"></td>
                                                <td class="bg-light">拥有者</td>
                                                <td ><input type="text" required placeholder="请输入拥有者" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td><input type="text" required placeholder="请输入房产证号" style="width: 100%;"></td>
                                                <td class="bg-light">资产卡片号</td></td>
                                                <td><input type="text" required placeholder="请输入资产卡片号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">建筑面积</td>
                                                <td><input type="text" required placeholder="请输入建筑面积" style="width: 100%;"></td>
                                                <td class="bg-light">公摊面积</td>
                                                <td><input type="text" required placeholder="请输入公摊面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                                <td class="bg-light">实际使用面积</td>
                                                <td><input type="text" required placeholder="请输入实际使用面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">户型</td>
                                                <td><input type="text" required placeholder="请输入户型" style="width: 100%;"></td>
                                                <td class="bg-light">房间数</td>
                                                <td><input type="text" required placeholder="请输入房间数" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房备注</td>
                                                <td><input type="text" placeholder="请输入套房备注" style="width: 100%;"></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><select name="status">
                                                    <option >-请选择启用状态-</option>
                                                    <option value="1">启用</option>
                                                    <option value="0">停用</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途名</td>
                                                <td><select name="" id="suitepurpose">
                                                    <option disabled>-请选择用途名-</option>
                                                    <option value=""></option>
                                                </select></td>
                                                <td class="bg-light">评估备注</td>
                                                <td colspan="4"><input type="text" placeholder="评估备注" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途开始时间</td>
                                                <td ><input type="date" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">用途结束时间</td>
                                                <td><input type="text" required placeholder="请输入剩余年限" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途备注</td>
                                                <td ><input type="text"  placeholder="请输入用途备注" style="width: 100%;"></td>
                                                <td class="bg-light">评估单价</td>
                                                <td><input type="text" required placeholder="请输入评估价值" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估开始时间</td>
                                                <td ><input type="date" value="1990-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">评估结束时间</td>
                                                <td><input type="date" value="1990-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">平均单价</td>
                                                <td ><input type="text" required  placeholder="请输入平均单价" style="width: 100%;"></td>
                                                <td class="bg-light">评估公司名称</td>
                                                <td ><input type="text" required placeholder="请输入评估公司名称" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房面积</td>
                                                <td><input type="text" name="suitearea" required placeholder="请输入套房面积"></td>
                                                <td class="bg-light">使用状态</td>
                                                <td>
                                                    <select name="usestatus">
                                                        <option value="1">使用中</option>
                                                        <option value="0">空闲中</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="container"><td colspan="4"><button class="btn btn-info" type="submit" >提交 </button></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="suit-info__add">
                            <!--添加数据-->
                            <div class="" style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="addsuite" method="post">
                                        <h5>请输入添加的楼栋套房信息</h5> <br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">区域名字</td>
                                                <td> <select name="suiteregion"  id="suiteregion2" onfocus="getregion()" onclick="getitembyregion_suite()">
                                                    <option disabled>-请选择区域-</option>
                                                </select>
                                                </td>
                                                <td class="bg-light">小区名字</td>
                                                <td><select name="suiteitem" id="suiteitem2" onclick="getbuildingbyitem()">
                                                    <option  disabled>-请选择小区-</option>
                                                </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">楼栋名称</td>
                                                <td><select name="suitebuilding" id="suitebuilding2">
                                                    <option disabled>-请选择楼栋-</option>
                                                </select></td>
                                                <td class="bg-light">楼层</td>
                                                <td><input type="text" name="floor" required placeholder="请输入楼层" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房名</td>
                                                <td><input type="text" name="suitename" required placeholder="请输入套房名" style="width: 100%;"></td>
                                                <td class="bg-light">拥有者</td>
                                                <td ><input type="text" name="owner" required placeholder="请输入拥有者" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房产证号</td>
                                                <td><input type="text" name="rightno" required placeholder="请输入房产证号" style="width: 100%;"></td>
                                                <td class="bg-light">资产卡片号</td></td>
                                                <td><input type="text" name="aesetcardno" required placeholder="请输入资产卡片号" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">建筑面积</td>
                                                <td><input type="text" name="buildingarea" required placeholder="请输入建筑面积" style="width: 100%;"></td>
                                                <td class="bg-light">公摊面积</td>
                                                <td><input type="text" name="averarea" required placeholder="请输入公摊面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用面积</td>
                                                <td><input type="text" name="usearea" required placeholder="请输入土地面积" style="width: 100%;"></td>
                                                <td class="bg-light">实际使用面积</td>
                                                <td><input type="text" name="actualusearea" required placeholder="请输入实际使用面积" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">户型</td>
                                                <td><input type="text" name="roomstructure" required placeholder="请输入户型" style="width: 100%;"></td>
                                                <td class="bg-light">房间数</td>
                                                <td><input type="text" name="roomnum" required placeholder="请输入房间数" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房备注</td>
                                                <td><input type="text" name="suitenote" placeholder="请输入套房备注" style="width: 100%;"></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><select name="status" >
                                                    <option disabled>-请选择启用状态-</option>
                                                    <option value="1">启用</option>
                                                    <option value="0">停用</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途名</td>
                                                <td><select name="suitepurpose" id="suitepurpose2" onclick="getpurpose()">
                                                    <option disabled>-请选择用途名-</option>
                                                </select></td>
                                                <td class="bg-light">用途备注</td>
                                                <td><input type="text" name="purposenote" placeholder="请输入用途备注" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途开始时间</td>
                                                <td ><input type="date" value="1995-01-01" name="purposebtime" style="width: 100%;"></td>
                                                <td class="bg-light">用途结束时间</td>
                                                <td><input type="data" value="1995-01-01" required name="purposeetime" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估备注</td>
                                                <td><input type="text" name="accessnote" placeholder="评估备注" style="width: 100%;"></td>
                                                <td class="bg-light">评估单价</td>
                                                <td><input type="text" name="accessprice" required placeholder="请输入评估价值" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估开始时间</td>
                                                <td ><input type="date" name="accessbtime" value="1995-01-01" style="width: 100%;"></td>
                                                <td class="bg-light">评估结束时间</td>
                                                <td><input type="date" name="accessetime" value="1995-01-01" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">平均单价</td>
                                                <td ><input type="text" name="averprice" required  placeholder="请输入平均单价" style="width: 100%;"></td>
                                                <td class="bg-light">开发商名</td>
                                                <td ><select name="accesscompany" id="suiteaccesscompany" onfocus="getsupplier()">
                                                    <option disabled>-开发商-</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">套房面积</td>
                                                <td><input type="text" name="suitearea" required placeholder="请输入套房面积"></td>
                                                <td class="bg-light">使用状态</td>
                                                <td>
                                                    <select name="usestatus">
                                                        <option value="1">使用中</option>
                                                        <option value="0">空闲中</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr class="container"><td colspan="4"><button class="btn btn-info" type="submit" >提交 </button></td></tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="suit-info__fastSelect">
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>快速查找套房编号</h3><br>
                                        <label for="region_code2">区域：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择区域</option>
                                        </select><br>
                                        <label for="item_code2">小区：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择小区</option>
                                        </select><br>
                                        <label for="building_code2">楼栋：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择楼栋</option>
                                        </select><br>
                                        <label for="suite_code2">套房：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择套房</option>
                                        </select><br>
                                        <label class="ml-5" for="suite_code2">套房编号：</label><input  type="text" class="ml-2" readonly><br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="tab-pane container" id="room-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#room-info__select" class="nav-link active " data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i></a></li>
                        <li class="nav-item"><a href="#room-info__delete" class="nav-link  " data-toggle="pill"><i class="iconfont icon-shanchu">&nbsp;删除</i></a></li>
                        <li class="nav-item"><a href="#room-info__update" class="nav-link  " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i></a></li>
                        <li class="nav-item"><a href="#room-info__add" class="nav-link  " data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i></a></li>
                        <li class="nav-item"><a href="#room-info__fastSelect" class="nav-link" data-toggle="pill"><i class="iconfont icon-chaxun">快速查询</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane active " id="room-info__select">
                            <!--查询数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入查询的房间编号：<input type="text" id="room_search_input" required><button class="btn bg-info ml-2" id="room_search">提交</button><br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">房间名</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">是否可使用</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">可使用面积</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">租用面积</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">床位数量</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">房间备注</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途名</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">用途备注</td>
                                                </td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途开始时间</td>
                                                <td><input type="date" readonly value="1991-01-01"></td>
                                                <td class="bg-light">用途结束时间</td>
                                                <td><input type="date" readonly value="1991-01-01"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">评估金额</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估开始时间</td>
                                                <td><input type="date" readonly value="1991-01-01"></td>
                                                <td class="bg-light">评估结束时间</td>
                                                <td><input type="date" readonly value="1991-01-01"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">平均价格</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                                <td class="bg-light">开发商</td>
                                                <td><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估备注</td>
                                                <td colspan="3"><input type="text" readonly style="width: 100%;"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane " id="room-info__delete">
                            <!--删除数据-->
                            <div style="height: 100%;width:100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入要禁用数据的房间编号:<input class="m-4" type="text" >
                                        <button class="btn btn-danger  ml-2" type="submit">禁用</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane " id="room-info__update">
                            <!--修改数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入修改的房间编号：<input type="text" required><button class="btn bg-info ml-2">提交</button><br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td>区域</td>
                                                <td>
                                                    <select name="region" id="room_region" onfocus="getregion()">
                                                        <option disabled>-选择区域-</option>
                                                    </select>
                                                </td>
                                                <td>小区</td>
                                                <td>
                                                    <select name="item" id="room_item">
                                                        <option disabled>-选择小区-</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>楼栋</td>
                                                <td>
                                                    <select name="region" id="room_building">
                                                        <option disabled>-选择楼栋-</option>
                                                    </select>
                                                </td>
                                                <td>套房</td>
                                                <td>
                                                    <select name="item" id="room_suite">
                                                        <option disabled>-选择套房-</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">房间名</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">是否可使用</td>
                                                <td><select name="" id="">
                                                    <option >请选择</option>
                                                    <option value="">可用</option>
                                                    <option value="">不可用</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">可使用面积</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">租用面积</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">床位数量</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">房间备注</td>
                                                <td><input type="text"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途名</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">用途备注</td>
                                                </td>
                                                <td><input type="text" style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">用途开始时间</td>
                                                <td><input type="date" required value="1991-01-01"></td>
                                                <td class="bg-light">用途结束时间</td>
                                                <td><input type="date" required value="1991-01-01"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">状态</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">评估金额</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">评估开始时间</td>
                                                <td><input type="date" required value="1991-01-01"></td>
                                                <td class="bg-light">评估结束时间</td>
                                                <td><input type="date" required value="1991-01-01"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">平均价格</td>
                                                <td><input type="text" required style="width: 100%;"></td>
                                                <td class="bg-light">评估备注</td>
                                                <td colspan="3"><input type="text"  style="width: 100%;"></td>
                                            </tr>
                                            <tr>
                                                <td class="container"  colspan="4"><button class="btn btn-info" type="submit">提交</button></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane " id="room-info__add">
                            <!--修改数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <h3>添加房间信息</h3>
                                    <table class="table table-hover table-bordered">
                                        <tr>
                                            <td>区域</td>
                                            <td>
                                                <select name="region" id="room_region2" onfocus="getregion()">
                                                    <option disabled>-选择区域-</option>
                                                </select>
                                            </td>
                                            <td>小区</td>
                                            <td>
                                                <select name="item" id="room_item2">
                                                    <option disabled>-选择小区-</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>楼栋</td>
                                            <td>
                                                <select name="region" id="room_building2">
                                                    <option disabled>-选择楼栋-</option>
                                                </select>
                                            </td>
                                            <td>套房</td>
                                            <td>
                                                <select name="item" id="room_suite2">
                                                    <option disabled>-选择套房-</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">房间名</td>
                                            <td><input type="text" name="roomname" required style="width: 100%;"></td>
                                            <td class="bg-light">是否可使用</td>
                                            <td><select name="active">
                                                <option >请选择</option>
                                                <option value="1">可用</option>
                                                <option value="0">不可用</option>
                                            </select></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">可使用面积</td>
                                            <td><input type="text"  required style="width: 100%;"></td>
                                            <td class="bg-light">租用面积</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">床位数量</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                            <td class="bg-light">房间备注</td>
                                            <td><input type="text"  style="width: 100%;"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">用途名</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                            <td class="bg-light">用途备注</td>
                                            </td>
                                            <td><input type="text" style="width: 100%;"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">用途开始时间</td>
                                            <td><input type="date" required value="1991-01-01"></td>
                                            <td class="bg-light">用途结束时间</td>
                                            <td><input type="date" required value="1991-01-01"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">状态</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                            <td class="bg-light">评估金额</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">评估开始时间</td>
                                            <td><input type="date" required value="1991-01-01"></td>
                                            <td class="bg-light">评估结束时间</td>
                                            <td><input type="date" required value="1991-01-01"></td>
                                        </tr>
                                        <tr>
                                            <td class="bg-light">平均价格</td>
                                            <td><input type="text" required style="width: 100%;"></td>
                                            <td class="bg-light">评估备注</td>
                                            <td colspan="3"><input type="text"  style="width: 100%;"></td>
                                        </tr>
                                        <tr>
                                            <td class="container"  colspan="4"><button class="btn btn-info" type="submit">提交</button></td>
                                        </tr>
                                    </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="room-info__fastSelect">
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>快速查找套房房间编号</h3><br>
                                        <label for="region_code3">区域：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择区域</option>
                                        </select><br>
                                        <label for="item_code3">小区：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择小区</option>
                                        </select><br>
                                        <label for="building_code3">楼栋：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择楼栋</option>
                                        </select><br>
                                        <label for="suite_code3">套房：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择套房</option>
                                        </select><br>
                                        <label for="room_code3">房间：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择房间</option>
                                        </select><br>
                                        <label class="ml-5" for="room_code3">房间编号：</label><input  type="text" class="ml-2" readonly><br>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="tab-pane container" id="beds-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#beds-info__select" class="nav-link active " data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i></a></li>
                        <li class="nav-item"><a href="#beds-info__delete" class="nav-link  " data-toggle="pill"><i class="iconfont icon-shanchu">&nbsp;删除</i></a></li>
                        <li class="nav-item"><a href="#beds-info__update" class="nav-link  " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i></a></li>
                        <li class="nav-item"><a href="#beds-info__add" class="nav-link  " data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i></a></li>
                        <li class="nav-item"><a href="#beds-info__fastSelect" class="nav-link" data-toggle="pill"><i class="iconfont icon-chaxun">快速查询</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane active" id="beds-info__select">
                            <!--查询数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入查询的床位编号：<input type="text" required><button class="btn bg-info ml-2">提交</button><br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">床位编号</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_id"></td>
                                                <td class="bg-light">床位名</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_name"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">可使用面积</td>
                                                <td><input type="text" readonly style="width: 100%;" id="beds_usabkeArea"></td>
                                                <td class="bg-light">租用面积</td>
                                                <td><input type="text" readonly style="width: 100%;" id="beds_leaseArea"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用状态</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_usingState"></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_enabled"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">床位备注</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_note"></td>
                                                <td class="bg-light">租借人</td>
                                                <td><input type="text" readonly style="width: 100%;"  id="beds_renter"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用开始时间</td>
                                                <td><input type="date" readonly value="1991-01-01" id="beds_startTime"></td>
                                                <td class="bg-light">使用结束时间</td>
                                                <td><input type="date" readonly value="1991-01-01" id="beds_endTime"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">租用备注</td>
                                                <td colspan="3"><input type="text" style="width: 100%;" id="beds_leaseNote"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="beds-info__delete">
                            <!--删除数据-->
                            <div style="height: 100%;width:100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入要禁用数据的床位编号:<input class="m-4" type="text" >
                                        <button class="btn btn-danger  ml-2" type="submit">禁用</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="beds-info__update">
                            <!--修改数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入修改的床位编号：<input type="text" required><button class="btn bg-info ml-2">提交</button><br>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">床位编号</td>
                                                <td><input type="text" required style="width: 100%;" name="beds-info_Id"  id="beds-info_id"></td>
                                                <td class="bg-light">床位名</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds-info_Name"  id="beds-info_name"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">可使用面积</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds-info_UsabkeArea"  id="beds-info_usabkeArea"></td>
                                                <td class="bg-light">租用面积</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds-info_LeaseArea"  id="beds-info_leaseArea"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用状态</td>
                                                <td><select name="beds-info_UsingState" id="beds-info_usingState">
                                                    <option value="">请选择</option>
                                                </select></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><select name="beds-info_Enabled" id="beds-info_enabled">
                                                    <option value="">请选择</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">床位备注</td>
                                                <td><input type="text"   style="width: 100%;"  name="beds-info_Note"  id="beds-info_note"></td>
                                                <td class="bg-light">租借人</td>
                                                <td><input type="text" required style="width: 100%;"  name="beds-info_Renter"  id="beds-info_renter"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用开始时间</td>
                                                <td><input type="date"  required value="1991-01-01" name="beds-info_StartTim"  id="beds-info_startTime"></td>
                                                <td class="bg-light">使用结束时间</td>
                                                <td><input type="date"  required value="1991-01-01" name="beds-info_EndTime"  id="beds-info_endTime"></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">租用备注</td>
                                                <td colspan="3"><input type="text"  style="width: 100%;" name="beds-info_LeaseNote"  id="beds-info_leaseNote"></td>
                                            </tr>
                                            <tr> <td colspan="4"><button class="btn btn-info" type="submit" id="beds-info_button"  name="beds-info_Button">提交</button></td</tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="beds-info__add">
                            <!--添加数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>添加床位信息</h3>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td class="bg-light">床位编号</td>
                                                <td><input type="text" required style="width: 100%;" name="beds_Id" ></td>
                                                <td class="bg-light">床位名</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds_Name" ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">可使用面积</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds_UsabkeArea"  ></td>
                                                <td class="bg-light">租用面积</td>
                                                <td><input type="text"  required style="width: 100%;" name="beds_LeaseArea"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用状态</td>
                                                <td><select name="beds_UsingState" >
                                                    <option value="">请选择</option>
                                                </select></td>
                                                <td class="bg-light">启用状态</td>
                                                <td><select name="beds_Enabled" >
                                                    <option value="">请选择</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">床位备注</td>
                                                <td><input type="text"   style="width: 100%;"  name="beds_Note"  ></td>
                                                <td class="bg-light">租借人</td>
                                                <td><input type="text" required style="width: 100%;"  name="beds_Renter"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">使用开始时间</td>
                                                <td><input type="date"  required value="1991-01-01" name="beds_StartTim"  ></td>
                                                <td class="bg-light">使用结束时间</td>
                                                <td><input type="date"  required value="1991-01-01" name="beds_EndTime"  ></td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light">租用备注</td>
                                                <td colspan="3"><input type="text" readonly style="width: 100%;" name="beds_LeaseNote"  ></td>
                                            </tr>
                                            <tr> <td colspan="4"><button class="btn btn-info" type="submit" name="beds_Button" >提交</button></td</tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane " id="beds-info__fastSelect">
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        <h3>快速查找房间床位编号</h3><br>
                                        <label for="region_code4">区域：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择区域</option>
                                        </select><br>
                                        <label for="item_code4">小区：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择小区</option>
                                        </select><br>
                                        <label for="building_code4">楼栋：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择楼栋</option>
                                        </select><br>
                                        <label for="suite_code4">套房：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择套房</option>
                                        </select><br>
                                        <label for="room_code4">房间：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择房间</option>
                                        </select><br>
                                        <label for="bunk_code4">床位：</label>
                                        <select name="" id="" class="m-2">
                                            <option value="">请选择床位</option>
                                        </select><br>
                                        <label class="ml-5" for="bunk_code4">床位编号：</label><input  type="text" class="ml-2" readonly><br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane container" id="use-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#use-info__select" class="nav-link active" data-toggle="pill"><i class="iconfont icon-chaxun">&nbsp;查询</i>
                        </a></li>
                        <li class="nav-item"><a href="#use-info__delete" class="nav-link  " data-toggle="pill" ><i class="iconfont icon-shanchu">&nbsp;删除</i>
                        </a></li>
                        <li class="nav-item"><a href="#use-info__update" class="nav-link  " data-toggle="pill"><i class="iconfont icon-xiugai">&nbsp;修改</i>
                        </a></li>
                        <li class="nav-item"><a href="#use-info__add" class="nav-link " data-toggle="pill"><i class="iconfont icon-tianjia1">&nbsp;添加</i>
                        </a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane" id="use-info__add">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="addpurpose" method="post">
                                        请输入要添加的用途<br>
                                        <label>用途编码</label> <input class="m-4" type="text" name="purpose_code" placeholder="例如：QT001"><br>
                                        <label>用途名字</label> <input class="m-4" type="text" name="purpose_name" placeholder="用途"><br>
                                        <button type="submit" class="btn btn-primary">添加</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane " id="use-info__delete">
                            <!--删除数据-->
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="deletepurpose" method="post">
                                        输入要删除的用途编号或用途名:<input class="m-4" type="text" name="purpose">
                                        <button type="submit" class="btn btn-primary ml-4">删除</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane " id="use-info__update">

                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="updatepurpose" method="post">
                                        请进行数据修改:<br>
                                        <label>请输入用途编码</label> <input class="m-4" type="text" name="purpose_code" placeholder="例如：QT001"><br>
                                        <label>请输入新用途名</label> <input class="m-4" type="text" name="purpose_newname"><br>
                                        <button type="submit" class="btn btn-info">修改</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane active" id="use-info__select">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入用途编号或用途名进行查询:<input class="m-4" type="text" id="purpose" placeholder="不输入查询所有">
                                        <button type="button" class="btn btn-info ml-4" id="searchpurpose">查询</button>
                                    </form>
                                </div>
                                <div class="p-2 text-center border border-info rounded border-radius: 10px; overflow-auto"
                                     style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        查询结果为:<br>
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>用途编码</th>
                                                <th>用途名</th>
                                            </tr>
                                            </thead>
                                            <tbody id="purposetable">
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane container" id="contract-info">
                    <div style="height: 100%;width: 100%; margin:auto">
                        <div class="border border-info rounded m-1 p-1 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                            <form action="#" method="post">

                                <table class=" table table-hover table-bordered">
                                    <thead>
                                    <td colspan="8">
                                        <h2 class="text-center">员工宿舍合同</h2>
                                    </td>
                                    </thead>
                                    <tr>
                                        <td>虚拟合同号</td>
                                        <td colspan="3" class="bg-white" style="width: 30%;"></td>
                                        <td>支部部门</td>
                                        <td colspan="3" class="bg-white" style="width: 30%;"></td>
                                    </tr>
                                    <tr>
                                        <td>甲方名称</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>乙方名称</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>合同面积</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同类型</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>合同总金额</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同应收金额</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>合同本金金额</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同已收金额</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>合同开始时间</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同结束时间</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>合同签订时间</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同状态</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>入行时间</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>合同终止时间</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                    <tr>
                                        <td>终止原因</td>
                                        <td colspan="3" class="bg-white"></td>
                                        <td>终止人</td>
                                        <td colspan="3" class="bg-white"></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane container" id="propertyCompany-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#propertyCompany-info__select" class="nav-link active" data-toggle="pill">查询</a></li>
                        <li class="nav-item"><a href="#propertyCompany-info__delete" class="nav-link  " data-toggle="pill">删除</a></li>
                        <li class="nav-item"><a href="#propertyCompany-info__update" class="nav-link  " data-toggle="pill">修改</a></li>
                        <li class="nav-item"><a href="#propertyCompany-info__add" class="nav-link" data-toggle="pill">添加</a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane" id="propertyCompany-info__add">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="addpropertymc" method="post">
                                        请输入要添加的物业<br>
                                        <label>物业编码</label> <input class="m-4" type="text" name="propertymc_code" placeholder="例如：WYGS001"><br>
                                        <label>物业公司</label> <input class="m-4" type="text" name="propertymc_name"><br>
                                        <button type="submit" class="btn btn-primary">添加</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="propertyCompany-info__delete">
                            <!--删除数据-->
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="deletepropertymc" method="post">
                                        输入要删除的物业编号或物业名:<input class="m-4" type="text" name="propertymc">
                                        <button type="submit" class="btn btn-primary ml-4">删除</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane " id="propertyCompany-info__update">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="updatepropertymc" method="post">
                                        请进行数据修改:<br>
                                        <label>请输入物业编码</label> <input class="m-4" type="text" name="propertymc_code" placeholder="例如：WYGS001"><br>
                                        <label>请输入新物业名</label> <input class="m-4" type="text" name="propertymc_newname"><br>
                                        <button type="submit" class="btn btn-info">修改</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane active" id="propertyCompany-info__select">
                            <div class="" style="height: 600px;width: 100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入物业编号或物业名进行查询:<input class="m-4" type="text" id="propertymc" placeholder="不输入查询所有">
                                        <button type="button" class="btn btn-info ml-4" id="searchpropertymc">查询</button>
                                    </form>
                                </div>
                                <div class="p-2 text-center border border-info rounded border-radius: 10px; overflow-auto"
                                     style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        查询结果为:<br>
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>物业编码</th>
                                                <th>物业公司</th>
                                            </tr>
                                            </thead>
                                            <tbody id="propertymctable">
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane container" id="chargingProject-info">
                    <div style="height: 100%;width: 100%;margin:auto">
                        <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                            <h3>收费项目信息</h3>
                            请输入查询的小区编号：<input type="text" required><button class="btn bg-info ml-4" type="submit">提交</button ><button id="myBtn" class="btn btn-warning ml-5">添加</button><br>

                            <!-- 弹窗 -->
                            <div id="myModal" class="modal">

                                <!-- 弹窗内容 -->
                                <div class="modal-content">
                                    <form action="" method="post">
                                        <h3 class="text-center">新增收费项目信息 <span class="close">&times;</span></h3>


                                        <div class="card border mb-3 container  mt-2" style="max-width: 35rem;">
                                            <div class="card-header ">收费项目名称：<input type="text" required placeholder="输入收费项目名称" style="width: 100%;"></div>
                                            <div class="card-body">
                                                <p class="card-text">收费项目内容：<input type="text"  required placeholder="输入收费项目内容" style="width: 100%;"> </p>
                                            </div>
                                            <div class="card-footer">

                                            </div>
                                        </div>
                                        <button class="btn bg-info text-center" type="submit">提交</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card border mb-3 container  mt-2" style="max-width: 35rem;">
                                <div class="card-header text-center ">水费</div>
                                <div class="card-body">
                                    <p class="card-text">水费：1元/吨 </p>
                                </div>
                                <div class="card-footer">
                                    <button class="btn bg-warning">修改</button>
                                    <button class="btn bg-danger">删除</button>
                                </div>
                            </div>
                            <div class="card border mb-3 container  " style="max-width: 35rem;">
                                <div class="card-header text-center ">电费</div>
                                <div class="card-body">
                                    <p class="card-text">电费：1.5元/度 </p>
                                </div>
                                <div class="card-footer">
                                    <button class="btn bg-warning">修改</button>
                                    <button class="btn bg-danger">删除</button>
                                </div>
                            </div>
                            <div class="card border mb-3 container " style="max-width: 35rem;">
                                <div class="card-header text-center ">物业费</div>
                                <div class="card-body">
                                    <p class="card-text text-left">
                                        1、物业人员的工资、社保、福利等</br>
                                        2、共用部位、设施维护费用</br>
                                        3、清洁卫生费用</br>
                                        4、绿化养护费用</br>
                                        5、秩序维护费用</br>
                                        6、办公费</br>
                                        7、固定资产折旧费用</br>
                                        8、保险费</br>
                                    <p > 总计：1268元/年</p>
                                    </p>
                                </div>
                                <div class="card-footer">
                                    <button class="btn bg-warning">修改</button>
                                    <button class="btn bg-danger">删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="tab-pane container" id="userHistory-info">
                    <ul class="nav nav-pills ">
                        <li class="nav-item"><a href="#userHistory-info__select" class="nav-link active" data-toggle="pill">查询</a></li>
                        <li class="nav-item"><a href="#userHistory-info__delete" class="nav-link " data-toggle="pill">删除</a></li>
                    </ul>
                    <hr class="border border-dark">
                    <div class="tab-content">
                        <div class="tab-pane  active " id="userHistory-info__select">
                            <!--查询数据-->
                            <div style="height: 100%;width: 100%;margin:auto">
                                <div class="border border-info rounded m-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入查询的用户ID：<input type="text" required><button class="btn bg-info ml-2">提交</button><br>
                                        <table class="table">
                                            <thead>
                                            <th><td>用户ID</td>
                                            <td>用户姓名</td>
                                            <td>用户历史信息</td>
                                            <td>备注</td>
                                            </th>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="userHistory-info__delete">
                            <!--删除数据-->
                            <div style="height: 100%;width:100%;margin:auto">
                                <div class="border border-info rounded mb-4 p-4 text-center" style="background-color: rgba(240, 255, 255, 0.5)">
                                    <form action="#" method="post">
                                        请输入要删除的用户ID:<input class="m-4" type="text" >
                                        <button class="btn btn-danger  ml-2" type="submit">删除</button>
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
<script>
    // 获取弹窗
    var modal = document.getElementById('myModal');

    // 打开弹窗的按钮对象
    var btn = document.getElementById("myBtn");

    // 获取 <span> 元素，用于关闭弹窗
    var span = document.querySelector('.close');

    // 点击按钮打开弹窗
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // 点击 <span> (x), 关闭弹窗
    span.onclick = function() {
        modal.style.display = "none";
    }

    // 在用户点击其他地方时，关闭弹窗
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
<script type="text/javascript">

    function datechange(dates){
        var date = new Date(dates)
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' ';
        return Y+M+D;
    }



    $(function (){
        $("#searchregion").on("click",function (){
            let r=$("#regions").val();
            $.ajax({
                url:"selectregion",
                data:"regions="+r,
                dataType:"json",
                success:function (data) {
                    var region = "";
                    for (var i = 0; i < data.length; i++) {
                        region += "<tr>" + "<td>" + data[i].regionCode + "</td>" + "<td>" + data[i].regionName + "</td>" + "</tr>";
                    }
                    $("#regiontable").html(region);
                }
                })
        })
    })


    $(function (){
        $("#searchpropertymc").on("click",function (){
            let p=$("#propertymc").val();
            $.ajax({
                url:"selectpropertymc",
                data:"propertymc="+p,
                dataType:"json",
                success:function (data) {
                    var propertymc = "";
                    for (var i = 0; i < data.length; i++) {
                        propertymc += "<tr>" + "<td>" + data[i].propertyMcCode + "</td>" + "<td>" + data[i].propertyMcName + "</td>" + "</tr>";
                    }
                    $("#propertymctable").html(propertymc);
                }
            })
        })
    })


    $(function (){
        //#searchpropertymc  按钮id
        $("#searchpurpose").on("click",function (){
            //#propertymc 输入框ID 得到输入框的值
            let p=$("#purpose").val();
            $.ajax({
                url:"selectpurpose", //servlet 名
                data:"purpose="+p,  // 参数名  参数值
                dataType:"json",      //  返回值类型
                success:function (data) {  //
                    var purpose = "";
                    for (var i = 0; i < data.length; i++) {
                        purpose += "<tr>" + "<td>" + data[i].purposeCode + "</td>" + "<td>" + data[i].purposeName + "</td>" + "</tr>";
                    }
                    //#propertymctable    table的ID
                    //把json 值放进table 里
                    $("#purposetable").html(purpose);
                }
            })
        })
    })

    $(function (){
        $("#searchitem").on("click",function (){
            let k=$("#search_item_input").val();
            $.ajax({
                url:"selectitem",
                data:"itemCode="+k,
                dataType:"json",
                success:function (data){
                    $("#search_item_regionname").val(data.regionCode)
                    $("#search_item_name").val(data.itemName);
                    $("#search_item_address").val(data.itemAddress);
                    $("#search_item_area").val(data.area);
                    $("#search_item_propertymc").val(data.propertymcCode);
                    $("#search_item_note").val(data.note);
                    if (data.status==1){
                        $("#search_item_status").val("启用");
                    }else {
                        $("#search_item_status").val("停用");
                    }
                }
            })
        })
    })


    $(function () {
        $("#searchitem").on("click", function () {
            let k2 = $("#search_item_input").val();
            $.ajax({
                url: "selectitemusage",
                data: "itemCode=" + k2,
                dataType: "json",
                success: function (data) {
                    $("#search_item_purpose").val(data.pursposeName);
                    $("#search_item_purposenote").val(data.note);
                }
            })
        })
    })

    $(function (){
        $("#searchitem").on("click",function (){
            let k3=$("#search_item_input").val();
            $.ajax({
                url:"selectitemdepartment",
                data:"itemCode="+k3,
                dataType:"json",
                success:function (data){
                    if (data!=null) {
                        var bt=datechange(data.beginUseTime);
                        var et=datechange(data.endUseTime);
                        $("#search_item_department").val(data.departmentName);
                        $("#search_item_begintime").val(bt);
                        $("#search_item_endtime").val(et);
                        $("#search_item_departmentnote").val(data.note);
                    }
                }
            })
        })
    })

    $(function (){
        $("#search_building").on("click",function (){
            let k=$("#building_input").val();
            $.ajax({
              url:"selectbuilding",
              data:"buildingCode="+k,
              dataType:"json",
              success:function (data){
                  if(data!=null){
                      $("#search_building_region").val(data.regionCode);
                      $("#search_building_itemname").val(data.itemCode);
                      $("#search_building_propertymc").val(data.propertymcCode);
                      $("#search_building_name").val(data.buildingName);
                      $("#search_building_address").val(data.buildingAddress);
                      $("#search_building_floor").val(data.totalFloor);
                      $("#search_building_landpurpose").val(data.landPurpose);
                      $("#search_building_landno").val(data.landno);
                      $("#search_building_landarea").val(data.addressArea);
                      $("#search_building_usearea").val(data.useArea);
                      $("#search_building_rightpurpose").val(data.rightPurpose);
                      $("#search_building_lawowner").val(data.lawOwner);
                      $("#search_building_rightno").val(data.rightno);
                      $("#search_building_rightcardno").val(data.assetCardno);
                      $("#search_building_structure").val(data.buildingStructure);
                      $("#search_building_buyfrom").val(data.buyFrom);
                      $("#search_building_cost").val(data.cost);
                      $("#search_building_buyway").val(data.purchaseWay);
                      $("#search_building_buytime").val(datechange(data.buyOrRentTime));
                      $("#search_building_note").val(data.note);
                      $("#search_building_owner").val(data.owner);
                      $("#search_building_complitedtime").val(datechange(data.completedTime));
                      $("#search_building_lasttime").val(data.leftUsetime);
                      $("#search_building_beginusetime").val(datechange(data.beginUseTime));
                      $("#search_building_endusetime").val(datechange(data.endUseTime));
                      $("#search_building_totalarea").val(data.totalArea);

                  }
              }
            })
        })
    })

    $(function (){
        $("#search_building").on("click",function (){
            let k=$("#building_input").val();
            $.ajax({
                url:"selectbuildingusage",
                data:"buildingCode="+k,
                dataType:"json",
                success:function (data){
                    if(data!=null){
                        $("#search_building_purpose").val(data.purposeName);
                        $("#search_building_purposenote").val(data.note);
                    }
                }
            })
        })
    })

    $(function (){
        $("#search_building").on("click",function (){
            let k=$("#building_input").val();
            $.ajax({
                url:"selectbuildingaccess",
                data:"buildingCode="+k,
                dataType:"json",
                success:function (data){
                    if(data!=null){
                        $("#search_building_supplier").val(data.supplierName);
                        $("#search_building_averprice").val(data.averagePrice);
                        $("#search_building_begin_accesstime").val(datechange(data.accessBeginTime));
                        $("#search_building_end_accesstime").val(datechange(data.accessEndTime));
                        $("#search_building_price").val(data.accessPrice);
                        $("#search_building_accessnote").val(data.note);
                    }
                }
            })
        })
    })

    $(function (){
        $("#search_suite").on("click",function (){
            var p=$("#search_suite_input").val();

            $.ajax({
                url:"selectsuite",
                data:"suitecode="+p,
                dataType:"json",
                success:function (data){
                    if(data!=null) {
                        $("#search_suite_regionname").val(data.regionCode);
                        $("#search_suite_itemname").val(data.itemCode);
                        $("#search_suite_building").val(data.buildingName);
                        $("#search_suite_floor").val(data.floor);
                        $("#search_suite_suitecode").val(data.suiteCode);
                        $("#search_suite_owner").val(data.owner);
                        $("#search_suite_rightno").val(data.suiteLawNo);
                        $("#search_suite_asetno").val(data.suitePropertyCardno);
                        $("#search_suite_buildingarea").val(data.buildingArea);
                        $("#search_suite_averarea").val(data.averageArea);
                        $("#search_suite_usearea").val(data.useArea);
                        $("#search_suite_actualusearea").val(data.actualUseArea);
                        $("#search_suite_structure").val(data.roomStructure);
                        $("#search_suite_roomnum").val(data.roomNum);
                        $("#search_suite_note").val(data.note);
                        if(data.useStatus==1) {
                            $("#search_suite_usestatus").val("使用中");
                        }else{
                            $("#search_suite_usestatus").val("空闲");
                        }
                        if(data.activeStatus==1) {
                            $("#search_suite_active").val("启用");
                        }else{
                            $("#search_suite_active").val("禁用");
                        }
                    }
                }
            })

        })
    })

    $(function (){
        $("#search_suite").on("click",function (){
            var p=$("#search_suite_input").val();

            $.ajax({
                url:"selectsuiteusage",
                data:"suitecode="+p,
                dataType:"json",
                success:function (data){
                    if(data!=null){
                        $("#search_suite_purpose").val(data.purposeName);
                        $("#search_suite_purbetime").val(datechange(data.beginUseTime));
                        $("#search_suite_purendtime").val(datechange(data.endUseTime));
                        $("#search_suite_purnote").val(data.note);
                    }
                }
            })
        })
    })

    $(function (){
        $("#search_suite").on("click",function (){
            var p=$("#search_suite_input").val();

            $.ajax({
                url:"selectsuiteaccess",
                data:"suitecode="+p,
                dataType:"json",
                success:function (data){
                    if(data!=null){
                        $("#search_suite_accessprice").val(data.accessPrice);
                        $("#search_suite_accessbtime").val(datechange(data.accessBeginTime));
                        $("#search_suite_accessetime").val(datechange(data.accessEndTime));
                        $("#search_suite_accessaverprice").val(data.averagePrice);
                        $("#search_suite_accessnote").val(data.supplierCode);
                        $("#search_suite_supplier").val(data.note);
                    }
                }
            })
        })
    })






    function getregion(){
        $.ajax({
            url:"selectregion", //servlet 名
            data:"purpose="+"",  // 参数名  参数值
            dataType:"json",      //  返回值类型
            success:function (data) {  //

                var purpose = "";
                if (data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        purpose += "<option value=" + data[i].regionCode + "/" + data[i].regionName + ">" + data[i].regionName + "</option>";
                    }
                }

                if ($("#itemregion").empty()) {
                    $("#itemregion").append(purpose);
                }

                if ($("#itemregion2").empty()) {
                    $("#itemregion2").append(purpose);
                }

                if ($("#buildingregion").empty()) {
                    $("#buildingregion").append(purpose);
                }

                if ($("#buildingregion2").empty()) {
                    $("#buildingregion2").append(purpose);
                }

                if($("#suiteregion2").empty()){
                    $("#suiteregion2").append(purpose);
                }

                if($("#room_region").empty()){
                    $("#room_region").append(purpose);
                }
                if($("#room_region2").empty()){
                    $("#room_region2").append(purpose);
                }
            }
        })
    }


    function getpurpose(){
        $.ajax({
            url:"selectpurpose", //servlet 名
            data:"purpose="+"",  // 参数名  参数值
            dataType:"json",      //  返回值类型
            success:function (data) {  //

                var purpose = "";
                if (data!=null){
                    for (var i = 0; i < data.length; i++) {
                        purpose += "<option value="+data[i].purposeCode+"/"+data[i].purposeName +">"+data[i].purposeName+"</option>";
                    }
                }

                if ($("#itempurpose").empty()) {
                    $("#itempurpose").append(purpose);
                }

                if ($("#itempurpose2").empty()) {
                        $("#itempurpose2").append(purpose);
                }

                if($("#buildingpurpose").empty()){
                    $("#buildingpurpose").append(purpose);
                }

                if($("#buildingpurpose2").empty()){
                    $("#buildingpurpose2").append(purpose);
                }

                if($("#suitepurpose2").empty()){
                    $("#suitepurpose2").append(purpose);
                }
            }
        })
    }

    function getpropertymc(){
        $.ajax({
            url:"selectpropertymc", //servlet 名
            data:"propertymc="+"",  // 参数名  参数值
            dataType:"json",      //  返回值类型
            success:function (data) {  //

                var purpose = "";
                if (data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        purpose += "<option value=" + data[i].propertyMcCode + "/" + data[i].propertyMcName + ">" + data[i].propertyMcName + "</option>";
                    }
                }

                if($("#itempropertymc").empty()){
                    $("#itempropertymc").append(purpose);
                }

                if($("#itempropertymc2").empty()){
                    $("#itempropertymc2").append(purpose);
                }
            }
        })
    }

    function getdepartment(){
        $.ajax({
            url:"selectdepartment", //servlet 名
            data:"department="+"",  // 参数名  参数值
            dataType:"json",      //  返回值类型
            success:function (data) {  //
                var purpose = "";
                if(data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        purpose += "<option value=" + data[i].departmentCode + "/" + data[i].departmentName + ">" + data[i].departmentName + "</option>";
                    }
                }

                if($("#itemdepartment").empty()){
                    $("#itemdepartment").append(purpose);
                }

                if($("#itemdepartment2").empty()){
                    $("#itemdepartment2").append(purpose);
                }
            }
        })
    }

    function getitembyregion(){
        var region=$("#buildingregion").val();
        var strings = region.split("/");
        $.ajax({
            url:"getitembyregion",
            data:"region="+strings[0],
            dataType:"json",
            success:function (data){
                var p = "";
                if (data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        p += "<option value=" + data[i].itemCode + "/" + data[i].itemName + ">" + data[i].itemName + "</option>";
                    }
                }
                if ($("#buildingitem").empty()){
                    $("#buildingitem").append(p);
                }

                if($("#suiteitem2").empty()){
                    $("#suiteitem2").append(p);
                }
            }
        })
    }

    function getitembyregion2(){
        var region=$("#buildingregion2").val();
        var strings = region.split("/");
        $.ajax({
            url:"getitembyregion",
            data:"region="+strings[0],
            dataType:"json",
            success:function (data){
                var p = "";
                if (data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        p += "<option value=" + data[i].itemCode + "/" + data[i].itemName + ">" + data[i].itemName + "</option>";
                    }
                }
                if ($("#buildingitem2").empty()){
                    $("#buildingitem2").append(p);
                }

            }
        })
    }


    function getitembyregion_suite(){
        var region=$("#suiteregion2").val();
        var strings = region.split("/");
        $.ajax({
            url:"getitembyregion",
            data:"region="+strings[0],
            dataType:"json",
            success:function (data){
                var p = "";
                if (data!=null) {
                    for (var i = 0; i < data.length; i++) {
                        p += "<option value=" + data[i].itemCode + "/" + data[i].itemName + ">" + data[i].itemName + "</option>";
                    }
                }
                if($("#suiteitem2").empty()){
                    $("#suiteitem2").append(p);
                }
                if($("#suiteitem").empty){
                    $("#suiteitem").append(p);
                }
            }
        })
    }

    function getbuildingbyitem(){
        var item = $("#suiteitem2").val();
        var itemcode=item.split("/");
        $.ajax({
          url:"selectbuildingbyitem",
          data:"item="+itemcode[0],
          dataType:"json",
          success:function (data){
              if (data!=null){
                  var p="";
                  for (var i = 0; i < data.length; i++) {
                      p += "<option value=" + data[i].buildingCode + ">" + data[i].buildingName + "</option>";
                  }
                  if ($("#suitebuilding2").empty()) {
                      $("#suitebuilding2").append(p)
                  }
                  if ($("#suitebuilding").empty()) {
                      $("#suitebuilding").append(p)
                  }
              }
          }
        })
    }



    function getsupplier(){
        $.ajax({
            url:"getsupplier",
            dataType:"json",
            success:function (data){
                var p="";
                if(data!=null){
                    for(var i=0;i<data.length;i++) {
                        p += "<option value=" + data[i].supplierCode + "/" + data[i].supplierName + ">" + data[i].supplierName + "</option>";
                    }
                }
                if($("#buildingsupplier").empty()){
                    $("#buildingsupplier").append(p);
                }

                if($("#buildingsupplier2").empty()){
                    $("#buildingsupplier2").append(p);
                }

                if($("#suiteaccesscompany").empty()){
                    $("#suiteaccesscompany").append(p);
                }
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
