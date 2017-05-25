// JavaScript Document
/*
 var locHref = location.href;
 var scriptTag = document.getElementsByTagName("script");
 var j=0;
 var scriptURL ;
 for(var i=0;i<scriptTag.length;i++){
	  if(scriptTag[i].src.lastIndexOf("fileUpload.js") >= 0){
		  j = scriptTag[i].src.lastIndexOf("fileUpload.js");
		  scriptURL = scriptTag[i].src.substring(0,j);
	  }
  }
****/
var local = "/Venus/fckeditor/";  ///必须设置初始路径
// 文件上传 FileManager功能
function review_img(va){
	if (document.getElementById(va).value!='')
		window.open(''+document.getElementById(va).value+'','','');	
}

var BrowserURL = local+"editor/filemanager/browser/default/browser.html?Type=Image&Connector="+local+"editor/filemanager/connectors/php/connector.php";

var backID ;
// 上传图片
function fileUpload(va)
{
	backID = va;
	fileUploadBrowser( BrowserURL, '800', '600' );
}

function fileUploadBrowser( url, width, height )
{
	// oEditor must be defined.

	var iLeft = ( 1280  - width ) / 2 ;
	var iTop  = ( 800 - height ) / 2 ;

	var sOptions = "toolbar=no,status=no,resizable=yes,dependent=yes,scrollbars=yes" ;
	sOptions += ",width=" + width ;
	sOptions += ",height=" + height ;
	sOptions += ",left=" + iLeft ;
	sOptions += ",top=" + iTop ;

	window.open( url, 'FCKBrowseWindow', sOptions ) ;
}
function SetUrl( url )
{
	document.getElementById(backID).value = url ;
}