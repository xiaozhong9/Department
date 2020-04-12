package com.ssm.common;


public interface HttpClientTool {
	/*栏目分页*/
	public static final String API_URL_COLUMN_PAGE="column/get/article/page";
	/*获取栏目ID*/
	public static final String API_URL_GET_COLUMN_TITLE="column/get/column/title";
	/*判断文章存在栏目*/
	public static final String API_URL_IS_COLUMN_ARTICLE="column/is/column/title";
	/*进入首页返回的栏目*/
	public static final String API_URL_INDEX="column/index";
	/*获取指定栏目与对应的所有文章名*/
	public static final String API_URL_GET_COLUMN_ARTICLE_TITLE="column/get/column/article/title";
	/*获取所有栏目*/
	public static final String API_URL_GET_COLUMNS="column/get/columns";
	/*获取所有栏目标题*/
	public static final String API_URL_GET_COLUMN_TITLES="column/get/column/titles";
	/*新增栏目*/
	public static final String API_URL_ADD_COLUMN="column/save/column";
	/*修改栏目*/
	public static final String API_URL_UPDATE_COLUMN="column/update/column";
	/*删除栏目*/
	public static final String API_URL_REMOVE_COLUMN="column/remove/column";
	/*获取栏目文章*/
	public static final String API_URL_GET_COLUMN="column/get/column/articles";
	/*获取栏目文章数量*/
	public static final String API_URL_COLUMN_SIZE="column/countsize";
	/*新增文章*/
	public static final String API_URL_ADD_ARTICLE="article/save/article";
	/*修改文章*/
	public static final String API_URL_UPDATE_ARTICLE="article/update/article";
	/*删除文章*/
	public static final String API_URL_REMOVE_ARTICLE="article/remove/article";
	/*获取文章*/
	public static final String API_URL_GET_ARTICLE="article/get/article";
	/*获取文章数量*/
	public static final String API_URL_SIZE_ARTICLE="article/countsize";
	/*获取所有文章*/
	public static final String API_URL_LIST_ARTICLE="article/list/article";
	/*获取轮播图*/
	public static final String API_URL_GET_POOL="img/get/pool";
	/*新增图片*/
	public static final String API_URL_ADD_IMG="img/save/img";
	/*删除图片*/
	public static final String API_URL_REMOVE_IMG="img/remove/img";
	/*获取图片*/
	public static final String API_URL_GET_IMG="img/get/img";
	/*修改图片*/
	public static final String API_URL_UPDATE_IMG="img/update/img";
	/*插入评论*/
	public static final String API_URL_SAVE_COMMENT="oline/save/comment";
	/*文章上下篇*/
	public static final String API_URL_GET_PAGETURN="article/page/turn";
	/*教师上一个下一个*/
	public static final String API_URL_GET_TEACHERTURN="teacher/page/turn";
	/*获取指定栏目下文章评论*/
	public static final String API_URL_GET_OLINES="oline/find/olines";
	/*游客邮箱验证*/
	public static final String API_URL_TOURIST_EMAIL="tourist/email/ver";
	/*游客手机验证*/
	public static final String API_URL_TOURIST_PHONE="tourist/phone/ver";
	/*获取教师团队*/
	public static final String API_URL_GET_TEACHERS="teacher/get/teachers";
	/*获取指定教师*/
	public static final String API_URL_GET_TEACHER_BYID="teacher/get/teacher";
	/*友情链接*/
	public static final String API_URL_GET_FRIENDLYLINK="friendlylink/all";
	/*热门文章*/
	public static final String API_URL_GET_HOTARTICLES="column/hot/articles";
	/*友情链接*/
	public static final String API_URL_GET_HOT_ARTICLES="article/hot/articles";
	/*获取首页活动公告*/
	public static final String API_URL_GET_INDEX_ACTIVITY="activity/index";
	/*获取首页活动公告*/
	public static final String API_URL_GET_ACTIVITY_BYID="activity/get/byid";
	/*上下篇活动公告*/
	public static final String API_URL_GET_ACTIVITY_PAGETURN="activity/page/turn";
	/*最新动公告*/
	public static final String API_URL_GET_NEWEST_ACTIVITY="activity/newest";
	/*查看指定今日关注*/
	public static final String API_URL_GET_TODAY="today/get/today";
	/*查看所有今日关注*/
	public static final String API_URL_GET_TODAY_ALL="today/all";
	/*今日关注上下篇*/
	public static final String API_URL_GET_TODAY_PAGE_TURN="today/page/turn";
	
	/**
	 * 请求后台API核心方法
	 * @param url 请求的路径
	 * @param obj 传递的参数
	 * @return ApiResponseObject
	 * @throws ApiServiceException
	 */
	public ApiResponseObject doPostJson(String url, Object obj) throws ApiServiceException;
}
