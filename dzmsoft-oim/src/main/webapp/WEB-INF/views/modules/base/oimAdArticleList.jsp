<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ include file="/WEB-INF/views/include/easyui.jsp"%>
</head>
<body>
<div id="tb" style="padding:5px;height:auto">
        <div>
        	<form id="searchFrom" action="">
				<input type="text" name="filter_likes_shortTitle" class="easyui-textbox" data-options="width:150,prompt: '短标题'"/>
				<input id="deployTime_start" class="easyui-textbox" name="filter_ged_deployTime" data-options="width:150,prompt: '发布起始时间'"/>
				<input id="deployTime_end" class="easyui-textbox" name="filter_led_deployTime" data-options="width:150,prompt: '发布截止时间'"/>
				<shiro:hasPermission name="oimAdArticle:find">
				<a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true" id="searchFrom_find">查询</a>
				<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true" id="searchFrom_reset">重置</a>
				</shiro:hasPermission>
			</form>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<shiro:hasPermission name="oimAdArticle:add">
						<td>
						<a href="javascript:void(0)" class="easyui-linkbutton add" iconCls="icon-add" plain="true">新增</a>
						</td>
						<td>
	       				<span class="toolbar-item dialog-tool-separator"></span>
	       				</td>
	       			</shiro:hasPermission>
	       			<shiro:hasPermission name="oimAdArticle:edit">
	       				<td>
						<a href="javascript:void(0)" class="easyui-linkbutton edit" iconCls="icon-edit" plain="true">编辑</a>
						</td>
						<td>
	       				<span class="toolbar-item dialog-tool-separator"></span>
	       				</td>
	       			</shiro:hasPermission>
	       			<shiro:hasPermission name="oimAdArticle:remove">
	       				<td>
						<a href="javascript:void(0)" class="easyui-linkbutton remove" iconCls="icon-remove" plain="true">删除</a>
						</td>
						<td>
	       				<span class="toolbar-item dialog-tool-separator"></span>
	       				</td>
	       			</shiro:hasPermission>
	       			<shiro:hasPermission name="oimAdArticle:deploy">
	       				<td>
						<a href="javascript:void(0)" class="easyui-linkbutton deploy" iconCls="icon-ok" plain="true">发布</a>
						</td>
						<td>
	       				<span class="toolbar-item dialog-tool-separator"></span>
	       				</td>
	       			</shiro:hasPermission>
	       			<shiro:hasPermission name="oimAdArticle:disable">
	       				<td>
						<a href="javascript:void(0)" class="easyui-linkbutton disable" iconCls="icon-no" plain="true">禁用</a>
						</td>
						<td>
	       				<span class="toolbar-item dialog-tool-separator"></span>
	       				</td>
	       			</shiro:hasPermission>
				</tr>
			</table>
        </div> 
        
  </div>
<table id="dg"></table> 
<div id="dlg"></div>  
<script src="${ctxResources}/pages/modules/base/oimAdArticleList.js"></script>
</body>
</html>