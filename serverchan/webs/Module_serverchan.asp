﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache"/>
<meta HTTP-EQUIV="Expires" CONTENT="-1"/>
<link rel="shortcut icon" href="images/favicon.png"/>
<link rel="icon" href="images/favicon.png"/>
<title>软件中心 - ServerChan(微信通知)</title>
<link rel="stylesheet" type="text/css" href="index_style.css"/> 
<link rel="stylesheet" type="text/css" href="form_style.css"/>
<link rel="stylesheet" type="text/css" href="css/element.css">
<style>
.Bar_container {
    width:85%;
    height:20px;
    border:1px inset #999;
    margin:0 auto;
    margin-top:20px \9;
    background-color:#FFFFFF;
    z-index:100;
}
#proceeding_img_text {
    position:absolute;
    z-index:101;
    font-size:11px;
    color:#000000;
    line-height:21px;
    width: 83%;
}
#proceeding_img {
    height:21px;
    background:#C0D1D3 url(/images/ss_proceding.gif);
}
#ClientList_Block_PC{
    border:1px outset #999;
    background-color:#576D73;
    position:absolute;
    *margin-top:26px;
    margin-left:2px;
    *margin-left:-353px;
    width:346px;
    text-align:left;
    height:auto;
    overflow-y:auto;
    z-index:200;
    padding: 1px;
    display:none;
}
#ClientList_Block_PC div{
    background-color:#576D73;
    height:auto;
    *height:20px;
    line-height:20px;
    text-decoration:none;
    font-family: Lucida Console;
    padding-left:2px;
}

