<%@ page import="model.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.6/umd/popper.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery-1.8.3.min.js"></script>
    <link  rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/myuser.css">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_2294476_nte46f53ki8.css">
    <link rel="stylesheet" href="../css/animate.min.css">
</head>
<body>
    <div class="entire d-flex">
        <div class="entire_left">
            <a href="#"class="top"><i class="iconfont icon-weibiaoti-_huabanfuben"style="color:Cyan"></i>物业服务</a>&nbsp;&nbsp;
            <div class="users text-center"><i class="iconfont icon-gerenyonghutouxiang2 text-dark"></i></div>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item px-2"><a class="nav-link active text-dark" data-toggle="pill" href="#head"><i class="iconfont icon-shouye text-dark"></i>&nbsp;&nbsp;首页</a></li>
                <li class="nav-item px-2"><a class="nav-link text-dark" data-toggle="pill" href="#pay_fee"><i class="iconfont icon-shenghuojiaofei text-dark"></i>&nbsp;&nbsp;缴费</a></li>
                <li class="nav-item px-2"><a class="nav-link text-dark" data-toggle="pill" href="#rent"><i class="iconfont icon-zulin text-dark"></i>&nbsp;&nbsp;租赁申请</a></li>
                <li class="nav-item px-2"><a class="nav-link text-dark" data-toggle="pill" href="#repair"><i class="iconfont icon-weixiu1 text-dark"></i>&nbsp;&nbsp;物品报修</a></li>
                <li class="nav-item px-2"><a class="nav-link text-dark" data-toggle="pill" href="#message"><i class="iconfont icon-xiaoxi text-dark"></i>&nbsp;&nbsp;查看消息</a></li>
                <li class="nav-item px-2"><a class="nav-link text-dark" data-toggle="pill" href="#other"><i class="iconfont icon-qitawenti text-dark"></i>&nbsp;&nbsp;其他杂项</a></li>
            </ul>
        </div>
        <div class="entire_right flex-grow-1">
            <div class="entire_right__logininfo">
                <!-- 读取用户名 --><div class="entire__top1">
               <a href="javascript:location.reload()"><i class="iconfont icon-shuaxin"></i></a></div>
                <%
                    Employee user = (Employee)session.getAttribute("user");
                %>
                <div class="timee">
                    <h6 id="t" class="float-right"><span></span>年<span></span>月<span></span>日<span></span>时<span></span>分<span></span>秒</h6></div>
                <div class="entire__top2">
                    <div class="float-right mr-2">
                        <a class="float-right"href="exit">安全退出</a>
                        <i class="iconfont icon-yonghutouxiang float-right"></i>
                        <p class="float-right"><%if (user!=null){out.print(user.getName());}else{response.sendRedirect("../user_login.jsp");}%></p>
                    </div>
                </div>
            </div>

            <div class=" entire_right__down border">
                <div class="tab-content">
                    <div  class="entire_right__head tab-pane fade show active" id="head">
                        <div  class="entire_right__heada">
                            <div class="entire_right__head1  rounded animated bounceInLeft">
                                <div class="mt-2 ml-3 float-left text-secondary">我的投诉</div>
                                <a href="#" class="float-right mt-2 mr-2"><i class="iconfont icon-wentifankui text-primary"></i></a>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <div class="up__my ml-3 mt-2 mb-2 text-secondary float-left">3个</div>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <p class="mt-1 ml-3 text-secondary float-left">总投诉数量</p>
                                <p class=" mt-1 mr-2 text-secondary float-right">41个</p>
                            </div>
                            <div class="entire_right__head2 rounded animated bounceInUp">
                                <div class="mt-2 ml-3 float-left text-secondary">我的维修</div>
                                <a href="#" class="float-right mt-2 mr-2"><i class="iconfont icon-wentifankui text-primary"></i></a>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <div class="up__my ml-3 mt-2 mb-2 text-secondary float-left">2个</div>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <p class="mt-1 ml-3 text-secondary float-left">总维修数量</p>
                                <p class=" mt-1 mr-2 text-secondary float-right">36个</p>
                            </div>
                            <div class="entire_right__head3 rounded animated bounceInDown">
                                <div class="mt-2 ml-3 float-left text-secondary">我的账单</div>
                                <a href="#" class="float-right mt-2 mr-2"><i class="iconfont icon-wentifankui text-primary"></i></a>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <div class="up__my ml-3 mt-2 mb-2 text-secondary float-left">4个</div>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <p class="mt-1 ml-3 text-secondary float-left">总账单数量</p>
                                <p class=" mt-1 mr-2 text-secondary float-right">66个</p>
                            </div>
                            <div class="entire_right__head4 rounded animated bounceInRight">
                                <div class="mt-2 ml-3 float-left text-secondary">我的信息</div>
                                <a href="#" class="float-right mt-2 mr-2"><i class="iconfont icon-wentifankui text-primary"></i></a>
                                <div class="border-bottom mt-1 clearfix"></div>
                                <div class="up__me ml-3 mt-2 mb-2 text-secondary float-left">手机号：<br> <%if (user!=null){if(user.getPhone()!=null){out.print(user.getPhone());}else{out.print("未完善个人信息");}}%></div>
                                <div class="border-bottom mt-2 clearfix"></div>
                                <p class="up__me mt-1 ml-3 text-secondary  text-center"><a href="#"><span class="badge badge-primary badge-pill text-center">修改</span></a></p>
                            </div>
                        </div>
                        <div class="entire_right__headb  border  rounded animated bounceIn">
                            <div class="entire_right__head5 rounded animated bounceInRight text-center">
                                <div class="mt-n3"><a href="#" ><i class="iconfont icon-tousuchuli text-danger"></i></a></div>
                                <p class="text-secondary mt-n4">新投诉</p>
                            </div>
                            <div class="entire_right__head6 rounded animated bounceInUp text-center">
                                <div class="mt-n2"><a href="#" ><i class="iconfont icon-weixiu text-primary"></i></a></div>
                                <p class="text-secondary mt-n3">新维修</p>
                            </div>
                            <div class="entire_right__head7 rounded animated bounceInDown text-center">
                                <div class="mt-n1"><a href="#" ><i class="iconfont icon-zhangdan"style="color:	Cyan"></i></a></div>
                                <p class="text-secondary mt-n2">新账单</p></div>
                            <div class="entire_right__head8 rounded animated bounceInLeft text-center">
                                <div class="mt-n1"><a href="#" ><i class="iconfont icon-xiugaimima"style="color:#FFA500"></i></a></div>
                                <p class="text-secondary mt-n2">改密码</p></div>
                        </div>
                        <div class="entire_right__head9 rounded animated bounceInRight">
                            <div class="board">查看公告</div>
                            <div class="ml-5">
                                <ol>
                                    <li><a href="" class=" text-dark"data-toggle="modal"data-target="#modala">装修停工通知</a></li>
                                    <li><a href="" class=" text-dark"data-toggle="modal"data-target="#modalb">请各社区居民文明溜犬</a></li>
                                    <li><a href="" class=" text-dark"data-toggle="modal"data-target="#modalc">招聘物业保洁员</a></li>
                                </ol>
                            </div>
                        </div>
                        <div class="modal fade" id="modala">
                            <div class="modal-dialog modal-dialog-centered"style="width:300px">
                                <div class="modal-content modal11">
                                    <div class="modal-header">
                                        <h5 class="modal-title">
                                            装修停工通知
                                        </h5>
                                        <button type="button" class="close" data-dismiss="modal">
                                            &times;
                                            </button>
                                    </div>
                                    <div class="modal-body">
                                        春节假期将至，为了让小区业主度过一个愉快、安全的假期，我公司现将休假期间装修。<br>
                                        春节放假期间(2021.1.25—2021.2.18)，严禁装修施工队进场装修施工，之前正在装修的住户请施工人员于2021年2月14日18:00前离场，收假后方可进。
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="modalb">
                            <div class="modal-dialog modal-dialog-centered"style="width:400px">
                                <div class="modal-content modal12">
                                    <div class="modal-header">
                                        <h5 class="modal-title">
                                            文明遛狗
                                        </h5>
                                        <button type="button" class="close" data-dismiss="modal">
                                            &times;
                                            </button>
                                    </div>
                                    <div class="modal-body">
                                        <br><br><br><br><br><br><br>
                                        <p class="p1">如何文明养狗？</p>
                                        <p>请从以下几个方面去努力:<br>
                                            无论狗温顺与否,当您路经他人时,请拽紧牵引帯!
                                            这样不仅可以避免走失、被盗、打斗中毒、车祸等种种悲剧,对怕狗的路人
                                            也是一种尊重。很多人对狗的行为不了解,从而造成误会,误解了狗狗的热情,
                                            继而由恐惧变为痛恨!不要带狗坐公交车,以及不允许狗狗进入的公场合。</p>
                                    </div>
                                </div>
                            </div>
                        </div><div class="modal fade" id="modalc">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content modal13">
                                <div class="modal-header">
                                    <h5 class="modal-title">
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;
                                        </button>
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="entire_right__head10 rounded animated bounceInUp">
                            <div class="life">生活小百科</div>
                            <div class="ml-5">
                                <ol>
                                    <li> <a href="" class=" text-dark">电梯故障小常识</a></li>
                                    <li><a href="" class=" text-dark">燃气使用小常识</a></li>
                                    <li><a href="" class=" text-dark">急救小常识</a></li>
                                    <li><a href="" class=" text-dark">雪天出行，注意防滑</a></li>
                                </ol>
                            </div>
                        </div>
                        <div class="entire_right__head11 rounded animated bounceInUp">
                            <div class="party">党建活动</div>
                            <div class="ml-5">
                                <ol>
                                    <li> <a href="" class=" text-dark">执政能力建设</a></li>
                                    <li><a href="" class=" text-dark">保持和发展党的先进性</a></li>
                                    <li><a href="" class=" text-dark">深入开展党风廉政建设和反腐败斗争</a></li>
                                </ol>
                            </div></div>
                    </div>
                    <div  class="tab-pane fade rent" id="rent">
                        <p>
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">租房申请表</button>
                        </p>
                        <div class="rent_up w-100">
                            <div class="rent_up__form collapse" id="multiCollapseExample2">
                                <div class="card card-body text-center w-100">
                                    <form action="creatdormitory" id="form1">
                                        <table class="table table-bordered w-100">
                                            <caption>租赁申请表</caption>
                                            <tbody>
                                            <tr>
                                                <td>申请人姓名：</td><td><%if (user!=null){out.print(user.getName());}%></td>
                                                <td>申请人身份证：</td><td><input required name="id" type="text"class="border border-dark rounded"></td>
                                                <td>区域：</td>
                                                <td><select name="region" id="region" onfocus="getregion()" onclick="getitembyregion()" >
                                                    <option disabled>选择区域</option>
                                                </select></td>
                                                <td>小区：</td>
                                                <td><select name="item" id="item" onclick="getbuildingbyitem()" >
                                                    <option disabled>选择小区</option>
                                                </select>
                                                </td>

                                            </tr>
                                            <tr> <td>楼栋：</td>
                                                <td><select name="building" id="building" onclick="getsuitebybuilding()">
                                                    <option disabled>选择楼栋</option>
                                                </select>
                                                </td>
                                                <td>套房：</td>
                                                <td><select name="suite" id="suite" onclick="getroombysuite()">
                                                    <option disabled>选择套房</option>
                                                </select></td>
                                                <td>房间：</td>
                                                <td><select name="room" id="roomm" onclick="getbunksbyroomcode()">
                                                    <option disabled>选择房间</option>
                                                </select></td>
                                                <td>床位：</td>
                                                <td><select name="bed" id="bed">
                                                    <option disabled>选择床位</option>
                                                </select></td>
                                            </tr>
                                            <tr>
                                                <td colspan="8">
                                                    <center><input type="submit" value="确认" style="color:#ff7e00"></center></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="rent_down">
                            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="6"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="7"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="8"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="9"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="10"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="11"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="12"></li>
                                </ol>
                                <div class="carousel-inner w-100">
                                    <div class="carousel-item active">
                                        <img src="../images/a3.jpg" class="d-block w-100" alt="2">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a2.jpg" class="d-block w-100" alt="3">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a4.jpg" class="d-block w-100" alt="4">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a5.jpg" class="d-block w-100" alt="5">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a6.jpg" class="d-block w-100" alt="6">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a7.jpg" class="d-block w-100" alt="7">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a8.jpg" class="d-block w-100" alt="8">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a9.jpg" class="d-block w-100" alt="9">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a10.jpg" class="d-block w-100" alt="10">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a11.jpg" class="d-block w-100" alt="11">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../images/a12.jpg" class="d-block w-100" alt="12">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                    </div>

                    </div>
                    <div  class="tab-pane fade pay_fee" id="pay_fee">
                        <div class="location ml-2 border-bottom">当前位置：<span>缴费</span></div>
                        <div class="pay_top float-left mt-3 ml-2">缴费日期<input type="text"></div>
                        <div class="border ml-5 float-left rounded mt-3"><a href="#" class="pay__top1"><i class="iconfont icon-ziyuan"style="color:	Cyan">搜索</i></a></div>
                        <div class="pay_down">
                            <from>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>发布时间</th>
                                        <th>单价</th>
                                        <th>总金额</th>
                                        <th>类型</th>
                                        <th>缴费单状态</th>
                                        <th>操作</th>
                                    </tr>
                                    <tbody>
                                    <tr>
                                        <td><input type="text"  class="border-0"></td>
                                        <td><input type="text" class="border-0"></td>
                                        <td><input type="text" class="border-0"></td>
                                        <td>
                                            <input type="text" class="border-0">
                                        </td>
                                        <td>
                                            <div class="float-left" id="saveSearchIdd2" style="display:block;"><span class="badge badge-danger badge-pill">未缴费</span> </div>
                                        </td>
                                        <td>
                                            <div class="pay__top1 float-left">
                                                <button class="btn"type="button"data-toggle="modal"data-target="#modal1">
                                    <span class="badge badge-warning badge-pill">
                                       <i class="iconfont icon-weibiaoti--">缴费</i>
                                    </span>
                                                </button>
                                                <div class="modal fade"id="modal1">
                                                    <div class="modal-dialog modal-dialog-centered"style="width: 350px;">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title"id="modaltitle">
                                                                    <nav class="nav nav-pills">
                                                                        <a href="#zhifubao" class="nav-link active" data-toggle="pill">支付宝支付</a>
                                                                        <a href="#weixin"class="nav-link" data-toggle="pill">微信支付</a>
                                                                    </nav>
                                                                </h5>
                                                                <button class="close del"type="button"data-dismiss="modal"><span>&times;</span></button>
                                                            </div>

                                                            <div class="modal-body">
                                                                <div class="zhifu tab-content">
                                                                    <div class="tab-pane active tab-pane1 "id="zhifubao"style="width: 320px; height: 450px">
                                                                        <img src="../images/b8.jpg" alt="#" class="img-fliud rounded">
                                                                    </div>
                                                                    <div class="tab-pane tab-pane2 "id="weixin"style="width: 320px; height: 450px">
                                                                        <img src="../images/b7.jpg" alt="#" class="img-fliud rounded">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </td>
                                    </tr>
                                    </tbody>
                                    </thead>
                                </table>
                            </from>
                        </div>
                    </div>

                    <div  class="tab-pane fade repair" id="repair">
                        <div class="location1 ml-2 border-bottom">当前位置：<span>物品报修</span></div>
                        <div class="float-right mt-3">
                            <button class="btn"type="button"data-toggle="modal"data-target="#modal4">
                  <span class="badge badge-primary badge-pill">
                  <i class="iconfont icon-xinzeng-">新增维修</i>
               </span>
                            </button>
                            <form method="post" action="" class="form-horizontal" role="form" id="form_data" submit="return check_form()" style="margin: 20px;">
                                <div class="modal fade" id="modal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="myModalLabel">
                                                    新增维修内容
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    &times;
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="form-horizontal" role="form" action="repairlist">
                                                    <div class="form-group">
                                                        <label for="user_id" class="col-sm-3 control-label">用户名</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="user_id" name="username" value="" disabled>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="lastname" class="col-sm-3 control-label">维修时间</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" name="" value="" id="" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="remark" class="col-sm-3 control-label">维修内容</label>
                                                        <div class="col-sm-9">
                                           <textarea  class="form-control bg-light"  name="question" value="{remark}" id="remark"
                                                      placeholder="维修内容">
                                           </textarea>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    提交
                                                </button><span id="tip"> </span>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal -->
                                </div>
                            </form>

                        </div>
                        <div class="repair_down">
                            <from>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>上报人</th>
                                        <th>维修时间</th>
                                        <th>维修内容</th>
                                        <th>维修结果</th>
                                        <th>操作</th>
                                    </tr>
                                    <tbody>
                                    <tr>
                                        <td><input type="text"readonly class="border-0"></td>
                                        <td><input type="text"readonly class="border-0"></td>
                                        <td>
                                            <textarea name="" id="" class="border-0"readonly></textarea>
                                        </td>
                                        <td>
                                            <div class="float-left">
                                                <span class="badge badge-success badge-pill">已维修</span></div>
                                        </td>
                                        <td>
                                            <div class="repair__top1 float-left">
                                                <button class="btn"type="button"data-toggle="modal"data-target="#modal3">
                                 <span class="badge badge-danger badge-pill">
                                    <i class="iconfont icon-quxiaochuli-">取消</i>
                                 </span>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                    </thead>
                                </table>
                            </from>
                        </div></div>
                    <div  class="tab-pane fade message" id="message">
                        <div class="location m-2 border-bottom">当前位置：<span class="message_w">消息查看</span></div>
                        <div class="message_top float-left m-3"><input class="rounded" type="text"placeholder="请输入标题"></div>
                        <div class="border ml-5 float-left rounded mt-3 mb-3"><a href="#" class="message__top1"><i class="iconfont icon-ziyuan"style="color:	Cyan">搜索</i></a></div>
                        <div class="messagey_down">
                            <from>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>标题</th>
                                        <th>内容</th>
                                        <th>发布日期</th>
                                    </tr>
                                    <tbody>
                                    <tr>
                                        <td><input type="text"  class="border-0"></td>
                                        <td><textarea name="" id=""class="border-0 text-truncate"></textarea></td>
                                        <td><input type="text" class="border-0"></td>
                                    </tr>
                                    </tbody>
                                    </thead>
                                </table>
                            </from>
                        </div></div>
                    <div  class="tab-pane fade" id="other">其他杂项</div>
                </div>
            </div><div class=" downn fixed-bottom float-left justify-content-between text-center">&copy;东华理工大学项目36 all rights reserved</div>
        </div>
    </div>

