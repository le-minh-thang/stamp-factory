<!--{printXMLDeclaration}--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja" class="<!--{$tpl_page_class_name|h}-->">
<head>
<!--{if false}-->
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<!--{/if}-->
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<meta http-equiv=Content-Type content="text/html; charset=utf-8">

<meta name="viewport" content="width=device-width,user-scalable=no,maximum-scale=1" />
<link rel="stylesheet" href="/bootstrap.css" type="text/css">
<link rel="stylesheet" href="/test2.css" type="text/css">
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PX3LXK9');</script>
<!-- End Google Tag Manager -->

<!--{if false && $tpl_page_class_name == 'LC_Page_Mdl_PG_MULPAY_Helper'}-->
<link rel="stylesheet" href="/reset.css" type="text/css">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/import.css" type="text/css" media="all" />
<!--{/if}-->

<link rel="alternate" type="application/rss+xml" title="RSS" href="<!--{$smarty.const.HTTP_URL}-->rss/<!--{$smarty.const.DIR_INDEX_PATH}-->" />
<!--{if $tpl_page_category == "abouts"}-->
<!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
<script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?sensor=false"></script>
<!--{else}-->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<!--{/if}-->
<!--{/if}-->
<!--{if false}-->
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/site.js"></script>
<!--{/if}-->
<!--{if false}-->
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.4.2.min.js"></script>
<!--{/if}-->

<script src="/jquery-1.11.1.js"></script>

<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>
<title><!--{$arrSiteInfo.shop_name|h}--><!--{if $tpl_subtitle|strlen >= 1}--> / <!--{$tpl_subtitle|h}--><!--{elseif $tpl_title|strlen >= 1}--> / <!--{$tpl_title|h}--><!--{/if}--></title>
<!--{if $arrPageLayout.author|strlen >= 1}-->
    <meta name="author" content="<!--{$arrPageLayout.author|h}-->" />
<!--{/if}-->
<!--{if $arrPageLayout.description|strlen >= 1}-->
    <meta name="description" content="<!--{$arrPageLayout.description|h}-->" />
<!--{/if}-->
<!--{if $arrPageLayout.keyword|strlen >= 1}-->
    <meta name="keywords" content="<!--{$arrPageLayout.keyword|h}-->" />
<!--{/if}-->

<!--{if false}-->
<link rel="shortcut icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
<link rel="icon" type="image/vnd.microsoft.icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
<!--{/if}-->

<!--{if $isOrderEnd}-->
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '897142913640389'); // Insert your pixel ID here.
fbq('track', 'PageView');

fbq('track', 'Lead');


</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=897142913640389&ev=PageView&noscript=1"
/></noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<!--{/if}-->

<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
        <!--{$tpl_onload}-->
    });
//]]></script>

<!--{* ▼Head COLUMN*}-->
<!--{if $arrPageLayout.HeadNavi|@count > 0}-->
    <!--{* ▼上ナビ *}-->
    <!--{foreach key=HeadNaviKey item=HeadNaviItem from=$arrPageLayout.HeadNavi}-->
        <!--{* ▼<!--{$HeadNaviItem.bloc_name}--> ここから*}-->
        <!--{if $HeadNaviItem.php_path != ""}-->
            <!--{include_php file=$HeadNaviItem.php_path}-->
        <!--{else}-->
            <!--{include file=$HeadNaviItem.tpl_path}-->
        <!--{/if}-->
        <!--{* ▲<!--{$HeadNaviItem.bloc_name}--> ここまで*}-->
    <!--{/foreach}-->
    <!--{* ▲上ナビ *}-->
<!--{/if}-->
<!--{* ▲Head COLUMN*}-->

</head>

<!-- ▼BODY部 スタート -->
<!--{include file='./site_main.tpl'}-->
<!-- ▲BODY部 エンド -->

<div style="position: fixed; bottom: 10px; right: 10px;">
<img src="https://www.positivessl.com/images-new/PositiveSSL_tl_trans2.png" alt="SSL Certificate" title="SSL Certificate" border="0" />
</div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-56273164-1', 'auto');
  ga('send', 'pageview');

</script>

</body>
</html>
