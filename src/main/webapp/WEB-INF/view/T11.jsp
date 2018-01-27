<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="com.task.model.Category_" %>
<!--相当于response.setContentType("text/html; charset=UTF-8"); 通知浏览器以UTF-8进行中文解码   导入jar包-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@taglib prefix="" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<tiles:insertDefinition name="t11.classic_act">
    <tiles:putAttribute name="T11">
        <html>
        <div class="container">
            <div class="nav-title">首页&gt;职业</div>
            <div class="nav-bar">
                <span class="">方向：</span>
                <a class="nav-bar-a a-selected" href="">全部</a>
                <a class="nav-bar-a" href="">前端开发</a>
                <a class="nav-bar-a" href="">后端开发</a>
                <a class="nav-bar-a" href="">移动开发</a>
                <a class="nav-bar-a" href="">整站开发</a>
                <a class="nav-bar-a" href="">运营维护</a>
            </div>

            <div class="caption">
                <h4>前端开发方向</h4>
            </div>

            <div class="row">
                <c:forEach items="${listOcc}" var="c"><!--打印循环-->
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${c.photo}"></div>
                            <div class="text">
                                <h4 class="">${c.classname}</h4>
                                <p class="text-present">${c.introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 ${c.thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${c.difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${c.cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${c.rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${c.salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${c.salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${c.salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${c.number}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${c.prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${c.occupation}</p>
                            <p class="flip-text">${c.direction}</p>
                        </div>
                    </div>

                </div>
                </c:forEach>
            </div>


            <div class="caption">
                <h4>前端开发方向</h4>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[0].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[0].classname}</h4>
                                <p class="text-present">${listOcc[0].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 ${listOcc[0].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[0].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[0].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[0].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[0].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[0].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[0].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${FrontWeb}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[0].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[0].occupation}</p>
                            <p class="flip-text">${listOcc[0].direction}</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[1].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[1].classname}</h4>
                                <p class="text-present">${listOcc[1].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 ${listOcc[1].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[1].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[1].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[1].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[1].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[1].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[1].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${FrontWab}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[1].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[1].occupation}</p>
                            <p class="flip-text">${listOcc[1].direction}</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[2].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[2].classname}</h4>
                                <p class="text-present">${listOcc[2].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛  ${listOcc[2].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[2].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[2].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[2].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[2].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[2].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[2].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${FrontTab}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[2].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[2].occupation}</p>
                            <p class="flip-text">${listOcc[2].direction}</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[3].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[3].classname}</h4>
                                <p class="text-present">${listOcc[3].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 ${listOcc[3].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[3].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[3].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[3].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[3].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[3].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[3].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${AfterWeb}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[3].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[3].occupation}</p>
                            <p class="flip-text">${listOcc[3].direction}</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[4].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[4].classname}</h4>
                                <p class="text-present">${listOcc[4].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛  ${listOcc[4].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[4].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[4].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[4].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[4].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[4].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[4].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${AfterWab}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[4].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[4].occupation}</p>
                            <p class="flip-text">${listOcc[4].direction}</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}${listOcc[5].photo}"></div>
                            <div class="text">
                                <h4 class="">${listOcc[5].classname}</h4>
                                <p class="text-present">${listOcc[5].introduce}</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛  ${listOcc[5].thresholdStar}</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 ${listOcc[5].difficultyStar}</div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">${listOcc[5].cycle}</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">${listOcc[5].rare}</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">${listOcc[5].salaryO}</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">1-3年</div>
                                    <div class="rightWarp-wages">${listOcc[5].salaryW}</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">3-5年</div>
                                    <div class="rightWarp-wages">${listOcc[5].salaryT}</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有${AfterTab}人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">${listOcc[5].prompt}</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">${listOcc[5].occupation}</p>
                            <p class="flip-text">${listOcc[5].direction}</p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="caption">
                <h4>前端开发方向</h4>
            </div>

            <div class="row padding-bottom">
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

                    <div class="warp-border">
                        <div class="clearfix">
                            <div class="icon-people"><img src="${pageContext.request.contextPath}/t11/imges/687.png"></div>
                            <div class="text">
                                <h4 class="">Web前端工程师</h4>
                                <p class="text-present">Web前端开发工程师，主要职责是利用(X)HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">门槛 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">难易程度 <img src="${pageContext.request.contextPath}/t11/imges/xx.png"><img src="${pageContext.request.contextPath}/t11/imges/xx.png"></div>
                            </div>
                        </div>
                        <div class="warp-class2">
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding">成长周期 <span class="iconfont-color">1-3</span>年</div>
                            </div>
                            <div class="warp-class2-text">
                                <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color">345</span>家公司需要</div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <div class="leftWarp">
                                薪资待遇
                            </div>
                            <div class="rightWarp">
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                                <div class="rightWarp-class border-bottom">
                                    <div class="rightWarp-year">0-1年</div>
                                    <div class="rightWarp-wages">5k-10k/月</div>
                                </div>
                            </div>
                        </div>

                        <div class="warp-class2">
                            <b class="text-b">有286人正在学</b>
                        </div>
                        <div class="warp-class2">
                            <p class="text-p">提示:在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</p>
                        </div>

                        <div class="flip-container">
                            <p class="flip-title">iOS工程师</p>
                            <p class="flip-text">iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样， 也是以Darwin为基础的，因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚， 人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。 国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。 有限的iOS开发人才成了国内企业必争的资源。</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>



        </body>
        </html>
    </tiles:putAttribute>
</tiles:insertDefinition>