</body>


<script type="text/javascript">
    var ss=document.getElementById('t').getElementsByTagName('span');
    function changetime(){
        var time=new Date();
        ss[0].innerHTML=time.getFullYear();
        ss[1].innerHTML=time.getMonth()+1;
        ss[2].innerHTML=time.getDate();
        ss[3].innerHTML=time.getHours();
        ss[4].innerHTML=time.getMinutes();
        ss[5].innerHTML=time.getSeconds();
    }
    changetime();
    setInterval(function(){
        changetime();
    },1000)


    function getregion(){
        $.ajax({
            url:"getregion",
            dataType:"json",
            type:"post",
            success:function (data){
                var region="";
                if (data!=null){
                    for (var i=0;i<data.length;i++) {
                        region += "<option value=" + data[i].regionCode + ">" + data[i].regionName + "</option>";
                    }
                }else {
                    region+="<option disabled>-请选择-</option>";
                }

                if ($("#region").empty()){
                    $("#region").append(region);
                }

                var p="<option disabled>-请选择-</option>";

                if ($("#building").empty()) {
                    $("#building").append(p);
                }

                if ($("#suite").empty()) {
                    $("#suite").append(p);
                }

                if ($("#room").empty()) {
                    $("#room").append(p);
                }

                if ($("#bed").empty()){
                    $("#bed").append(p);
                }

            }
        })
    }



    function getitembyregion(){
        var region=$("#region").val();
        $.ajax({
            url:"getitembyregion",
            data:"regioncode="+region,
            dataType:"json",
            success:function (data){
                var item="";
                if (data!=null){
                    for (var i=0;i<data.length;i++) {
                        item += "<option value=" + data[i].itemCode + ">" + data[i].itemName + "</option>";
                    }
                }else{
                    item+="<option disabled>-请选择-</option>";
                }

                if ($("#item").empty()){
                    $("#item").append(item);
                }

                var p="<option disabled>-请选择-</option>";

                if ($("#building").empty()) {
                    $("#building").append(p);
                }

                if ($("#suite").empty()) {
                    $("#suite").append(p);
                }
                if ($("#roomm").empty()) {
                    $("#roomm").append(p);
                }

                if ($("#bed").empty()){
                    $("#bed").append(p);
                }

            }
        })
    }



    function getbuildingbyitem(){
        var region=$("#region").val();
        var item=$("#item").val();
        $.ajax({
            url:"getbuildingbyitem",
            data:"regioncode="+region+"&itemcode="+item,
            dataType:"json",
            success:function (data){
                var building="";
                if (data!=null){
                    for (var i=0;i<data.length;i++) {
                        building += "<option value=" + data[i].buildingCode + ">" + data[i].buildingName + "</option>";
                    }
                }else{
                    building+="<option disabled>-请选择-</option>";
                }

                if ($("#building").empty()){
                    $("#building").append(building);
                }

                var p="<option disabled>-请选择-</option>";


                if ($("#suite").empty()) {
                    $("#suite").append(p);
                }

                if ($("#roomm").empty()) {
                    $("#roomm").append(p);
                }

                if ($("#bed").empty()){
                    $("#bed").append(p);
                }
            }
        })
    }




    function getsuitebybuilding(){
        var region=$("#region").val();
        var item=$("#item").val();
        var building=$("#building").val();
        $.ajax({
            url:"getsuitebybuilding",
            data:"buildingcode="+building+"&itemcode="+item+"&regioncode="+region,
            dataType:"json",
            success:function (data){
                var suite="";
                if (data!=null){
                    for (var i=0;i<data.length;i++) {
                        suite += "<option value=" + data[i].suiteCode + ">" + data[i].suiteName + "</option>";
                    }
                }else{
                    suite+="<option disabled>-请选择-</option>";
                }

                if ($("#suite").empty()){
                    $("#suite").append(suite);
                }

                var p="<option disabled>-请选择-</option>";

                if ($("#roomm").empty()) {
                    $("#roomm").append(p);
                }

                if ($("#bed").empty()){
                    $("#bed").append(p);
                }

            }
        })
    }



    function getroombysuite(){
        var region=$("#region").val();
        var item=$("#item").val();
        var building=$("#building").val();
        var suite=$("#suite").val();
        $.ajax({
            url:"getroombysuite",
            data:"suitecode="+suite+"&buildingcode="+building+"&itemcode="+item+"&regioncode="+region,
            dataType:"json",
            success:function (data){
                var room="";
                if (data!=null){
                    for (var i=0;i<data.length;i++) {
                        room += "<option value=" + data[i].roomCode + ">" + data[i].roomName + "</option>";
                    }
                }else {
                    room+="<option disabled>-请选择-</option>";
                }

                if ($("#roomm").empty()){
                    $("#roomm").append(room);
                }
            }
        })
    }



    function getbunksbyroomcode() {
        var room=$("#roomm").val();
        $.ajax({
            url:"getbunksbyrooms",
            data:"roomcode="+room,
            dataType:"json",
            success:function (data){
                var bunk="";
                if (data!=null){
                    for(var i=0;i<data.length;i++) {
                        bunk += "<option value=" + data[i].bunkCode +">" + data[i].bunkName + "</option>";
                    }
                }

                if ($("#bed").empty()){
                    $("#bed").append(bunk);
                }
            }
        })
    }




    function reflash_history(){
        history.forward(1);
    }

    reflash_history();
</script>

</html>