#ClientList_Block_PC a{
    background-color:#EFEFEF;
    color:#FFF;
    font-size:12px;
    font-family:Arial, Helvetica, sans-serif;
    text-decoration:none;
}
#ClientList_Block_PC div:hover, #ClientList_Block a:hover {
    background-color:#3366FF;
    color:#FFFFFF;
    cursor:default;
}
.close {
    background: red;
    color: black;
    border-radius: 12px;
    line-height: 18px;
    text-align: center;
    height: 18px;
    width: 18px;
    font-size: 16px;
    padding: 1px;
    top: -10px;
    right: -10px;
    position: absolute;
}
/* use cross as close button */
.close::before {
    content: "\2716";
}
.contentM_qis {
    position: fixed;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius:10px;
    z-index: 10;
    background-color:#2B373B;
    margin-left: -100px;
    top: 10px;
    width:720px;
    return height:auto;
    box-shadow: 3px 3px 10px #000;
    background: rgba(0,0,0,0.85);
    display:none;
}
.user_title{
    text-align:center;
    font-size:18px;
    color:#99FF00;
    padding:10px;
    font-weight:bold;
}
.serverchan_btn {
    border: 1px solid #222;
    background: linear-gradient(to bottom, #003333  0%, #000000 100%); /* W3C */
    font-size:10pt;
    color: #fff;
    padding: 5px 5px;
    border-radius: 5px 5px 5px 5px;
    width:16%;
}
.serverchan_btn:hover {
    border: 1px solid #222;
    background: linear-gradient(to bottom, #27c9c9  0%, #279fd9 100%); /* W3C */
    font-size:10pt;
    color: #fff;
    padding: 5px 5px;
    border-radius: 5px 5px 5px 5px;
    width:16%;
}
input[type=button]:focus {
    outline: none;
}
</style>
<link rel="stylesheet" type="text/css" href="usp_style.css"/>
<script type="text/javascript" src="/state.js"></script>
<script type="text/javascript" src="/popup.js"></script>
<script type="text/javascript" src="/help.js"></script>
<script type="text/javascript" src="/validator.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/calendar/jquery-ui.js"></script>
<script type="text/javascript" src="/general.js"></script>
<script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>
<script type="text/javascript" src="/dbconf?p=serverchan&v=<% uptime(); %>"></script>
<script>
var $j = jQuery.noConflict();
var $G = function(id) {
    return document.getElementById(id);
};
var Base64;
if(typeof btoa == "Function") {
   Base64 = {encode:function(e){ return btoa(e); }, decode:function(e){ return atob(e);}};
} else {
   Base64 ={_keyStr:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",encode:function(e){var t="";var n,r,i,s,o,u,a;var f=0;e=Base64._utf8_encode(e);while(f<e.length){n=e.charCodeAt(f++);r=e.charCodeAt(f++);i=e.charCodeAt(f++);s=n>>2;o=(n&3)<<4|r>>4;u=(r&15)<<2|i>>6;a=i&63;if(isNaN(r)){u=a=64}else if(isNaN(i)){a=64}t=t+this._keyStr.charAt(s)+this._keyStr.charAt(o)+this._keyStr.charAt(u)+this._keyStr.charAt(a)}return t},decode:function(e){var t="";var n,r,i;var s,o,u,a;var f=0;e=e.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(f<e.length){s=this._keyStr.indexOf(e.charAt(f++));o=this._keyStr.indexOf(e.charAt(f++));u=this._keyStr.indexOf(e.charAt(f++));a=this._keyStr.indexOf(e.charAt(f++));n=s<<2|o>>4;r=(o&15)<<4|u>>2;i=(u&3)<<6|a;t=t+String.fromCharCode(n);if(u!=64){t=t+String.fromCharCode(r)}if(a!=64){t=t+String.fromCharCode(i)}}t=Base64._utf8_decode(t);return t},_utf8_encode:function(e){e=e.replace(/\r\n/g,"\n");var t="";for(var n=0;n<e.length;n++){var r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r)}else if(r>127&&r<2048){t+=String.fromCharCode(r>>6|192);t+=String.fromCharCode(r&63|128)}else{t+=String.fromCharCode(r>>12|224);t+=String.fromCharCode(r>>6&63|128);t+=String.fromCharCode(r&63|128)}}return t},_utf8_decode:function(e){var t="";var n=0;var r=c1=c2=0;while(n<e.length){r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r);n++}else if(r>191&&r<224){c2=e.charCodeAt(n+1);t+=String.fromCharCode((r&31)<<6|c2&63);n+=2}else{c2=e.charCodeAt(n+1);c3=e.charCodeAt(n+2);t+=String.fromCharCode((r&15)<<12|(c2&63)<<6|c3&63);n+=3}}return t}}
}
function initial(){
    show_menu(menu_hook);
    conf2obj();
    version_show();
    buildswitch();
    toggle_switch();
}

function toggle_switch(){ //根据serverchan_enable的值，打开或者关闭开关
    var rrt = document.getElementById("switch");
    if (document.form.serverchan_enable.value != "1") {
        rrt.checked = false;
    } else {
        rrt.checked = true;
    }
}

function buildswitch(){ //生成开关的功能，checked为开启，此时传递serverchan_enable=1
    $j("#switch").click(
    function(){
        if(document.getElementById('switch').checked){
            document.form.serverchan_enable.value = 1;
            
        }else{
            document.form.serverchan_enable.value = 0;
        }
    });
}

function conf2obj(){ //表单填写函数，将dbus数据填入到对应的表单中
    for(var field in db_serverchan) {
        var el = document.getElementById(field);
        if (el != null) {
            if (field == "serverchan_config_name") {
                el.value = Base64.decode(db_serverchan[field]);
            } else if(field == "serverchan_trigger_dhcp_white") {
                el.value = Base64.decode(db_serverchan[field]);
            } else {
                if (field == "serverchan_status_check") {
                    __serverchan_status_check=db_serverchan[field];
                    if (__serverchan_status_check == "0") {
                        document.getElementById('_serverchan_check_day_pre').style.display="none";
                        document.getElementById('_serverchan_check_week_pre').style.display="none";
                        document.getElementById('_serverchan_check_time_pre').style.display="none";
                        document.getElementById('_serverchan_check_inter_pre').style.display="none";
                        document.getElementById('_serverchan_check_send_text').style.display="none";
                    } else if(__serverchan_status_check == "1") {
                        document.getElementById('_serverchan_check_week_pre').style.display="none";
                        document.getElementById('_serverchan_check_day_pre').style.display="none";
                        document.getElementById('_serverchan_check_time_pre').style.display="inline";
                        document.getElementById('_serverchan_check_inter_pre').style.display="none";
                        document.getElementById('_serverchan_check_send_text').style.display="inline";
                    } else if(__serverchan_status_check == "2") {
                        document.getElementById('_serverchan_check_week_pre').style.display="inline";
                        document.getElementById('_serverchan_check_day_pre').style.display="none";
                        document.getElementById('_serverchan_check_time_pre').style.display="inline";
                        document.getElementById('_serverchan_check_inter_pre').style.display="none";
                        document.getElementById('_serverchan_check_send_text').style.display="inline";
                    } else if(__serverchan_status_check == "3") {
                        document.getElementById('_serverchan_check_week_pre').style.display="none";
                        document.getElementById('_serverchan_check_day_pre').style.display="inline";
                        document.getElementById('_serverchan_check_time_pre').style.display="inline";
                        document.getElementById('_serverchan_check_inter_pre').style.display="none";
                        document.getElementById('_serverchan_check_send_text').style.display="inline";
                    } else if(__serverchan_status_check == "4") {
                        document.getElementById('_serverchan_check_week_pre').style.display="none";
                        document.getElementById('_serverchan_check_day_pre').style.display="none";
                        document.getElementById('_serverchan_check_time_pre').style.display="none";
                        document.getElementById('_serverchan_check_inter_pre').style.display="inline";
                        document.getElementById('_serverchan_check_send_text').style.display="inline";
                        __serverchan_check_inter_pre=db_serverchan["serverchan_check_inter_pre"];
                        if (__serverchan_check_inter_pre == "1") {
                            document.getElementById('serverchan_check_inter_min').style.display="inline";
                            document.getElementById('serverchan_check_inter_hour').style.display="none";
                            document.getElementById('serverchan_check_inter_day').style.display="none";
                            document.getElementById('_serverchan_check_time_pre').style.display="none";
                            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
                            document.getElementById('_serverchan_check_send_text').style.display="inline";
                        } else if(__serverchan_check_inter_pre == "2") {
                            document.getElementById('serverchan_check_inter_min').style.display="none";
                            document.getElementById('serverchan_check_inter_hour').style.display="inline";
                            document.getElementById('serverchan_check_inter_day').style.display="none";
                            document.getElementById('_serverchan_check_time_pre').style.display="none";
                            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
                            document.getElementById('_serverchan_check_send_text').style.display="inline";
                        } else if(__serverchan_check_inter_pre == "3") {
                            document.getElementById('serverchan_check_inter_min').style.display="none";
                            document.getElementById('serverchan_check_inter_hour').style.display="none";
                            document.getElementById('serverchan_check_inter_day').style.display="inline";
                            document.getElementById('_serverchan_check_time_pre').style.display="inline";
                            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
                            document.getElementById('_serverchan_check_send_text').style.display="inline";
                        }
                    }
                }
                if (el.getAttribute("type") == "checkbox") {
                    if (db_serverchan[field] == "1") {
                        el.checked = true;
                        $G("f_" + field).value = "1";
                    } else {
                        el.checked = false;
                        $G("f_" + field).value = "0";
                    }
                }
                el.value = db_serverchan[field];
            }
        }
    }
}

function pass_checked(obj){
    switchType(obj, document.form.show_pass.checked, true);
}
function onSubmitCtrl() { //提交操作，提交时运行serverchan_config，显示5秒的载入画面
    var _form = document.form;
    if(trim(_form.serverchan_config_sckey_1.value)=="" && trim(_form.serverchan_config_sckey_2.value)=="" && trim(_form.serverchan_config_sckey_3.value)==""){
        alert("提交的表单不能为空!");
        return false;
    }
    document.form.action_mode.value = ' Refresh ';
    document.form.SystemCmd.value = "serverchan_config.sh";
    if (validForm()) {
        document.form.submit();
    }
    showLoading(5);
}
function manual_push() {
    $G('manual_push_Btn').disabled = "disabled";
    var _form = document.form;
    if(trim(_form.serverchan_config_sckey_1.value)=="" && trim(_form.serverchan_config_sckey_2.value)=="" && trim(_form.serverchan_config_sckey_3.value)==""){
        alert("提交的表单不能为空!");
        return false;
    }
    checkTime = 2001; //停止可能在进行的刷新
    document.form.SystemCmd.value = "serverchan_check.sh";
    document.form.action_mode.value = ' Refresh ';
    alert("手动推送成功，请检查手机信息！");
    if (validForm()) {
        document.form.submit();
    }
    checkTime = 0;
    showLoading(2);
    refreshpage(2);
}
function validForm() {
    var temp_serverchan = ["serverchan_config_name", "serverchan_trigger_dhcp_white"];
    for(var i = 0; i < temp_serverchan.length; i++) {
        var temp_str = $G(temp_serverchan[i]).value;
        $G(temp_serverchan[i]).value = Base64.encode(temp_str);
    }
    return true;
}
function done_validating(action) { //提交操作5秒后刷洗网页
    refreshpage(5);
}
function reload_Soft_Center(){ //返回软件中心按钮
    location.href = "/Main_Soft_center.asp";
}

function menu_hook(title, tab) {
    tabtitle[tabtitle.length -1] = new Array("", "ServerChan微信通知");
    tablink[tablink.length -1] = new Array("", "Module_serverchan.asp");
}

function oncheckclick(obj) {
    if (obj.checked) {
        document.form["f_" + obj.id].value = "1";
    } else {
        document.form["f_" + obj.id].value = "0";
    }
}
function version_show(){
    $j.ajax({
        url: 'https://koolshare.ngrok.wang/serverchan/config.json.js',
        type: 'GET',
        dataType: 'jsonp',
        success: function(res) {
            if(typeof(res["version"]) != "undefined" && res["version"].length > 0) {
                if(res["version"] == db_serverchan["serverchan_version"]){
                    $j("#serverchan_version_show").html("<i>插件版本：" + res["version"]);
                   }else if(res["version"] > db_serverchan["serverchan_version"]) {
                    $j("#serverchan_version_show").html("<font color=\"#66FF66\">有新版本：</font>" + res.version);
                }
            }
        }
    });
}
</script>
</head>
<body onload="initial();">
<div id="TopBanner"></div>
<div id="Loading" class="popup_bg"></div>
<iframe name="hidden_frame" id="hidden_frame" src="" width="0" height="0" frameborder="0"></iframe>
<form method="POST" name="form" action="/applydb.cgi?p=serverchan" target="hidden_frame"> 
<input type="hidden" name="current_page" value="Module_serverchan.asp"/>
<input type="hidden" name="next_page" value="Main_serverchan.asp"/>
<input type="hidden" name="group_id" value=""/>
<input type="hidden" name="modified" value="0"/>
<input type="hidden" name="action_mode" value=""/>
<input type="hidden" name="action_script" value=""/>
<input type="hidden" name="action_wait" value="5"/>
<input type="hidden" name="first_time" value=""/>
<input type="hidden" name="preferred_lang" id="preferred_lang" value="<% nvram_get("preferred_lang"); %>"/>
<input type="hidden" name="SystemCmd" value=""/>
<input type="hidden" name="firmver" value="<% nvram_get("firmver"); %>"/>
<input type="hidden" id="serverchan_enable" name="serverchan_enable" value='<% dbus_get_def("serverchan_enable", "0"); %>'/>

<table class="content" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="17">&nbsp;</td>
        <td valign="top" width="202">
            <div id="mainMenu"></div>
            <div id="subMenu"></div>
        </td>
        <td valign="top">
            <div id="tabMenu" class="submenuBlock"></div>
            <table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left" valign="top">
                        <table width="760px" border="0" cellpadding="5" cellspacing="0" bordercolor="#6b8fa3"  class="FormTitle" id="FormTitle">
                            <tr>
                                <td bgcolor="#4D595D" colspan="3" valign="top">
                                    <div>&nbsp;</div>
                                    <div style="float:left;" class="formfonttitle">软件中心 - ServerChan</div>
                                    <div style="float:right; width:15px; height:25px;margin-top:10px"><img id="return_btn" onclick="reload_Soft_Center();" align="right" style="cursor:pointer;position:absolute;margin-left:-30px;margin-top:-25px;" title="返回软件中心" src="/images/backprev.png" onMouseOver="this.src='/images/backprevclick.png'" onMouseOut="this.src='/images/backprev.png'"></img></div>
                                    <div style="margin-left:5px;margin-top:10px;margin-bottom:10px"><img src="/images/New_ui/export/line_export.png"/></div>

                                    <div class="formfontdesc" id="cmdDesc">
                                        * 「<a href="http://sc.ftqq.com" target=_blank><i>Server酱</i></a>」，英文名「ServerChan」，是一款「程序员」和「服务器」之间的通信软件。说人话？就是从服务器推报警和日志到手机的工具。<br><br>
                                        开通并使用上它，只需要一分钟：<br>
                                        <i>1. 登录：</i>用GitHub账号<a href="http://sc.ftqq.com/?c=github&a=login" target="_blank"><i>登入网站</i></a>，就能获得一个<a href="http://sc.ftqq.com/?c=code" target="_blank"><i>SCKEY</i></a>（在「<a href="http://sc.ftqq.com/?c=code" target="_blank"><i>发送消息</i></a>」页面）<br>
                                        <i>2. 绑定：</i>点击「<a href="http://sc.ftqq.com/?c=wechat&a=bind" target="_blank"><i>微信推送</i></a>」，扫码关注同时即可完成绑定<br>
                                        <i>3. 发消息：</i>将获得到的<a href="http://sc.ftqq.com/?c=code" target="_blank"><i>SCKEY</i></a>填入插件中并勾选相应选项提交即可。<br>
                                    </div>
                                    <table width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable">
                                        <tr id="switch_tr">
                                            <th>
                                                <label>开启ServerChan</label>
                                            </th>
                                            <td colspan="2">
                                                <div class="switch_field" style="display:table-cell;float: left;">
                                                    <label for="switch">
                                                        <input id="switch" class="switch" type="checkbox" style="display: none;">
                                                        <div class="switch_container" >
                                                            <div class="switch_bar"></div>
                                                            <div class="switch_circle transition_style">
                                                                <div></div>
                                                            </div>
                                                        </div>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable" style="margin-top:8px;">
                                        <thead>
                                              <tr>
                                                <td colspan="2">ServerChan 设置</td>
                                              </tr>
                                          </thead>
                                        <th style="width:25%;">版本信息</th>
                                        <td>
                                            <div id="serverchan_version_show" style="padding-top:5px;margin-left:0px;margin-top:0px;float: left;"><i>插件版本：<% dbus_get_def("serverchan_version", "未知"); %></i></div>
                                            <span style="padding-top:5px;margin-right: 15px;margin-left:0px;margin-top:0px;float: right;"><a href="http://koolshare.cn/thread-123937-1-1.html" target="_blank">[ 反馈地址 ]</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://raw.githubusercontent.com/koolshare/merlin_serverchan/master/Changelog.txt" target="_blank"><em><u>[ 更新日志 ]</u></em></a></span>
                                        </td>

                                        <tr>
                                            <th width="20%">SCKEY(最少需要一个接收人)</th>
                                            <td>
                                                <i>1.</i><input type="password" name="serverchan_config_sckey_1" id="serverchan_config_sckey_1" class="input_ss_table" autocomplete="new-password" autocorrect="off" autocapitalize="off" maxlength="256" value="" onBlur="switchType(this, false);" onFocus="switchType(this, true);" style="width:93%;margin-top: 3px;" /><br>
                                                <i>2.</i><input type="password" name="serverchan_config_sckey_2" id="serverchan_config_sckey_2" class="input_ss_table" autocomplete="new-password" autocorrect="off" autocapitalize="off" maxlength="256" value="" onBlur="switchType(this, false);" onFocus="switchType(this, true);" style="width:93%;margin-top: 5px;" /><br>
                                                <i>3.</i><input type="password" name="serverchan_config_sckey_3" id="serverchan_config_sckey_3" class="input_ss_table" autocomplete="new-password" autocorrect="off" autocapitalize="off" maxlength="256" value="" onBlur="switchType(this, false);" onFocus="switchType(this, true);" style="width:93%;margin-top: 5px;margin-bottom: 3px;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">消息免打扰时间</th>
                                            <td>
                                                <label><input type="checkbox" id="serverchan_silent_time" checked="checked" onclick="oncheckclick(this);"> 消息免打扰 
                                                <input type="hidden" id="f_serverchan_silent_time" name="serverchan_silent_time" value="1" /></label>
                                                <select id="serverchan_silent_time_start_hour" name="serverchan_silent_time_start_hour" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="17">17时</option>
                                                        <option value="18">18时</option>
                                                        <option value="19">19时</option>
                                                        <option value="20">20时</option>
                                                        <option value="21">21时</option>
                                                        <option value="22" selected="selected">22时</option>
                                                        <option value="23">23时</option>
                                                </select> 到 
                                                <select id="serverchan_silent_time_end_hour" name="serverchan_silent_time_end_hour" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">1时</option>
                                                        <option value="2">2时</option>
                                                        <option value="3">3时</option>
                                                        <option value="4">4时</option>
                                                        <option value="5">5时</option>
                                                        <option value="6">6时</option>
                                                        <option value="7">7时</option>
                                                        <option value="8" selected="selected">8时</option>
                                                        <option value="9">9时</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable" style="margin-top:8px;">
                                        <thead>
                                              <tr>
                                                <td colspan="2">定时发送状态消息 (长消息)</td>
                                              </tr>
                                          </thead>
                                        <tr>
                                            <th width="20%">设备标识(显示在推送信息标题中)</th>
                                            <td>
                                                <input type="text" class="input_ss_table" value="" id="serverchan_config_name" name="serverchan_config_name" maxlength="255" value="" placeholder="" style="width:250px;"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">定时任务设定</th>
                                            <td>
                                                <select id="serverchan_status_check" name="serverchan_status_check" style="margin:0px 0px 0px 2px;" class="input_option" onchange="status_onchange();" >
                                                    <option value="0">关闭</option>
                                                    <option value="1">每天</option>
                                                    <option value="2">每周</option>
                                                    <option value="3">每月</option>
                                                    <option value="4">每隔</option>
                                                </select>
                                                <span id="_serverchan_check_week_pre" style="display: none;">
                                                    <select id="serverchan_check_week" name="serverchan_check_week" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">一</option>
                                                        <option value="2">二</option>
                                                        <option value="3">三</option>
                                                        <option value="4">四</option>
                                                        <option value="5">五</option>
                                                        <option value="6">六</option>
                                                        <option value="7">日</option>
                                                    </select>
                                                </span>
                                                <span id="_serverchan_check_day_pre" style="display: none;">
                                                    <select id="serverchan_check_day" name="serverchan_check_day" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">1日</option>
                                                        <option value="2">2日</option>
                                                        <option value="3">3日</option>
                                                        <option value="4">4日</option>
                                                        <option value="5">5日</option>
                                                        <option value="6">6日</option>
                                                        <option value="7">7日</option>
                                                        <option value="8">8日</option>
                                                        <option value="9">9日</option>
                                                        <option value="10">10日</option>
                                                        <option value="11">11日</option>
                                                        <option value="12">12日</option>
                                                        <option value="13">13日</option>
                                                        <option value="14">14日</option>
                                                        <option value="15">15日</option>
                                                        <option value="16">16日</option>
                                                        <option value="17">17日</option>
                                                        <option value="18">18日</option>
                                                        <option value="19">19日</option>
                                                        <option value="20">20日</option>
                                                        <option value="21">21日</option>
                                                        <option value="22">22日</option>
                                                        <option value="23">23日</option>
                                                        <option value="24">24日</option>
                                                        <option value="25">25日</option>
                                                        <option value="26">26日</option>
                                                        <option value="27">27日</option>
                                                        <option value="28">28日</option>
                                                        <option value="29">29日</option>
                                                        <option value="30">30日</option>
                                                        <option value="31">31日</option>
                                                    </select>
                                                </span>
                                                <span id="_serverchan_check_inter_pre" style="display: none;">
                                                    <select id="serverchan_check_inter_min" name="serverchan_check_inter_min" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">1</option>
                                                        <option value="5">5</option>
                                                        <option value="10">10</option>
                                                        <option value="15">15</option>
                                                        <option value="20">20</option>
                                                        <option value="25">25</option>
                                                        <option value="30">30</option>
                                                    </select>
                                                    <select id="serverchan_check_inter_hour" name="serverchan_check_inter_hour" style="display: none; margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                    </select>
                                                    <select id="serverchan_check_inter_day" name="serverchan_check_inter_day" style="display: none; margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                    </select>
                                                    <select id="serverchan_check_inter_pre" name="serverchan_check_inter_pre" style="margin:0px 0px 0px 2px;" class="input_option" onchange="inter_pre_onchange();" >
                                                        <option value="1">分钟</option>
                                                        <option value="2">小时</option>
                                                        <option value="3">天</option>
                                                    </select>
                                                </span>
                                                <span id="_serverchan_check_time_pre" style="display: none;">
                                                    <select id="serverchan_check_time_hour" name="serverchan_check_time_hour" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="0">0时</option>
                                                        <option value="1">1时</option>
                                                        <option value="2">2时</option>
                                                        <option value="3">3时</option>
                                                        <option value="4">4时</option>
                                                        <option value="5">5时</option>
                                                        <option value="6">6时</option>
                                                        <option value="7">7时</option>
                                                        <option value="8">8时</option>
                                                        <option value="9">9时</option>
                                                        <option value="10">10时</option>
                                                        <option value="11">11时</option>
                                                        <option value="12">12时</option>
                                                        <option value="13">13时</option>
                                                        <option value="14">14时</option>
                                                        <option value="15">15时</option>
                                                        <option value="16">16时</option>
                                                        <option value="17">17时</option>
                                                        <option value="18">18时</option>
                                                        <option value="19">19时</option>
                                                        <option value="20">20时</option>
                                                        <option value="21">21时</option>
                                                        <option value="22">22时</option>
                                                        <option value="23">23时</option>
                                                    </select>
                                                    <select id="serverchan_check_time_min" name="serverchan_check_time_min" style="margin:0px 0px 0px 2px;" class="input_option" >
                                                        <option value="0">0分</option>
                                                        <option value="1">1分</option>
                                                        <option value="2">2分</option>
                                                        <option value="3">3分</option>
                                                        <option value="4">4分</option>
                                                        <option value="5">5分</option>
                                                        <option value="6">6分</option>
                                                        <option value="7">7分</option>
                                                        <option value="8">8分</option>
                                                        <option value="9">9分</option>
                                                        <option value="10">10分</option>
                                                        <option value="11">11分</option>
                                                        <option value="12">12分</option>
                                                        <option value="13">13分</option>
                                                        <option value="14">14分</option>
                                                        <option value="15">15分</option>
                                                        <option value="16">16分</option>
                                                        <option value="17">17分</option>
                                                        <option value="18">18分</option>
                                                        <option value="19">19分</option>
                                                        <option value="20">20分</option>
                                                        <option value="21">21分</option>
                                                        <option value="22">22分</option>
                                                        <option value="23">23分</option>
                                                        <option value="24">24分</option>
                                                        <option value="25">25分</option>
                                                        <option value="26">26分</option>
                                                        <option value="27">27分</option>
                                                        <option value="28">28分</option>
                                                        <option value="29">29分</option>
                                                        <option value="30">30分</option>
                                                        <option value="31">31分</option>
                                                        <option value="32">32分</option>
                                                        <option value="33">33分</option>
                                                        <option value="34">34分</option>
                                                        <option value="35">35分</option>
                                                        <option value="36">36分</option>
                                                        <option value="37">37分</option>
                                                        <option value="38">38分</option>
                                                        <option value="39">39分</option>
                                                        <option value="40">40分</option>
                                                        <option value="41">41分</option>
                                                        <option value="42">42分</option>
                                                        <option value="43">43分</option>
                                                        <option value="44">44分</option>
                                                        <option value="45">45分</option>
                                                        <option value="46">46分</option>
                                                        <option value="47">47分</option>
                                                        <option value="48">48分</option>
                                                        <option value="49">49分</option>
                                                        <option value="50">50分</option>
                                                        <option value="51">51分</option>
                                                        <option value="52">52分</option>
                                                        <option value="53">53分</option>
                                                        <option value="54">54分</option>
                                                        <option value="55">55分</option>
                                                        <option value="56">56分</option>
                                                        <option value="57">57分</option>
                                                        <option value="58">58分</option>
                                                        <option value="59">59分</option>
                                                    </select>
                                                </span>
                                                <span id="_serverchan_check_send_text" style="display: none;">发送</span>
                                                <span style="margin-left:10px;"><input class="serverchan_btn" id="manual_push_Btn" onclick="manual_push();" type="button" value="手动推送"/></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">在免打扰时间内推送定时消息</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_silent_send" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_silent_send" name="serverchan_info_silent_send" value="" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">系统运行情况</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_system" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_system" name="serverchan_info_system" value="1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">设备温度</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_temp" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_temp" name="serverchan_info_temp" value="1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">网络信息</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_wan" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_wan" name="serverchan_info_wan" value="1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">USB信息</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_usb" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_usb" name="serverchan_info_usb" value="1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">客户端列表</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_lan" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_lan" name="serverchan_info_lan" value="1" />
                                                <label style="margin-left:30px;">列表关闭MAC显示<input type="checkbox" id="serverchan_info_lan_macoff" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_lan_macoff" name="serverchan_info_lan_macoff" value="1" /></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">DHCP租期内用户列表</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_dhcp" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_dhcp" name="serverchan_info_dhcp" value="1" />
                                                <label style="margin-left:30px;">列表关闭MAC显示<input type="checkbox" id="serverchan_info_dhcp_macoff" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_dhcp_macoff" name="serverchan_info_dhcp_macoff" value="1" /></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">软件中心插件信息</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_info_softcenter" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_info_softcenter" name="serverchan_info_softcenter" value="1" />
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable" style="margin-top:8px;">
                                        <thead>
                                              <tr>
                                                <td colspan="2">触发类通知消息 (短消息)</td>
                                              </tr>
                                          </thead>
                                        <tr>
                                            <th width="20%">网络重拨时</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_trigger_ifup" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_trigger_ifup" name="serverchan_trigger_ifup" value="1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">设备上线时</th>
                                            <td>
                                                <input type="checkbox" id="serverchan_trigger_dhcp" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_trigger_dhcp" name="serverchan_trigger_dhcp" value="1" />
                                                <label style="margin-left:30px;">DHCP租期内用户列表显示<input type="checkbox" id="serverchan_trigger_dhcp_leases" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_trigger_dhcp_leases" name="serverchan_trigger_dhcp_leases" value="1" /></label>
                                                <label style="margin-left:30px;">列表关闭MAC显示<input type="checkbox" id="serverchan_trigger_dhcp_macoff" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_trigger_dhcp_macoff" name="serverchan_trigger_dhcp_macoff" value="1" /></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="20%">设备上线提醒白名单(MAC地址)<br><i>名单内设备上线不推送信息</i></th>
                                            <td>
                                                <label><input type="checkbox" id="serverchan_dhcp_white_en" checked="checked" onclick="oncheckclick(this);">
                                                <input type="hidden" id="f_serverchan_dhcp_white_en" name="serverchan_dhcp_white_en" value="1" />启用白名单</label>
                                                <textarea placeholder="# 填入白名单设备MAC地址，一行一个，格式如下：
                                                aa:bb:cc:dd:ee:ff
                                                aa:bb:cc:dd:ee:ff #我的电脑
                                                a1:b2:c3:d4:e5:f6 #我的手机" cols="50" rows="7" id="serverchan_trigger_dhcp_white" name="serverchan_trigger_dhcp_white" style="width:99%; font-family:'Lucida Console'; font-size:12px;background:#475A5F;color:#FFFFFF;text-transform:lowercase;margin-top:5px;" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="apply_gen">
                                        <span><input class="button_gen_long" id="cmdBtn" onclick="onSubmitCtrl();" type="button" value="提交"/></span>
                                    </div>
                                </td>
                            </tr>
                        </table>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <!--===================================Ending of Main Content===========================================-->
        </td>
        <td width="10" align="center" valign="top"></td>
    </tr>
</table>
</form>

<div id="footer"></div>
</body>
<script type="text/javascript">
function status_onchange(){
    var __serverchan_status_check="";
    var ___serverchan_check_inter_pre="";
    __serverchan_status_check=document.getElementById("serverchan_status_check").value;
    ___serverchan_check_inter_pre=document.getElementById("serverchan_check_inter_pre").value;
    //alert(__serverchan_status_check)
    if (__serverchan_status_check == "0") {
        document.getElementById('_serverchan_check_day_pre').style.display="none";
        document.getElementById('_serverchan_check_week_pre').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="none";
        document.getElementById('_serverchan_check_inter_pre').style.display="none";
        document.getElementById('_serverchan_check_send_text').style.display="none";
    } else if(__serverchan_status_check == "1"){
        document.getElementById('_serverchan_check_week_pre').style.display="none";
        document.getElementById('_serverchan_check_day_pre').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="inline";
        document.getElementById('_serverchan_check_inter_pre').style.display="none";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    } else if(__serverchan_status_check == "2"){
        document.getElementById('_serverchan_check_week_pre').style.display="inline";
        document.getElementById('_serverchan_check_day_pre').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="inline";
        document.getElementById('_serverchan_check_inter_pre').style.display="none";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    } else if(__serverchan_status_check == "3"){
        document.getElementById('_serverchan_check_week_pre').style.display="none";
        document.getElementById('_serverchan_check_day_pre').style.display="inline";
        document.getElementById('_serverchan_check_time_pre').style.display="inline";
        document.getElementById('_serverchan_check_inter_pre').style.display="none";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    } else if(__serverchan_status_check == "4"){
        document.getElementById('_serverchan_check_week_pre').style.display="none";
        document.getElementById('_serverchan_check_day_pre').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="none";
        document.getElementById('_serverchan_check_inter_pre').style.display="inline";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
        if (___serverchan_check_inter_pre == "1") {
            document.getElementById('serverchan_check_inter_min').style.display="inline";
            document.getElementById('serverchan_check_inter_hour').style.display="none";
            document.getElementById('serverchan_check_inter_day').style.display="none";
            document.getElementById('_serverchan_check_time_pre').style.display="none";
            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
            document.getElementById('_serverchan_check_send_text').style.display="inline";
        } else if(___serverchan_check_inter_pre == "2"){
            document.getElementById('serverchan_check_inter_min').style.display="none";
            document.getElementById('serverchan_check_inter_hour').style.display="inline";
            document.getElementById('serverchan_check_inter_day').style.display="none";
            document.getElementById('_serverchan_check_time_pre').style.display="none";
            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
            document.getElementById('_serverchan_check_send_text').style.display="inline";
        } else if(___serverchan_check_inter_pre == "3"){
            document.getElementById('serverchan_check_inter_min').style.display="none";
            document.getElementById('serverchan_check_inter_hour').style.display="none";
            document.getElementById('serverchan_check_inter_day').style.display="inline";
            document.getElementById('_serverchan_check_time_pre').style.display="inline";
            document.getElementById('_serverchan_check_inter_pre').style.display="inline";
            document.getElementById('_serverchan_check_send_text').style.display="inline";
        }
    }
}
function inter_pre_onchange(){
    var __serverchan_check_inter_pre="";
    __serverchan_check_inter_pre=document.getElementById("serverchan_check_inter_pre").value;
    if (__serverchan_check_inter_pre == "1") {
        document.getElementById('serverchan_check_inter_min').style.display="inline";
        document.getElementById('serverchan_check_inter_hour').style.display="none";
        document.getElementById('serverchan_check_inter_day').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="none";
        document.getElementById('_serverchan_check_inter_pre').style.display="inline";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    } else if(__serverchan_check_inter_pre == "2"){
        document.getElementById('serverchan_check_inter_min').style.display="none";
        document.getElementById('serverchan_check_inter_hour').style.display="inline";
        document.getElementById('serverchan_check_inter_day').style.display="none";
        document.getElementById('_serverchan_check_time_pre').style.display="none";
        document.getElementById('_serverchan_check_inter_pre').style.display="inline";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    } else if(__serverchan_check_inter_pre == "3"){
        document.getElementById('serverchan_check_inter_min').style.display="none";
        document.getElementById('serverchan_check_inter_hour').style.display="none";
        document.getElementById('serverchan_check_inter_day').style.display="inline";
        document.getElementById('_serverchan_check_time_pre').style.display="inline";
        document.getElementById('_serverchan_check_inter_pre').style.display="inline";
        document.getElementById('_serverchan_check_send_text').style.display="inline";
    }
}
<!--[if !IE]>-->
    (function($){
        var i = 0;
    })(jQuery);
<!--<![endif]-->
</script>
</html>
