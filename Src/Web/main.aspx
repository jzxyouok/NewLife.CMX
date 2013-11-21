﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="灌胶机,混合管,AB胶枪,点胶针筒,点胶针头" />
    <meta name="description" content="月无声电子设备有限公司坐落在交通方便的东莞市区,毗邻深圳、广州、佛山、惠州等城市。其主要产品有：双液灌胶机，精准双液点胶机，混合管，点胶机,AB胶枪，点胶针头，AB胶筒，点胶针筒，点胶针头，不锈钢压力桶。月无声的点胶设备适用于：环氧树脂，PU，双组份硅胶和其他双组份流体材料。" />
    <title>混合管,灌胶机,AB胶枪,点胶针筒,点胶针头 - 月无声</title>
    <link rel="stylesheet" type="text/css" href="<%= ResolveUrl("~/style/css1.css") %>" />
     <script type="text/javascript" src="<%= ResolveUrl("~/Scripts/jquery/jquery-1.9.1.min.js") %>" />
    <script type="text/javascript" src="<%= ResolveUrl("~/Scripts/javascript.js") %>"></script>
    <script type="text/javascript">
        (function ($) {
            $.fn.extend({
                "nav": function (con) {
                    var $this = $(this), $nav = $this.find('.switch-tab'), t = (con && con.t) || 3000, a = (con && con.a) || 500, i = 0, autoChange = function () {
                        $nav.find('a:eq(' + (i + 1 === 5 ? 0 : i + 1) + ')').addClass('current').siblings().removeClass('current');
                        $this.find('.event-item:eq(' + i + ')').css('display', 'none').end().find('.event-item:eq(' + (i + 1 === 5 ? 0 : i + 1) + ')').css({
                            display: 'block',
                            opacity: 0
                        }).animate({
                            opacity: 1
                        }, a, function () {
                            i = i + 1 === 5 ? 0 : i + 1;
                        }).siblings('.event-item').css({
                            display: 'none',
                            opacity: 0
                        });
                    }, st = setInterval(autoChange, t);
                    $this.hover(function () {
                        clearInterval(st);
                        return false;
                    }, function () {
                        st = setInterval(autoChange, t);
                        return false;
                    }).find('.switch-nav>a').bind('click', function () {
                        var current = $nav.find('.current').index();
                        i = $(this).attr('class') === 'prev' ? current - 2 : current;
                        autoChange();
                        return false;
                    }).end().find('.switch-tab>a').bind('click', function () {
                        i = $(this).index() - 1;
                        autoChange();
                        return false;
                    });
                    return $this;
                }
            });
        }(jQuery));

        $(document).ready(function () {
            $('.hot-event').nav({
                t: 2000,	//轮播时间
                a: 1000  //过渡时间
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrap">
        <div id="wrpper">
            <div class="header">
                <div id="logo">
                    <h1>东莞市月无声实业</h1>
                </div>
                <div class="mod">
                    <ul>
                        <li><a href="#" target="_blank">点胶设备</a></li>
                        <li><a href="#" target="_blank">智能自控</a></li>
                        <li><a href="#" target="_blank">化工胶水</a></li>
                        <li><a href="#" target="_blank">五金模具</a></li>
                    </ul>
                    <form>
                        <input name="" type="text" />
                        <input name="搜索" type="submit" class="botton" id="搜索" value="搜索" />
                    </form>
                </div>
                    <div class="nav">
                    <div class="parent">
                        <ul>
                            <li class="index"><a href="main.html" onclick="change_bg(this)">网站首页</a></li>
                            <li class="about"><a href="about.html" onclick="change_bg(this)">关于月无声</a></li>
                            <li class="product"><a href="pro_ser.html" onclick="change_bg(this)">产品与服务</a></li>
                            <li class="com"><a href="culture.html" onclick="change_bg(this)">企业文化</a></li>
                            <li class="recruitment"><a href="employ.html" onclick="change_bg(this)">人才招聘</a></li>
                            <li class="new"><a href="news.html" onclick="change_bg(this)">新闻中心</a></li>
                            <li class="forum"><a href="#" onclick="change_bg(this)">技术论坛</a></li>
                            <li class="shop"><a href="#" onclick="change_bg(this)">月无声商城</a></li>
                        </ul>
                    </div>
                   <div class="child">
                        <ul class="about">
                            <li><a href="#">公司简介</a></li>
                            <li><a href="#">部门介绍</a></li>
                            <li><a href="#">公司荣誉</a></li>
                            <li><a href="#">联系我们</a></li>
                        </ul>
                        <ul class="product">
                            <li id="product_01"><a href="#">点胶设备</a>
                                <dl>
                                    <dt><a href="#">混合管</a></dt>
                                    <dt><a href="#">点胶机</a></dt>
                                    <dt><a href="#">点胶针头</a></dt>
                                    <dt><a href="#">压力桶</a></dt>
                                    <dt><a href="#">AB胶筒</a></dt>
                                    <dt><a href="#">胶枪</a></dt>
                                    <dt><a href="#">点胶阀门</a></dt>
                                    <dt><a href="#">转接头</a></dt>
                                    <dt><a href="#">密封件</a></dt>
                                </dl>
                            </li>
                            <li><a href="#">智能自动化</a>
                                <dl >
                                    <dt><a href="#">自动化设备</a></dt>
                                    <dt><a href="#">阿波罗智能控制器</a></dt>
                                    <dt><a href="#">阿波罗物联网网关</a></dt>                                  
                                </dl>
                            </li>
                            <li><a href="#">化工胶水</a>
                                <dl>
                                    <dt><a href="#">水性万能胶</a></dt>
                                    <dt><a href="#">单组份水性喷胶</a></dt>
                                    <dt><a href="#">双组份水性喷胶</a></dt>
                                    <dt><a href="#">手袋专用环保喷胶</a></dt>
                                                                      
                                </dl>
                            </li>
                            <li><a href="#">五金模具</a>
                                <dl >
                                    <dt><a href="#">塑料</a></dt>
                                    <dt><a href="#">塑料</a></dt>
                                    <dt><a href="#">塑料</a></dt>                                  
                                </dl>
                            </li>
                        </ul>
                        <ul class="new">
                            <li><a href="#">公司新闻</a></li>
                            <li><a href="#">行业新闻</a></li>
                            <li><a href="#">咨询中心</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div id="index_1">
                <div class="mod1">
                    <div class="box">
                        <a href="#" target="_blank">
                            <img src="images/mod1.jpg" width="223" height="123" /></a>
                    </div>
                    <div class="int">专业生产各种点胶设备、耗材等，并提供非标定做。常规产品有:
                        <a href="#">混合管</a>
                        <a href="#">点胶机</a>
                        <a href="#">胶枪</a>
                        <a href="#">压力桶</a>
                        <a href="#">点胶针头</a>
                        <a href="#">AB胶筒</a>
                        <a href="#">转接头</a>
                        <a href="#">&gt;&gt;更多...</a>
                    </div>
                </div>
               <div class="flash">
                  <div class="hot-event">
		             <div class="switch-nav"><a href="#" onclick="return false;" class="prev"><i class="ico i-prev">上一个</i></a><a href="#" onclick="return false;" class="next"><i class="ico i-next">下一个</i></a></div>
	                 <div class="event-item"><a href="#"><img src="images/flash/1.jpg"  style="width: 710px; height: 293px;" alt="点胶设备" /></a></div>
		             <div class="event-item"><a href="#"><img src="images/flash/1.jpg"  width="710" height="293" alt="阿波罗声控" /></a></div>
		             <div class="event-item"><a href="#"><img src="images/flash/1.jpg"  width="710" height="293" alt="化工胶水" /></a></div>
		             <div class="event-item"><a href="#"><img src="images/flash/1.jpg"  width="710" height="293" alt="五金模具" /></a></div>
		             <div class="event-item"><a href="#"><img src="images/flash/1.jpg"  width="710" height="293" alt="月无声" /></a></div>
		             <div class="switch-tab">
			             <a href="javascript:void(0);" onclick="return false;" class="current">1</a>
			             <a href="javascript:void(0);" onclick="return false;">2</a>
			             <a href="javascript:void(0);" onclick="return false;">3</a>
			             <a href="javascript:void(0);" onclick="return false;">4</a>
			             <a href="javascript:void(0);" onclick="return false;">5</a>
		              </div>
                   </div>
                </div>
                        
            </div>
            <div id="index_2">
                <div class="mod2">
                    <div class="box">
                        <a href="" target="_blank">
                            <img src="images/mod2.jpg" width="223" height="123" /></a>
                    </div>
                    <div class="int">智能自动化设备是我公司自主研发生产的产品，主要有：
                        <a href="#">“阿波罗”工业控制器</a><br/>
                        <a href="#">物联网网关</a>
                        <a href="#">自动化设备</a>
                        <a href="#">&gt;&gt;更多...</a>
                    </div>
                </div>
                <div class="mod3">
                    <div class="box">
                        <a href="" target="_blank">
                            <img src="images/mod3.jpg" width="223" height="123" /></a>
                    </div>
                    <div class="int">水性喷胶与油性喷胶相比具有环保无毒、耐高温、防火区静电，无味零voc等优点，水性喷胶有：
                        <a href="#">水性万能胶</a>
                        <a href="#">单组份水性喷胶</a>
                        <a href="#">&gt;&gt;更多...</a>
                    </div>
                </div>
                <div class="mod4">
                    <div class="box">
                        &nbsp;</div>
                    <div class="int">简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介</div>
                </div>
            </div>
            <div id="articleContent">
                <div class="text">
                    <div class="more"><a target="_blank" href="<%= ResolveUrl("~/List/SX/2/ArticleModelList.aspx") %>">&gt;&gt;更多新闻</a></div>

                    <ul>
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                    </ul>

                </div>
                <div class="text2">
                    <div class="more2"><a href="<%= ResolveUrl("~/List/SX/2/ArticleModelList.aspx") %>">&gt;&gt;更多新闻</a></div>

                    <ul>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                        <li>1</li>
                    </ul>

                </div>
            </div>
            <div id="foot">
                <div class="foot_nav">
                    <div class="g1"><a href="#">返回首页</a> | <a href="#">联系我们</a> | <a href="#">友情链接</a> | <a href="#">技术论坛</a> | <a href="#">月无声商城</a> |</div>
                </div>
                <div class="address">
                    版权所有 © 2008-2012 东莞市月无声电子设备有限公司 粤ICP备09218017号<br />

                    <br />
                    地址：东莞市高埗镇冼沙村广场北路宝源工业区  电话：0769-23107897 0769-23107080
                </div>
            </div>

        </div>
    </div>
</form>
</body>
</html>
