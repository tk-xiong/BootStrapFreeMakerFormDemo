<!DOCTYPE html >
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>教师列表</title>

        <!--菜鸟教程的链接-->
        <!--有需求可更换本地-->
        <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<div class="container">

    <div class="row">
        <div class="col-xs-6 col-sm-4">
            <div id="header-text">
                <h1 id="site-title">
                    <a href="http://blog.tk-xiong.com/" title="TK-Xiong&#039;s Blog" rel="home">联系方式收集</a>
                </h1>
                <p id="site-description">请在下方提交个人联系方式</p>
            </div>
        </div>

        <div class="col-xs-6 col-sm-6">
            <br/>
            <ul class="nav nav-tabs">
                <li class="active"><a href="#">Home</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Blog <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://blog.tk-xiong.com">Index</a></li>
                        <li><a href="http://blog.tk-xiong.com/archives/category/algorithm">Algorithm</a></li>
                        <li><a href="http://blog.tk-xiong.com/archives/category/code">Code</a></li>
                        <li><a href="http://blog.tk-xiong.com/archives/category/os">OS</a></li>
                        <li class="divider"></li>
                        <li><a href="http://blog.tk-xiong.com/archives/category/mylife">Others</a></li>
                    </ul>
                </li>

                <li><a href="http://oj.tmad.online">Online Judge</a></li>
                <li><a href="http://www.ctguqmx.com">QiMingXing</a></li>
                <li class="disabled"><a href="http://blog.tk-xiong.com">None</a></li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-sm-6">

            <br/>

            <form role="form-horizontal" role="form">

                <div class="form-group col-sm-12">
                    <label for="name" class="col-sm-2 control-label">
                        <button type="button"
                                class="btn btn-default"
                                data-container="body"
                                data-toggle="popover"
                                data-placement="left"
                                data-content="建议输入个人真实姓名">
                            姓名
                        </button>
                    </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" placeholder="请输入姓名" name="name">
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label for="email" class="col-sm-2 control-label">
                        <button type="button"
                                class="btn btn-default"
                                data-container="body"
                                data-toggle="popover"
                                data-placement="left"
                                data-content="建议使用tk-xiong.com邮箱">
                            邮箱
                        </button>
                    </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" placeholder="请输入邮箱" name="email">
                    </div>
                </div>

                <div class="form-group col-sm-3">
                    <div class="col-sm-offset-2 ">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 请打钩确认
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group col-sm-3 ">
                    <div class="col-sm-offset-1 col-sm-6">
                        <button type="submit" class="btn btn-default" onclick="addUser()">提交</button>
                    </div>
                </div>

            </form>
        </div>

        <div class="col-xs-6 col-sm-4">
            <table class="table table-striped table-bordered">
                <caption>提交的信息</caption>
                <thead>
                <tr>
                    <th> 姓名</th>
                    <th> 邮箱</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>测试</td>
                    <td>ceshi@tk-xiong.com</td>
                </tr>

                    <#list userInfoList as user>
                        <tr>
                            <td>${user.userName} </td>
                            <td>${user.userEmail}</td>
                        </tr>
                    </#list>

                </tbody>
            </table>
        </div>
    </div>

</div>

<script>
    $(function () {
        $("[data-toggle='popover']").popover();
    });
</script>

<script type="text/javascript">
    //添加用户
    function addUser() {
        var form = document.forms[0];
        form.action = "/addUser";
        form.method = "post";
        form.submit();
    }
</script>

</body>
</html>