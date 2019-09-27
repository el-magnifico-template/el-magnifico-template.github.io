<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<html  b:css='false' b:defaultwidgetversion='2' b:layoutsVersion='3'  expr:class='data:blog.languageDirection' expr:dir='data:blog.languageDirection' >
<b:attr cond='data:blog.locale.country == &quot;AM&quot;' name='amp' value='amp'/>
<b:attr expr:value='data:view.isSingleItem ? &quot;og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#&quot; : &quot;og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# website: http://ogp.me/ns/website#&quot;' name='prefix'/>

&lt;head&gt;&lt;!-- <head/> --&gt;
&lt;meta charset=&#39;utf-8&#39;/&gt;&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width,minimum-scale=1,initial-scale=1&quot;/&gt;
<b:if cond='!data:view.isLayoutMode'><b:skin amp-custom='amp-custom' ><![CDATA[/*
Theme Name	     :  Elmagnifico Blogger Template
Theme Link       :  https://el-magnifico-template.blogspot.com/p/documentation.html
Theme Version    :   1.0
Thanks to	     :  All supports
License          :  Personal use only - for 1 Website

<!-- Variable definitions -->
<Variable name="keycolor" description="Main Color" type="color" default="$(main.color)" value="#3455DB"/>
<Variable name="metacolor" description="MainColor" type="color" default="$(meta.color)" value="#3455DB"/>
<Group description="Layout Options" selector="body">
  <Variable name="magazine" description="layout type" type="length" default="0px" min="0px" max="1px" value="1px"/>
  <Variable name="boxed" description="Boxed Version" type="length" default="0px" min="0px" max="1px" value="0px"/>
  <Variable name="sidebar" description="Left Sidebar" type="length" default="0px" min="0px" max="1px" value="0px"/>
  <Variable name="fixedmenu" description="Fixed Menu" type="length" default="1px" min="0px" max="1px" value="1px"/>
  <Variable name="fixedsidebar" description="Fixed Sidebar" type="length" default="1px" min="0px" max="1px" value="1px"/>
</Group>

<Group description="Theme Widths" selector="body">
  <Variable name="row.width" description="Container Width" type="length" default="1078px" min="970px" max="1094px" value="1078px"/>
  <Variable name="sidebar.width" description="Sidebar Width" type="length" default="320px" min="300px" max="336px" value="320px"/>
</Group>

<Group description="Theme Fonts" selector="body">
<Variable name="main.font" description="Site Font" type="font" family="'Roboto','Cairo',sans-serif" default="normal 400 14px $(family)"  value="normal 400 14px $(family)"/>
<Variable name="title.font" description="Title Font" type="font" family="'Roboto','Cairo',sans-serif" default="normal 400 14px $(family)"  value="normal 400 14px $(family)"/>
<Variable name="meta.font" description="Meta Font" type="font" family="'Roboto','Cairo',sans-serif" default="normal 400 14px $(family)"  value="normal 400 14px $(family)"/>
<Variable name="text.font" description="Text Font" type="font" family="'Roboto','Cairo',sans-serif" default="normal 400 14px $(family)"  value="normal 400 14px $(family)"/>
</Group>

<Group description="Theme Colors" selector="body">
  <Variable name="main.color" description="Theme Color" type="color" default="#3455DB" value="#3455DB"/>
  <Variable name="main.dark.color" description="Theme Dark Color" type="color" default="#171c24" value="#171c24"/>
  <Variable name="title.color" description="Title Color" type="color" default="#171c24" value="#171c24"/>
  <Variable name="title.hover.color" description="Title Hover Color" type="color" default="$(main.color)" value="#3455DB"/>
  <Variable name="meta.color" description="Meta Color" type="color" default="#1e232b" value="#1e232b"/>
  <Variable name="tag.bg" description="Tag Background" type="color" default="$(main.color)" value="#3455DB"/>
  <Variable name="tag.color" description="Tag Color" type="color" default="#ffffff" value="#ffffff"/>
</Group>

<Group description="Theme Body" selector="body">
  <Variable name="body.background.color" description="Body Background - Boxed" type="color" default="#f7f7f7"  value="#f7f7f7"/>
  <Variable name="body.background" description="Background" type="background" color="$(body.background.color)" default="$(color) url() repeat scroll top left" value="$(color) url() repeat scroll top left"/>
  <Variable name="outer.bg" description="Outer Wrapper Background" type="color" default="#f7f7f7"  value="#f7f7f7"/>
  <Variable name="body.text.color" description="Body Text Color" type="color" default="#656565"  value="#656565"/>
  <Variable name="body.link.color" description="Colored Links" type="color" default="$(main.color)"  value="#3455DB"/>
</Group>

<Group description="Main Header" selector="div.headerify">
  <Variable name="navbar.bg" description="Header Background" type="color" default="$(main.dark.color)" value="#171c24"/>
  <Variable name="navbar.color" description="Header Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="navbar.hover.color" description="Header Hover Color" type="color" default="$(main.color)" value="#3455DB"/>
  <Variable name="navbar.border" description="Header Border Color" type="color" default="$(main.dark.color)" value="#171c24"/>
</Group>

<Group description="Sub Menu" selector="div.headerify">
  <Variable name="submenu.bg" description="SubMenu Background" type="color" default="#1e232b" value="#1e232b"/>
  <Variable name="submenu.color" description="SubMenu Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="submenu.hover.color" description="SubMenu Hover Color" type="color" default="$(main.color)" value="#3455DB"/>
</Group>


<Group description="Theme Widgets">
  <Variable name="widget.bg" description="Widget Background" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="widget.border.color" description="Widget Border Color" type="color" default="#e6e6e6" value="#e6e6e6"/>
  <Variable name="wtitle.color" description="Widget Title Color" type="color" default="$(title.color)" value="#171c24"/>
  <Variable name="wtitle.border.color" description="Widget Title Border Color" type="color" default="#ebebeb" value="#ebebeb"/>
  <Variable name="wtitle.dash.color" description="Widget Title Dash Color" type="color" default="$(main.color)" value="#3455DB"/>
  <Variable name="showborder" description="Show Border" type="length" default="1px" min="0px" max="1px" value="1px"/>
</Group>

<Group description="Post Styles" select="#main-wrapper">
  <Variable name="post.title.color" description="Post Title Color" type="color" default="$(title.color)" value="#171c24"/>
  <Variable name="post.title.hover.color" description="Post Title Hover Color" type="color" default="$(title.hover.color)" value="#3455DB"/>
  <Variable name="post.text.color" description="Post Text Color" type="color" default="$(body.text.color)" value="#656565"/>
  <Variable name="itempost.title.size" description="Post Title Font Size" type="length" default="35px" min="20px" max="50px" value="35px"/>
  <Variable name="itempost.content.size" description="Post Text Font Size" type="length" default="15px" min="13px" max="20px" value="15px"/>
</Group>

<Group description="Post Options" select="#main-wrapper">
  <Variable name="breadcrumb" description="Post Breadcrumbs" type="length" default="1px" min="0px" max="1px" value="1px"/>
  <Variable name="sharebuttons" description="Share Buttons Before Post Content" type="length" default="1px" min="0px" max="1px" value="1px"/>
  <Variable name="postnav" description="Post Navigation" type="length" default="1px" min="0px" max="1px" value="1px"/>
</Group>

<Group description="Theme Buttons">
  <Variable name="button.bg" description="Button Background" type="color" default="$(main.color)" value="#3455DB"/>
  <Variable name="button.color" description="Button Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="button.hover.bg" description="Button Hover Background" type="color" default="#e53700" value="#e53700"/>
  <Variable name="button.hover.color" description="Button Hover Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="darkbutton.bg" description="Dark Button Background" type="color" default="$(main.dark.color)" value="#171c24"/>
  <Variable name="darkbutton.color" description="Dark Button Color" type="color" default="#ffffff" value="#ffffff"/>
</Group>

<Group description="Theme Footer" selector="#footer-wrapper">
  <Variable name="footer.bg" description="Footer Background" type="color" default="$(main.dark.color)" value="#171c24"/>
  <Variable name="footer.widget.title.color" description="Widget Title Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="footer.color" description="Footer Color" type="color" default="#f2f2f2" value="#f2f2f2"/>
  <Variable name="footer.text.color" description="Footer Text Color" type="color" default="#aaaaaa" value="#aaaaaa"/>
  <Variable name="footer.link.color" description="Footer Link Color" type="color" default="$(body.link.color)" value="#3455DB"/>
</Group>

<Group description="Footer Bar" selector="#footerbar">
  <Variable name="footerbar.bg" description="Footer Bar Background" type="color" default="#12161d" value="#12161d"/>
  <Variable name="footerbar.color" description="Footer Bar  Color" type="color" default="#ffffff" value="#ffffff"/>
  <Variable name="footerbar.hover.color" description="Footer Bar Hover Color" type="color" default="$(main.color)" value="#3455DB"/>
</Group>

<!-- Site Font -->
<Variable name="mainfont.medium" description="Main Font Medium" hideEditor="true" type="font" default="normal 500 14px $(main.font.family)" value="normal 500 14px $(family)"/>
<Variable name="mainfont.semibold" description="Main Font SemiBold" hideEditor="true" type="font" default="normal 600 14px $(main.font.family)" value="normal 600 14px $(family)"/>
<Variable name="mainfont.bold" description="Main Font Bold" hideEditor="true" type="font" default="normal 700 14px $(main.font.family)" value="normal 700 14px $(family)"/>
<Variable name="mainfont.italic" description="Main Font Italic" hideEditor="true" type="font" default="italic 400 14px $(main.font.family)" value="italic 400 14px $(family)"/>
<Variable name="mainfont.mediumitalic" description="Main Font Medium Italic" hideEditor="true" type="font" default="italic 500 14px $(main.font.family)" value="italic 500 14px $(family)"/>
<Variable name="mainfont.semibolditalic" description="Main Font SemiBold Italic" hideEditor="true" type="font" default="italic 600 14px $(main.font.family)" value="italic 600 14px $(family)"/>
<Variable name="mainfont.bolditalic" description="Main Font Bold Italic" hideEditor="true" type="font" default="italic 700 14px $(main.font.family)" value="italic 700 14px $(family)"/>

<!-- Title Font -->
<Variable name="titlefont.medium" description="Title Font Medium" hideEditor="true" type="font" default="normal 500 14px $(title.font.family)" value="normal 500 14px $(family)"/>
<Variable name="titlefont.semibold" description="Title Font SemiBold" hideEditor="true" type="font" default="normal 600 14px $(title.font.family)" value="normal 600 14px $(family)"/>
<Variable name="titlefont.bold" description="Title Font Bold" hideEditor="true" type="font" default="normal 700 14px $(title.font.family)" value="normal 700 14px $(family)"/>
<Variable name="titlefont.italic" description="Title Font Italic" hideEditor="true" type="font" default="italic 400 14px $(title.font.family)" value="italic 400 14px $(family)"/>
<Variable name="titlefont.mediumitalic" description="Title Font Medium Italic" hideEditor="true" type="font" default="italic 500 14px $(title.font.family)" value="italic 500 14px $(family)"/>
<Variable name="titlefont.semibolditalic" description="Title Font SemiBold Italic" hideEditor="true" type="font" default="italic 600 14px $(title.font.family)" value="italic 600 14px $(family)"/>
<Variable name="titlefont.bolditalic" description="Title Font Bold Italic" hideEditor="true" type="font" default="italic 700 14px $(title.font.family)" value="italic 700 14px $(family)"/>

<!-- Meta Font -->
<Variable name="metafont.italic" description="Meta Font Italic" hideEditor="true" type="font" default="italic 400 14px $(meta.font.family)" value="italic 400 14px $(family)"/>

<!-- Text Font -->
<Variable name="textfont.medium" description="Text Font Medium" hideEditor="true" type="font" default="normal 500 14px $(text.font.family)" value="normal 500 14px $(family)"/>
<Variable name="textfont.semibold" description="Text Font SemiBold" hideEditor="true" type="font" default="normal 600 14px $(text.font.family)" value="normal 600 14px $(family)"/>
<Variable name="textfont.bold" description="Text Font Bold" hideEditor="true" type="font" default="normal 700 14px $(text.font.family)" value="normal 700 14px $(family)"/>
<Variable name="textfont.italic" description="Text Font Italic" hideEditor="true" type="font" default="italic 400 14px $(text.font.family)" value="italic 400 14px $(family)"/>
<Variable name="textfont.mediumitalic" description="Text Font Medium Italic" hideEditor="true" type="font" default="italic 500 14px $(text.font.family)" value="italic 500 14px $(family)"/>
<Variable name="textfont.semibolditalic" description="Text Font SemiBold Italic" hideEditor="true" type="font" default="italic 600 14px $(text.font.family)" value="italic 600 14px $(family)"/>
<Variable name="textfont.bolditalic" description="Text Font Bold Italic" hideEditor="true" type="font" default="italic 700 14px $(text.font.family)" value="italic 700 14px $(family)"/>
*/

/*-- Reset CSS --*/
a,abbr,acronym,address,applet,b,big,blockquote,body,caption,center,cite,code,dd,del,dfn,div,dl,dt,em,fieldset,font,form,h1,h2,h3,h4,h5,h6,html,i,iframe,img,ins,kbd,label,legend,li,object,p,pre,q,s,samp,small,span,strike,strong,sub,sup,table,tbody,td,tfoot,th,thead,tr,tt,u,ul,var{padding:0;border:0;outline:0;vertical-align:baseline;background:0 0;text-decoration:none}form,textarea,input,button{-webkit-appearance:none;-moz-appearance:none;appearance:none;outline:none;box-sizing:border-box;border-radius:0}dl,ul{list-style-position:inside;font-weight:400;list-style:none}ul li{list-style:none}caption,th{text-align:center}img{border:none;position:relative}a,a:visited{text-decoration:none}.clearfix{clear:both}.section,.widget,.widget ul{margin:0;padding:0}a{color:$(body.link.color)}a img{border:0}abbr{text-decoration:none}.CSS_LIGHTBOX{z-index:999999!important}.CSS_LIGHTBOX_ATTRIBUTION_INDEX_CONTAINER .CSS_HCONT_CHILDREN_HOLDER > .CSS_LAYOUT_COMPONENT.CSS_HCONT_CHILD:first-child > .CSS_LAYOUT_COMPONENT{opacity:0}.separator a{clear:none!important;float:none!important;margin-left:0!important;margin-right:0!important}#Navbar1,#navbar-iframe,.widget-item-control,a.quickedit,.home-link,.feed-links{display:none!important}.center{display:table;margin:0 auto;position:relative}.widget > h2,.widget > h3{display:none}.widget iframe,.widget img{max-width:100%}


/*-- Body Content CSS --
:root{--body-font:$(main.font.family);--title-font:$(title.font.family);--meta-font:$(meta.font.family);--text-font:$(text.font.family)}

*/
body{position:relative;background-color:$(body.background.color);background:$(body.background);font-display: swap; font-family:$(main.font.family);font-size:14px;color:$(body.text.color);font-weight:400;font-style:normal;line-height:1.4em;word-wrap:break-word;margin:0;padding:0}
.rtl{direction:rtl}
.no-items.section{display:none}
h1,h2,h3,h4,h5,h6{font-display: swap;font-weight:700}
.title-oswald h1,.title-oswald h2,.title-oswald h3,.title-oswald h4,.title-oswald h5,.title-oswald h6{font-weight:500}
#outer-wrapper{position:relative;overflow:hidden;width:100%;max-width:100%;margin:0 auto;background-color:$(outer.bg);box-shadow:0 0 20px rgba(0,0,0,0.1)}
#outer-wrapper.boxed{max-width:calc($(row.width) + 60px)}
.row-x1{width:$(row.width)}
#content-wrapper{position:relative;float:left;width:100%;overflow:hidden;padding:30px 0;margin:0;border-top:0}
#content-wrapper > .container{margin:0 auto}
#main-wrapper{position:relative;float:left;width:calc(100% - ($(sidebar.width) + 30px));box-sizing:border-box;padding:0}
.left-sidebar #main-wrapper,.rtl #main-wrapper{float:right}
#sidebar-wrapper{position:relative;float:right;width:$(sidebar.width);box-sizing:border-box;padding:0}
.left-sidebar #sidebar-wrapper,.rtl #sidebar-wrapper{float:left}
.entry-image-link,.cmm-avatar,.comments .avatar-image-container{overflow:hidden;background-color:rgba(155,155,155,0.08);z-index:5;color:transparent!important}
.entry-thumb{display:block;position:relative;width:100%;height:100%;background-size:cover;background-position:center center;background-repeat:no-repeat;z-index:1; transition:opacity .35s ease,transform .3s ease}
.entry-thumb.loaded{opacity:1}

.before-mask:before{content:'';position:absolute;left:0;right:0;bottom:0;height:70%;background-image:linear-gradient(to bottom,transparent,rgba(0,0,0,0.65));-webkit-backface-visibility:hidden;backface-visibility:hidden;z-index:2;opacity:1;margin:0;transition:opacity .25s ease}
.entry-title{color:$(post.title.color)}
.entry-title a{color:$(post.title.color);display:block}
.entry-title a:hover{color:$(post.title.hover.color)}
.excerpt{font-display: swap; font-family:var(--text-font)}
.entry-category{position:absolute;top:15px;left:15px;height:20px;background-color:$(tag.bg);font-size:11px;color:$(tag.color);font-weight:400;z-index:10;box-sizing:border-box;padding:0 5px;margin:0;border:1px solid rgba(0,0,0,.1);border-radius:2px}
.rtl .entry-category{left:unset;right:15px}
.entry-info{position:absolute;bottom:0;left:0;overflow:hidden;width:100%;background-image:linear-gradient(to bottom,transparent,rgba(0,0,0,0.3));z-index:10;box-sizing:border-box;padding:15px}
.entry-info .entry-meta{color:#eee}
.entry-info .entry-title{text-shadow:0 1px 2px rgba(0,0,0,0.5)}
.entry-info .entry-title a{color:#fff}
.social-bg .share a,.social-bg-hover .share a:hover{background-color:$(meta.color)}
.social-bg .external-link a,.social-bg-hover .external-link a:hover{background-color:$(button.hover.bg)}
.social-color .share a,.social-color-hover .share a:hover{color:$(meta.color)}
.social-color .external-link a,.social-color-hover .external-link a:hover{color:$(button.hover.bg)}
#header-wrapper{position:relative;float:left;width:100%;margin:0}
.headerify-wrap,.headerify{position:relative;float:left;width:100%;height:60px;background-color:$(navbar.bg);box-sizing:border-box;padding:0;margin:0;border-bottom:1px solid $(navbar.border)}
#header-wrapper .container{position:relative;margin:0 auto}
.main-logo-wrap{position:relative;float:left;margin:0 30px 0 0}
.rtl .main-logo-wrap{float:right;margin:0 0 0 30px}
.main-logo{position:relative;float:left;width:100%;height:34px;padding:13px 0;margin:0}
.main-logo .main-logo-img{float:left;height:34px;overflow:hidden}
.main-logo img{max-width:100%;height:34px;margin:0}
.main-logo h1{font-size:22px;color:$(navbar.color);line-height:34px;margin:0}
.main-logo h1 a{color:$(navbar.color)}
.main-logo #h1-tag{position:absolute;top:-9000px;left:-9000px;display:none;visibility:hidden}
.main-menu-wrap{position:static;float:left;height:60px;margin:0}
.rtl .main-menu-wrap{float:right}

#magify-main-menu .widget,#magify-main-menu .widget > .widget-title{display:block}
 #magify-main-menu{position:static;width:100%;height:60px;z-index:10}
#magify-main-menu ul > li{position:relative;float:left;display:inline-block;padding:0;margin:0}
.rtl #magify-main-menu ul > li{float:right}
#magify-main-menu-nav > li > a{position:relative;display:block;height:60px;font-size:14px;color:$(navbar.color);font-weight:600;text-transform:uppercase;line-height:60px;padding:0 15px;margin:0}
.main-oswald #magify-main-menu-nav > li > a{font-weight:500}
#magify-main-menu-nav > li:hover > a{color:$(navbar.hover.color)}
#magify-main-menu ul > li > ul{position:absolute;float:left;left:0;top:60px;width:180px;background-color:$(submenu.bg);z-index:99999;visibility:hidden;opacity:0;-webkit-transform:translateY(-10px);transform:translateY(-10px);padding:0;box-shadow:0 2px 5px 0 rgba(0,0,0,0.15),0 2px 10px 0 rgba(0,0,0,0.17)}
.rtl #magify-main-menu ul > li > ul{left:auto;right:0}
#magify-main-menu ul > li > ul > li > ul{position:absolute;top:0;left:100%;-webkit-transform:translateX(-10px);transform:translateX(-10px);margin:0}
.rtl #magify-main-menu ul > li > ul > li > ul{left:unset;right:100%;-webkit-transform:translateX(10px);transform:translateX(10px)}
#magify-main-menu ul > li > ul > li{display:block;float:none;position:relative}
.rtl #magify-main-menu ul > li > ul > li{float:none}
#magify-main-menu ul > li > ul > li a{position:relative;display:block;height:36px;font-size:13px;color:$(submenu.color);line-height:36px;font-weight:400;box-sizing:border-box;padding:0 15px;margin:0;border-bottom:1px solid rgba(155,155,155,0.07)}
#magify-main-menu ul > li > ul > li:last-child a{border:0}
#magify-main-menu ul > li > ul > li:hover > a{color:$(submenu.hover.color)}
#magify-main-menu ul > li.has-sub > a:after{content:'\f078';float:right;font-display: swap; font-family:'icomoon',sans-serif;font-size:9px;font-weight:900;margin:-1px 0 0 5px}
.rtl #magify-main-menu ul > li.has-sub > a:after{float:left;margin:-1px 5px 0 0}
#magify-main-menu ul > li > ul > li.has-sub > a:after{content:'\f054';float:right;margin:0}
.rtl #magify-main-menu ul > li > ul > li.has-sub > a:after{content:'\f053'}
#magify-main-menu ul > li:hover > ul,#magify-main-menu ul > li > ul > li:hover > ul{visibility:visible;opacity:1;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-transform:translate(0);transform:translate(0)}
#magify-main-menu ul ul{transition:all .17s ease}


.tab-active{display:block}
.tab-animated,.post-animated{-webkit-animation-duration:.5s;animation-duration:.5s;-webkit-animation-fill-mode:both;animation-fill-mode:both}
@keyframes fadeIn {
from{opacity:0}
to{opacity:1}
}
.tab-fadeIn,.post-fadeIn{animation-name:fadeIn}
@keyframes fadeInUp {
from{opacity:0;transform:translate3d(0,5px,0)}
to{opacity:1;transform:translate3d(0,0,0)}
}
.tab-fadeInUp,.post-fadeInUp{animation-name:fadeInUp}



.search-toggle{position:absolute;top:0;right:0;width:60px;height:60px;background-color:rgba(155,155,155,0.03);color:$(navbar.color);font-size:14px;text-align:center;line-height:60px;cursor:pointer;z-index:20;padding:0;margin:0;transition:margin .25s ease}
.rtl .search-toggle{right:unset;left:0}
.search-toggle:after{content:"\f002";font-display: swap; font-family:'icomoon',sans-serif;font-weight:900;margin:0}
.search-active .search-toggle:after{content:"\f057"}
.search-toggle:hover{color:$(navbar.hover.color)}
#nav-search{position:absolute;top:70px;right:0;width:320px;max-width:100%;height:60px;z-index:25;background-color:$(submenu.bg);box-sizing:border-box;padding:10px;visibility:hidden;opacity:0;-webkit-transform:translateY(-10px);transform:translateY(-10px);border-radius:2px;box-shadow:0 2px 5px 0 rgba(0,0,0,0.15),0 2px 10px 0 rgba(0,0,0,0.17);transition:all .17s ease}
.search-active #nav-search{visibility:visible;opacity:1;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-transform:translate(0);transform:translate(0)}
.rtl #nav-search{right:unset;left:0}
#nav-search:before{content:'';position:absolute;top:0;right:20px;width:0;height:0;border:10px solid transparent;border-bottom-color:$(submenu.bg);margin:-20px 0 0}
.rtl #nav-search:before{right:unset;left:20px}
#nav-search .search-form{width:100%;height:38px;background-color:rgba(155,155,155,0.03);display:flex;overflow:hidden;box-sizing:border-box;padding:2px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
#nav-search .search-input{width:100%;color:$(submenu.color);margin:0;padding:0 10px;background-color:rgba(0,0,0,0);font-display: swap; font-family:inherit;font-size:14px;font-weight:400;box-sizing:border-box;border:0}
.rtl #nav-search .search-input{padding:0 15px 0 50px}
#nav-search .search-input:focus{color:$(submenu.color);outline:none}
#nav-search .search-input::placeholder{color:$(submenu.color);opacity:.5}
#nav-search .search-action{background-color:$(button.bg);font-display: swap; font-family:inherit;font-size:14px;color:$(button.color);font-weight:600;cursor:pointer;padding:0 12px;margin:0;border:0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
#nav-search .search-action:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}
.overlay{visibility:hidden;opacity:0;position:fixed;top:0;left:0;right:0;bottom:0;background-color:rgba(23,28,36,0.6);z-index:1000;margin:0;transition:all .25s ease}
.show-mobile-menu{display:none;position:absolute;top:0;left:0;height:60px;color:$(navbar.color);font-size:16px;font-weight:600;line-height:60px;text-align:center;cursor:pointer;z-index:20;padding:0 20px}
.rtl .show-mobile-menu{left:auto;right:0}
.show-mobile-menu:before{content:"\f0c9";font-display: swap; font-family:'icomoon',sans-serif;font-weight:900}
.show-mobile-menu:hover{color:$(navbar.hover.color)}
#slide-menu{display:none;position:fixed;width:300px;height:100%;top:0;left:0;bottom:0;background-color:$(navbar.bg);overflow:auto;z-index:1010;left:0;-webkit-transform:translateX(-100%);transform:translateX(-100%);visibility:hidden;box-shadow:3px 0 7px rgba(0,0,0,0.1);transition:all .25s ease}
.rtl #slide-menu{left:unset;right:0;-webkit-transform:translateX(100%);transform:translateX(100%)}
.nav-active #slide-menu,.rtl .nav-active #slide-menu{-webkit-transform:translateX(0);transform:translateX(0);visibility:visible}
.slide-menu-header{float:left;width:100%;height:60px;background-color:$(navbar.bg);overflow:hidden;box-sizing:border-box;box-shadow:0 0 20px rgba(0,0,0,0.15)}
.mobile-logo{float:left;max-width:calc(100% - 60px);height:34px;overflow:hidden;box-sizing:border-box;padding:0 20px;margin:13px 0 0}
.rtl .mobile-logo{float:right}
.mobile-logo a{display:block;height:34px;font-size:22px;color:$(navbar.color);line-height:34px;font-weight:700}
.title-oswald .mobile-logo a{font-weight:500}
.mobile-logo img{max-width:100%;height:34px}
.hide-mobile-menu{position:absolute;top:0;right:0;display:block;height:60px;color:$(navbar.color);font-size:16px;line-height:60px;text-align:center;cursor:pointer;z-index:20;padding:0 20px}
.rtl .hide-mobile-menu{right:auto;left:0}
.hide-mobile-menu:before{content:"\f057";font-display: swap; font-family:'icomoon',sans-serif;font-weight:900}
.hide-mobile-menu:hover{color:$(navbar.hover.color)}
.slide-menu-flex{display:flex;flex-direction:column;justify-content:space-between;float:left;width:100%;height:calc(100% - 60px)}
.mobile-menu{position:relative;float:left;width:100%;box-sizing:border-box;padding:20px}
.mobile-menu > ul{margin:0}
.mobile-menu .m-sub{display:none;padding:0}
.mobile-menu ul li{position:relative;display:block;overflow:hidden;float:left;width:100%;font-size:14px;font-weight:600;line-height:40px;margin:0;padding:0}
.main-oswald .mobile-menu ul li{font-weight:500}
.mobile-menu > ul li ul{overflow:hidden}
.mobile-menu ul li a{color:$(navbar.color);padding:0;display:block}
.mobile-menu > ul > li > a{text-transform:uppercase}
.mobile-menu ul li.has-sub .submenu-toggle{position:absolute;top:0;right:0;color:$(navbar.color);cursor:pointer}
.rtl .mobile-menu ul li.has-sub .submenu-toggle{right:auto;left:0}
.mobile-menu ul li.has-sub .submenu-toggle:after{content:'\f078';font-display: swap; font-family:'icomoon',sans-serif;font-weight:900;float:right;width:40px;font-size:12px;text-align:right;transition:all .17s ease}
.rtl .mobile-menu ul li.has-sub .submenu-toggle:after{text-align:left}
.mobile-menu ul li.has-sub.show > .submenu-toggle:after{content:'\f077'}
.mobile-menu ul li a:hover,.mobile-menu ul li.has-sub.show > a,.mobile-menu ul li.has-sub.show > .submenu-toggle{color:$(navbar.hover.color)}
.mobile-menu > ul > li > ul > li a{font-size:13px;font-weight:400;opacity:.8;padding:0 0 0 15px}
.rtl .mobile-menu > ul > li > ul > li a{padding:0 15px 0 0}
.mobile-menu > ul > li > ul > li > ul > li > a{padding:0 0 0 30px}
.rtl .mobile-menu > ul > li > ul > li > ul > li > a{padding:0 30px 0 0}
.mobile-menu ul > li > .submenu-toggle:hover{color:$(navbar.hover.color)}
.social-mobile{position:relative;float:left;width:100%;margin:0}
.social-mobile ul{display:block;text-align:center;padding:20px;margin:0}
.social-mobile ul li{display:inline-block;margin:0 5px}
.social-mobile ul li a{display:block;font-size:15px;color:$(navbar.color);padding:0 5px}
.social-mobile ul li a:hover{color:$(navbar.hover.color)}


.is-fixed{position:fixed;top:-60px;left:0;width:100%;z-index:990;transition:top .17s ease}
.headerify.show{top:0;box-shadow:0 0 20px rgba(0,0,0,.15)}
.nav-active .is-fixed{top:0}
.loader{position:relative;height:100%;overflow:hidden;display:block;margin:0}
.loader:after{content:'';position:absolute;top:50%;left:50%;width:28px;height:28px;margin:-16px 0 0 -16px;border:2px solid $(main.color);border-right-color:rgba(155,155,155,0.2);border-radius:100%;animation:spinner 1.1s infinite linear;transform-origin:center}
@-webkit-keyframes spinner {
0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}
to{-webkit-transform:rotate(1turn);transform:rotate(1turn)}
}
@keyframes spinner {
0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}
to{-webkit-transform:rotate(1turn);transform:rotate(1turn)}
}

#blog-pager{float:left;width:100%;font-size:15px;font-weight:500;text-align:center;clear:both;box-sizing:border-box;padding:30px 0 0;margin:30px 0 10px;border-top:1px solid rgba(155,155,155,0.1)}
#blog-pager .loading{display:none}
#blog-pager .loading .loader{height:34px}
#blog-pager .no-more.show{display:inline-block}
#blog-pager .loading .loader:after{width:26px;height:26px;margin:-15px 0 0 -15px}

.no-posts{display:block;font-size:14px;color:$(title.color);padding:30px 0;font-weight:400}
#featured .widget{position:relative;overflow:hidden;background-color:$(widget.bg);height:440px;padding:20px;margin:30px 0 0;border:1px solid $(widget.border.color)}
.title-wrap{position:relative;float:left;width:100%;line-height:1;padding:0 0 15px;margin:0 0 20px;border-bottom:2px solid $(wtitle.border.color)}
.title-wrap:after{content:'';position:absolute;left:0;bottom:0;width:40px;height:2px;background-color:$(wtitle.dash.color);margin:0 0 -2px}
.rtl .title-wrap:after{left:unset;right:0}
.title-wrap > h3{float:left;font-display: swap; font-family:var(--body-font);font-size:16px;color:$(wtitle.color);font-weight:700;margin:0}
.block-posts .widget{display:none;position:relative;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:20px;margin:0 0 30px;border:1px solid $(widget.border.color)}
.title-wrap > a.more:hover{color:$(main.color)}

#main-wrapper #main{position:relative;float:left;width:100%;box-sizing:border-box;margin:0}


.index #main-wrapper #main{background-color:$(widget.bg);padding:20px;border:1px solid $(widget.border.color)}
.index.nb-style #main-wrapper #main{border:0}
.queryMessage{overflow:hidden;color:$(title.color);font-size:15px;font-weight:400;padding:0 0 15px;margin:0 0 20px;border-bottom:1px solid rgba(155,155,155,0.1)}
.queryMessage .query-info{margin:0}
.queryMessage .search-query,.queryMessage .search-label{color:$(title.color);font-weight:600}
.queryMessage .search-query:before,.queryMessage .search-label:before{content:"\201c"}
.queryMessage .search-query:after,.queryMessage .search-label:after{content:"\201d"}
.queryEmpty{font-size:13px;font-weight:400;padding:0;margin:40px 0;text-align:center}
.blog-post{display:block;word-wrap:break-word}
.item .blog-post{float:left;width:100%}
.index-post-wrap{position:relative;float:left;width:100%;box-sizing:border-box;padding:0;margin:0}
.post-animated{-webkit-animation-duration:.5s;animation-duration:.5s;-webkit-animation-fill-mode:both;animation-fill-mode:both}
@keyframes fadeIn {
from{opacity:0}
to{opacity:1}
}
.post-fadeIn{animation-name:fadeIn}
@keyframes fadeInUp {
from{opacity:0;transform:translate3d(0,5px,0)}
to{opacity:1;transform:translate3d(0,0,0)}
}
.post-fadeInUp{animation-name:fadeInUp}
.index-post{position:relative;float:left;width:100%;box-sizing:border-box;padding:0 0 20px;margin:0 0 20px;border-bottom:1px solid rgba(155,155,155,0.1)}
.index-post.post-ad-type{padding:0 0 20px!important;margin:0 0 20px!important;border-width:1px!important}
.blog-posts .index-post:last-child{padding:0;margin:0;border:0}
.blog-posts .index-post.post-ad-type:last-child{padding:0!important;margin:0!important;border-width:0!important}
.index-post .entry-image{position:relative;float:left;width:245px;height:170px;overflow:hidden;margin:0 18px 0 0}
.rtl .index-post .entry-image{float:right;margin:0 0 0 18px}
.index-post .entry-image-link{position:relative;float:left;width:100%;height:100%;z-index:1;overflow:hidden}
.index-post .entry-header{overflow:hidden}
.index-post .entry-title{float:left;width:100%;font-size:23px;font-weight:700;line-height:1.4em;margin:0 0 15px}
.title-oswald .index-post .entry-title{font-weight:500}
.index-post .entry-excerpt{float:left;width:100%;font-size:14px;line-height:1.6em;margin:0}
.entry-meta{font-display: swap; font-family:var(--meta-font);font-size:11px;font-weight:400;overflow:hidden;padding:0 1px;margin:0}
.index-post .entry-meta{float:left;width:100%;font-size:12px;margin:0 0 15px}
.no-meta .entry-meta{display:none}
.entry-meta a{color:$(meta.color)}
.entry-meta a:hover{color:$(body.link.color)}
.entry-meta span{float:left;font-style:normal;margin:0 10px 0 0}
.rtl .entry-meta span{float:right;margin:0 0 0 10px}
.entry-meta span:before{display:inline-block;font-display: swap; font-family:'icomoon',sans-serif;font-size:11px;font-weight:400;font-style:normal;margin:0 5px 0 0}
.rtl .entry-meta span:before{margin:0 0 0 5px}
.entry-meta .entry-author:before{content:'\f007'}
.entry-meta .entry-time:before{content:'\f017'}
.entry-meta .entry-comments-link:before{content:'\f086'}
.entry-meta .entry-readTime:before{content:'\f253'}
.entry-meta .entry-view:before{content:'\f06e'}

.entry-meta .entry-comments-link{display:none}
.entry-meta .entry-comments-link.show{display:block}
.inline-ad-wrap{position:relative;float:left;width:100%;margin:0}
.inline-ad{position:relative;float:left;width:100%;text-align:center;line-height:1;margin:0}
.item-post-inner{position:relative;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:0;margin:0;border:1px solid $(widget.border.color)}
.nb-style .item-post-inner{border:0}
.item-post-padd{position:relative;float:left;width:100%;box-sizing:border-box;padding:20px 20px 25px;margin:0}
#breadcrumb{font-display: swap; font-family:var(--meta-font);font-size:13px;color:$(meta.color);font-weight:400;margin:0 0 15px}
#breadcrumb a{color:$(meta.color);transition:color .25s}
#breadcrumb a.home{color:$(body.link.color)}
#breadcrumb a:hover{color:$(body.link.color)}
#breadcrumb a,#breadcrumb em{display:inline-block}
#breadcrumb .delimiter:after{content:'\f054';font-display: swap; font-family:'icomoon',sans-serif;font-size:9px;font-weight:900;font-style:normal;margin:0 3px}
.rtl #breadcrumb .delimiter:after{content:'\f053'}
.item-post .blog-entry-header{position:relative;float:left;width:100%;overflow:hidden;padding:0 0 20px;margin:0;border-bottom:1px solid rgba(155,155,155,0.1)}
.item-post h1.entry-title{font-size:$(itempost.title.size);line-height:1.4em;font-weight:700;position:relative;display:block;margin:0}
.item-post .has-meta h1.entry-title{margin-bottom:20px}
.item-post .blog-entry-header .entry-meta{font-size:13px}
.item-post .blog-entry-header .entry-meta span:before{font-size:12px}
#post-body{position:relative;float:left;width:100%;font-display: swap; font-family:var(--text-font);font-size:$(itempost.content.size);color:$(post.text.color);line-height:1.6em;padding:25px 0 0;margin:0}
.post-body h1,.post-body h2,.post-body h3,.post-body h4{font-size:18px;color:$(post.title.color);margin:0 0 15px}
.post-body h1,.post-body h2{font-size:23px}
.post-body h3{font-size:21px}
blockquote{background-color:rgba(155,155,155,0.05);color:$(post.title.color);font-style:italic;padding:15px 25px;margin:0;border-left:3px solid rgba(155,155,155,0.2)}
.rtl blockquote{border-left:0;border-right:3px solid rgba(155,155,155,0.2)}
blockquote:before,blockquote:after{display:inline-block;font-display: swap; font-family:'icomoon',sans-serif;font-style:normal;font-weight:900;color:$(post.title.color);line-height:1}
blockquote:before,.rtl blockquote:after{content:'\f10d';margin:0 10px 0 0}
blockquote:after,.rtl blockquote:before{content:'\f10e';margin:0 0 0 10px}
.post-body ul,.widget .post-body ol{line-height:1.5em;font-weight:400;padding:0 0 0 15px;margin:10px 0}
.rtl .post-body ul,.rtl .widget .post-body ol{padding:0 15px 0 0}
.post-body li{margin:5px 0;padding:0;line-height:1.5em}
.post-body ul li{list-style:disc inside}
.post-body ol li{list-style:decimal inside}
.post-body u{text-decoration:underline}
.post-body strike{text-decoration:line-through}
.post-body a{color:$(body.link.color)}
.post-body a:hover{text-decoration:underline}
.post-body a.button{display:inline-block;height:31px;background-color:$(button.bg);font-display: swap; font-family:var(--body-font);font-size:14px;color:$(button.color);font-weight:400;line-height:31px;text-align:center;text-decoration:none;cursor:pointer;padding:0 15px;margin:0 5px 5px 0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.rtl .post-body a.button{margin:0 0 5px 5px}
.post-body a.colored-button{color:#fff}
.post-body a.button:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}
.post-body a.colored-button:hover{background-color:$(button.hover.bg)!important;color:$(button.hover.color)!important}


.post-footer{position:relative;float:left;width:100%;box-sizing:border-box;padding:0}
.entry-tags{overflow:hidden;float:left;width:100%;height:auto;position:relative;margin:25px 0 0}
.entry-tags a,.entry-tags span{float:left;background-color:rgba(155,155,155,0.05);color:$(meta.color);font-weight:400;line-height:22px;box-sizing:border-box;padding:0 9px;margin:5px 5px 0 0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.rtl .entry-tags a,.rtl .entry-tags span{float:right;margin:5px 0 0 5px}
.entry-tags span{background-color:$(darkbutton.bg);color:$(darkbutton.color)}
.entry-tags a:hover{background-color:$(button.bg);color:$(button.color)}
.post-share{position:relative;float:left;width:100%;background-color:rgba(155,155,155,0.02);overflow:hidden;box-sizing:border-box;padding:15px 20px 20px;margin:0;border-top:1px solid $(widget.border.color)}
.nb-style .post-share{background-color:$(widget.bg);border-top:1px solid rgba(155,155,155,0.1)}
.entry-header .post-share,.nb-style .entry-header .post-share{background-color:$(widget.bg);padding:15px 0 0;margin:20px 0 0;border-top:1px solid rgba(155,155,155,0.1)}
  
 
 
.about-author{position:relative;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:20px;margin:30px 0 0;border:1px solid $(widget.border.color)}
.nb-style .about-author{border:0}
.about-author .avatar-container{position:relative;float:left;width:60px;height:60px;background-color:rgba(155,155,155,0.1);overflow:hidden;margin:0 17px 0 0}
.rtl .about-author .avatar-container{float:right;margin:0 0 0 17px}
.about-author .author-avatar{float:left;width:100%;height:100%;background-size:100% 100%;background-position:0 0;background-repeat:no-repeat;opacity:0;overflow:hidden;transition:opacity .35s ease}
.about-author .author-avatar.loaded{opacity:1}
.about-author .author-name{display:block;font-size:19px;color:$(title.color);font-weight:700;margin:0 0 12px}
.title-oswald .about-author .author-name{font-weight:500}
.about-author .author-name a{color:$(title.color)}
.about-author .author-name a:hover{color:$(title.hover.color);text-decoration:none}
.author-description{overflow:hidden}
.author-description span{display:block;overflow:hidden;font-size:14px;color:$(body.text.color);font-weight:400;line-height:1.6em}
.author-description span br{display:none}
.author-description a{display:none;float:left;font-size:13px;color:$(body.text.color);box-sizing:border-box;padding:0;margin:12px 12px 0 0}
.rtl .author-description a{float:right;margin:12px 0 0 12px}
.author-description.show-icons li,.author-description.show-icons a{display:inline-block}
#related-wrap{overflow:hidden;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:20px;margin:30px 0 0;border:1px solid $(widget.border.color)}
.nb-style #related-wrap{border:0}
#related-wrap .related-tag{display:none}
.related-content{float:left;width:100%}
.related-content .loader{height:200px}
.related-posts{position:relative;overflow:hidden;display:flex;flex-wrap:wrap;padding:0;margin:0 -10px}
.related-posts .related-item{position:relative;float:left;width:calc(100% / 3);box-sizing:border-box;padding:0 10px;margin:20px 0 0}
.rtl .related-posts .related-item{float:right}
.related-posts .related-item.item-0,.related-posts .related-item.item-1,.related-posts .related-item.item-2{margin:0}
.related-posts .entry-image{position:relative}
.related-posts .entry-image-link{width:100%;height:140px;position:relative;display:block;overflow:hidden}
.related-posts .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:8px 0 0}
.title-oswald .related-posts .entry-title{font-weight:500}
.related-posts .entry-meta{margin:3px 0 0}
.post-nav{float:left;width:100%;font-size:13px;margin:30px 0 0}
.post-nav a{color:$(meta.color)}
.post-nav a:hover{color:$(title.hover.color)}
.post-nav span{color:$(meta.color);opacity:.8}




#blog-pager .load-more{     display: inline-block;
height:34px;background-color:$(button.bg);font-size:14px;color:$(button.color);font-weight:400;line-height:34px;box-sizing:border-box;padding:0 30px;margin:0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
#blog-pager #load-more-link{color:$(button.color);cursor:pointer}
#blog-pager #load-more-link:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}
#blog-pager .load-more.no-more{background-color:rgba(155,155,155,0.05);color:$(meta.color)}
#blog-pager .no-more{display:none}


.blog-post-comments{display:none;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:20px;margin:30px 0 0;border:1px solid $(widget.border.color)}
.comments .comment-header .user a{color:$(title.color)}
.comments .comment-header .user a:hover{color:$(title.hover.color)}.comments .comment-header .user{font-display: swap; font-family:var(--title-font);font-size:18px;color:$(title.color);display:inline-block;font-style:normal;font-weight:700;margin:0 0 3px}
.comments .comment-actions a{display:inline-block;height:18px;background-color:rgba(155,155,155,0.05);font-size:11px;color:$(meta.color);font-style:normal;line-height:16px;padding:0 7px;margin:0 12px 0 0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.comments .comment-content{font-display: swap; font-family:var(--text-font);font-size:14px;color:$(body.text.color);line-height:1.6em;margin:15px 0}
.comments .comment-header .icon.blog-author{display:inline-block;font-size:12px;color:$(main.color);font-weight:400;vertical-align:top;margin:-3px 0 0 5px}
.comment-header .datetime a{font-display: swap; font-family:var(--meta-font);font-size:11px;color:$(meta.color);padding:0}
.comments .comment-actions a:hover{background-color:$(button.bg);color:$(button.color)}
.comments .toplevel-thread > #top-continue a{display:block;color:$(body.link.color);padding:0 0 0 50px;margin:30px 0 0}
.comments .toplevel-thread > #top-continue a:hover{color:$(title.color)}
p.comments-message{float:left;width:100%;font-size:12px;color:$(meta.color);font-style:italic;padding:0 0 20px;margin:0 0 20px;border-bottom:1px solid rgba(155,155,155,0.1)}
p.comments-message > a{color:$(body.link.color)}
p.comments-message > a:hover{color:$(title.color)}
p.comment-footer span{color:$(meta.color)}


#sidebar-wrapper .sidebar{float:left;width:100%}
.sidebar > .widget{position:relative;float:left;width:100%;background-color:$(widget.bg);box-sizing:border-box;padding:20px;margin:0 0 30px;border:1px solid $(widget.border.color)}
.nb-style .sidebar > .widget{border:0}
#sidebar > .widget:last-child,#sidebar-ads > .widget{margin:0}
.post .sidebar-ads-active #sidebar > .widget:last-child{margin:0 0 30px}
.sidebar > .widget.no-style{background-color:rgba(0,0,0,0);padding:0;border:0;border-radius:0;box-shadow:unset}
.sidebar > .widget .widget-title{position:relative;float:left;width:100%;line-height:1;padding:0 0 15px;margin:0 0 20px;border-bottom:2px solid $(wtitle.border.color)}
.sidebar > .widget .widget-title:after{content:'';position:absolute;left:0;bottom:0;width:40px;height:2px;background-color:$(wtitle.dash.color);margin:0 0 -2px}
.rtl .sidebar > .widget .widget-title:after{left:unset;right:0}
.sidebar > .widget .widget-title > h3{float:left;font-display: swap; font-family:var(--body-font);font-size:16px;color:$(wtitle.color);font-weight:700;margin:0}
.main-oswald .sidebar > .widget .widget-title > h3{font-weight:500}
.rtl .sidebar > .widget .widget-title > h3{float:right}
.sidebar > .widget.no-style .widget-title{display:none}
.sidebar .widget-content{float:left;width:100%;box-sizing:border-box;padding:0;margin:0}

.PopularPosts .popular-post{display:block;overflow:hidden;padding:0;margin:20px 0 0}
.PopularPosts .popular-post.item-0{margin:0}
.PopularPosts .entry-image-link{position:relative;float:left;width:85px;height:65px;overflow:hidden;z-index:1;margin:0 13px 0 0}
.rtl .PopularPosts .entry-image-link{float:right;margin:0 0 0 13px}
.PopularPosts .entry-image-link .entry-thumb{width:85px;height:65px}
.PopularPosts .entry-header{overflow:hidden}
.PopularPosts .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:0}
.title-oswald .PopularPosts .entry-title{font-weight:500}
.PopularPosts .entry-meta{margin:3px 0 0}
.FeaturedPost .entry-image-link{position:relative;float:left;width:100%;height:175px;z-index:1;overflow:hidden;margin:0}
.FeaturedPost .entry-header{float:left;margin:0}
.FeaturedPost .entry-title{font-size:18px;font-weight:700;line-height:1.3em;margin:12px 0 0}
.title-oswald .FeaturedPost .entry-title{font-weight:500}
.FeaturedPost .entry-meta{margin:7px 0 0;font-size:13px}
.sidebar > .widget.FollowByEmail:before{content:'';position:absolute;height:4px;background-color:$(wtitle.dash.color);top:0;left:0;right:0;margin:-1px -1px 0}
.nb-style .sidebar > .widget.FollowByEmail:before{margin:0}
.FollowByEmail .widget-content{position:relative;box-sizing:border-box;padding:0}
.main .item-post-inner .FollowByEmail .widget-content-inner{box-sizing:border-box;padding:20px;border:1px solid rgba(155,155,155,0.2)}
.follow-by-email-content{position:relative;z-index:5}
.follow-by-email-inner {    padding: 5px 0px;}
.follow-by-email-title{font-display: swap; font-family:var(--body-font);font-size:16px;color:$(title.color);font-weight:700;margin:0 0 13px}
.follow-by-email-text{font-size:13px;line-height:1.5em;margin:0 0 15px}
.follow-by-email-address{width:100%;height:34px;background-color:rgba(255,255,255,0.05);font-display: swap; font-family:inherit;font-size:12px;color:$(meta.color);box-sizing:border-box;padding:0 10px;margin:0 0 10px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
.follow-by-email-address:focus{background-color:rgba(155,155,155,0.05);border-color:rgba(155,155,155,0.4)}
.follow-by-email-submit{width:100%;height:34px;background-color:$(button.bg);font-display: swap; font-family:inherit;font-size:14px;color:$(button.color);font-weight:400;line-height:34px;cursor:pointer;padding:0 20px;border:0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.follow-by-email-submit:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}
.list-label li,.archive-list li{position:relative;display:block}
.list-label li a,.archive-list li a{display:block;color:$(title.color);font-weight:400;text-transform:capitalize;padding:7px 0}

.list-label li a:hover,.archive-list li a:hover{color:$(title.hover.color)}
.list-label .label-count,.archive-list .archive-count{float:right;font-size:11px;color:$(meta.color);text-decoration:none;margin:1px 0 0 5px}
.rtl .list-label .label-count,.rtl .archive-list .archive-count{float:left;margin:1px 5px 0 0}
.cloud-label li{position:relative;float:left;margin:0 5px 5px 0}
.rtl .cloud-label li{float:right;margin:0 0 5px 5px}
.cloud-label li a{display:block;height:25px;background-color:rgba(155,155,155,0.05);color:$(meta.color);font-size:11px;line-height:23px;font-weight:400;box-sizing:border-box;padding:0 9px;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.cloud-label li a:hover{background-color:$(button.bg);color:$(button.color)}
.cloud-label .label-count{display:none}
.BlogSearch .search-form{display:flex;background-color:rgba(255,255,255,0.05);padding:2px;border:1px solid rgba(155,155,155,0.2)}
.BlogSearch .search-input{float:left;width:100%;height:32px;background-color:rgba(0,0,0,0);font-display: swap; font-family:inherit;font-weight:400;font-size:14px;color:$(body.text.color);line-height:32px;box-sizing:border-box;padding:0 10px;margin:0;border:0;border-radius:0}
.BlogSearch .search-input:focus{outline:none}
.BlogSearch .search-action{float:right;width:auto;height:32px;font-display: swap; font-family:inherit;font-size:14px;font-weight:600;line-height:32px;cursor:pointer;box-sizing:border-box;background-color:$(button.bg);color:$(button.color);padding:0 15px;border:0;border-bottom:2px solid rgba(0,0,0,.1)}
.BlogSearch .search-action:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}

.widget-ready .PageList ul li,.widget-ready .LinkList ul li{position:relative;display:block}
.widget-ready .PageList ul li a,.widget-ready .LinkList ul li a{display:block;color:$(title.color);font-size:13px;font-weight:400;padding:5px 0}
.widget-ready .PageList ul li:first-child a,.widget-ready .LinkList ul li:first-child a{padding:0 0 5px}
.widget-ready .PageList ul li a:hover,.widget-ready .LinkList ul li a:hover{color:$(title.hover.color)}
.Text .widget-content{font-display: swap; font-family:var(--text-font);font-size:13px;line-height:1.5em}
.Image .image-caption{font-size:13px;line-height:1.5em;margin:10px 0 0;display:block}
.contact-form-widget form{font-display: swap; font-family:inherit;font-weight:400}
.contact-form-name{float:left;width:100%;height:34px;background-color:rgba(255,255,255,0.05);font-display: swap; font-family:inherit;font-size:13px;color:$(body.text.color);line-height:34px;box-sizing:border-box;padding:5px 10px;margin:0 0 10px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
.contact-form-email{float:left;width:100%;height:34px;background-color:rgba(255,255,255,0.05);font-display: swap; font-family:inherit;font-size:13px;color:$(body.text.color);line-height:34px;box-sizing:border-box;padding:5px 10px;margin:0 0 10px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
.contact-form-email-message{float:left;width:100%;background-color:rgba(255,255,255,0.05);font-display: swap; font-family:inherit;font-size:13px;color:$(body.text.color);box-sizing:border-box;padding:5px 10px;margin:0 0 10px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
.contact-form-button-submit{float:left;width:100%;height:34px;background-color:$(button.bg);font-display: swap; font-family:inherit;font-size:15px;color:$(button.color);font-weight:400;line-height:33px;cursor:pointer;box-sizing:border-box;padding:0 10px;margin:0;border:0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.contact-form-button-submit:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}
.contact-form-error-message-with-border{float:left;width:100%;background-color:rgba(0,0,0,0);font-size:12px;color:#e74c3c;text-align:left;line-height:12px;padding:3px 0;margin:10px 0;box-sizing:border-box;border:0}
.contact-form-success-message-with-border{float:left;width:100%;background-color:rgba(0,0,0,0);font-size:12px;color:#27ae60;text-align:left;line-height:12px;padding:3px 0;margin:10px 0;box-sizing:border-box;border:0}
.rtl .contact-form-error-message-with-border,.rtl .contact-form-success-message-with-border{text-align:right}
.contact-form-cross{cursor:pointer;margin:0 0 0 3px}
.rtl .contact-form-cross{margin:0 3px 0 0}
.contact-form-error-message,.contact-form-success-message{margin:0}
.contact-form-name:focus,.contact-form-email:focus,.contact-form-email-message:focus{background-color:rgba(155,155,155,0.05);border-color:rgba(155,155,155,0.4)}

#footer-wrapper{background-color:$(footer.bg);color:$(footer.text.color);border-top:1px solid rgba(155,155,155,0.2)}
#footer-wrapper .container{position:relative;margin:0 auto}
#about-section{position:relative;float:left;width:100%;padding:30px 0;margin:0}
#about-section.no-items{padding:0;border:0}
.compact-footer #about-section{border:0}
#about-section .widget{position:relative;float:left;box-sizing:border-box;margin:0}
.rtl #about-section .widget{float:right}
#about-section .widget > widget-content{display:none}
#about-section .widget-content .widget-title > h3{position:relative;font-display: swap; font-family:var(--body-font);font-size:16px;color:$(footer.widget.title.color);font-weight:600;text-transform:uppercase;margin:0 0 15px}
.title-oswald #about-section .widget-content .widget-title > h3{font-weight:500}
#about-section .Image{width:70%;padding:0 30px 0 0}
.rtl #about-section .Image{padding:0 0 0 30px}
#about-section .Image .widget-content{position:relative;float:left;width:100%;margin:0}
#about-section .footer-logo{display:block;float:left;max-width:30%;max-height:44px;margin:0}
.rtl #about-section .footer-logo{float:right}
#about-section .footer-logo img{max-height:94px;vertical-align:middle}
#about-section .about-content{max-width:70%;display:block;float:left;padding:0 0 0 30px;box-sizing:border-box}
.rtl #about-section .about-content{float:right;padding:0 30px 0 0}
#about-section .Image .no-image .about-content{max-width:100%;padding:0 30px 0 0}
.rtl #about-section .Image .no-image .about-content{padding:0 0 0 30px}
#about-section .Image .image-caption{font-size:14px;margin:0}
#about-section .Image .image-caption a{color:$(footer.link.color)}
#about-section .Image .image-caption a:hover{color:$(footer.color)}
#about-section .LinkList{float:right;width:30%}
#about-section .LinkList .widget-content{float:right}
.rtl #about-section .LinkList,.rtl #about-section .LinkList .widget-content{float:left}
 ul.social-footer{     display: inline-block}
.rtl .about-section ul.social-footer{float:left}
 .social-footer li{float:left;margin:0 7px 0 0}
.rtl .about-section .social-footer li{float:right;margin:0 0 0 7px}
  .social-footer li:last-child,.rtl .about-section .social-footer li:last-child{margin:0}
  .social-footer li a{display:block;width:34px;height:34px;background-color:rgba(155,155,155,0.1);font-size:15px;color:$(footer.color);text-align:center;line-height:34px;box-sizing:border-box;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
  .social-footer li a:hover{color:#fff}
  .social-footer li a.instagram:hover{border:0}
#footerbar{display:block;width:100%;height:60px;background-color:$(footerbar.bg);color:$(footerbar.color);overflow:hidden;margin:0}
#footerbar.border > .container{border-top:1px solid rgba(155,155,155,0.2)}
.compact-footer #footerbar.border > .container{border:0}
#footerbar .footer-copyright{float:left;height:30px;font-size:14px;font-weight:400;line-height:30px;margin:15px 0 0}
.rtl #footerbar .footer-copyright{float:right}
#footerbar .footer-copyright a{color:$(footerbar.color)}
#footerbar .footer-copyright a:hover{color:$(footerbar.hover.color)}
#footer-menu{float:right;position:relative;display:block;margin:15px 0 0}
.rtl #footer-menu{float:left}
#footer-menu .widget > .widget-title,#footer-copyright .widget > .widget-title{display:none}
.footer-menu ul li{position:relative;float:left;margin:0}
.rtl .footer-menu ul li{float:right}
.footer-menu ul li a{float:left;height:30px;font-size:14px;color:$(footerbar.color);line-height:30px;padding:0;margin:0 0 0 20px}
.rtl .footer-menu ul li a{margin:0 20px 0 0}
#footer-menu ul li a:hover{color:$(footerbar.hover.color)}
#hidden-widgets-wrap,.hidden-widgets{display:none;visibility:hidden}

.errorWrap{color:$(title.color);text-align:center;padding:60px 0}
.errorWrap a{display:inline-block;height:32px;background-color:$(button.bg);font-size:14px;color:$(button.color);font-weight:400;line-height:32px;padding:0 30px;margin:15px 0 0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.errorWrap a:hover{background-color:$(button.hover.bg);color:$(button.hover.color)}


 amp-social-share {
    background-size: 28px auto;
}

.post-share {
    text-align: center;
}
 

.sidebar .social-footer li a{line-height:50px;width:50px;height:50px;font-size:18px;}
.sidebar .social-footer li a:hover{font-size:24px;opacity:.8;}

.skip-navigation{
background-color:#fff;
box-sizing:border-box;
color:#000;
display:block;
height:0;
left:0;
line-height:50px;
overflow:hidden;
padding-top:0;
position:fixed;
text-align:center;
top:0;
-webkit-transition:box-shadow .3s,height .3s,padding-top .3s;
transition:box-shadow .3s,height .3s,padding-top .3s;
width:100%;
z-index:900
}
.skip-navigation:focus{
box-shadow:0 4px 5px 0 rgba(0,0,0,.14),0 1px 10px 0 rgba(0,0,0,.12),0 2px 4px -1px rgba(0,0,0,.2);
height:50px
}


/* media q */
@media screen and (max-width: 1165px) {
#outer-wrapper{max-width:100%}
.row-x1{width:100%}
.headerify-wrap .headerify,.header-ad-wrap > .container,#featured-wrapper .container,#content-wrapper > .container,#footer-wrapper .container{box-sizing:border-box;padding:0 20px}
}
@media screen and (max-width: 980px) {
#main-wrapper,#sidebar-wrapper{width:100%}
#sidebar-wrapper{margin:30px 0 0}
}
@media screen and (max-width: 780px) {
#footerbar{height:auto;line-height:1.4em;padding:20px 0}
#footerbar .footer-copyright .widget{padding:0 0 15px}
}
@media screen and (max-width: 680px) {
.related-posts .related-item{width:100%;padding:0 10px;margin:20px 0 0!important}
.related-posts .related-item.item-0{margin:0!important}
.related-posts .entry-image-link{height:160px}
.related-posts .entry-title{margin:10px 0}
.index-post .entry-image,.rtl .index-post .entry-image{width:100%;height:180px;margin:0 0 15px}
.index-post .entry-header{float:left;width:100%}
.item-post h1.entry-title{font-size:31px}
}
@media screen and (max-width: 460px) {
.index-post .entry-title{font-size:20px}
.index-post .entry-excerpt{font-size:13px}
.item-post h1.entry-title{font-size:29px}
}
@media screen and (max-width: 360px) {
.index-post .entry-image,.rtl .index-post .entry-image{height:160px}
.index-post .entry-title{font-size:18px}
.item-post h1.entry-title{font-size:21px}
}
.rtl .title-wrap > h3{float:right}
@font-face {
  font-family: 'Cairo';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: local('Cairo'), local('Cairo-Regular'), url(https://fonts.gstatic.com/s/cairo/v6/SLXGc1nY6HkvalIkTpu0xg.woff2) format('woff2');
  unicode-range: U+0600-06FF, U+200C-200E, U+2010-2011, U+204F, U+2E41, U+FB50-FDFF, U+FE80-FEFC;
}

@font-face {
  font-family: 'icomoon';
  src:
    url('https://cdn.statically.io/gh/html-tools/html-tools.github.io/9f937878/icomoon.ttf') format('truetype'),
    url('https://cdn.statically.io/gh/html-tools/html-tools.github.io/9f937878/icomoon.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

#disqus_thread>iframe[src*="ads-iframe"]{display:none!important}
.blog-post-comments {display:block!important}

 ]]></b:skin> <b:else/><b:template-skin><![CDATA[
body#layout #outer-wrapper,body#layout .row{width:auto;padding:0}
body#layout{width:960px;position:relative;background-color:#f9f9f9;padding:95px 5px 0;margin:0}
body#layout:before{content:' Elmagnifico - v1.0 ';position:absolute;top:0;left:5px;right:5px;height:95px;font-display: swap; font-family:Roboto,sans-serif;font-size:23px;color:#1f2024;line-height:95px;text-align:center}
body#layout div.section{display:block;background-color:#f1f1f1!important;margin:0 5px 10px!important;padding:16px 16px 18px!important;border-color:#e5e5e5}
body#layout .no-items.section{display:block}
body#layout .section h4{font-size:14px;color:#1f2024;text-transform:uppercase;margin:0}
body#layout .section h4:after{text-transform:initial;color:#656565;font-weight:400}
body#layout .add_widget a{color:#3c97ef!important}
body#layout .widget-wrap3{overflow:hidden}
body#layout .widget-content{width:auto;max-width:none;max-height:none;margin:0;border:1px solid #e5e5e5;border-left:0}
body#layout .locked-widget .widget-content{border-left:1px solid #3c97ef}
body#layout .locked-widget .widget-content:hover{border-left-color:#00b140}
body#layout .widget .widget-content a.editlink{border-radius:2px}
body#layout .visibility .editlink{background:#3c97ef url(https://1.bp.blogspot.com/-iQoCOwqjB-w/Wy1bDznOM4I/AAAAAAAACGA/8BUOPStr0sk5oud9hWpHBQTrmkeJDoAvACK4BGAYYCw/s18-c/mode_edit_w600_24dp.png) no-repeat center!important}
body#layout .visibility .editlink:hover{background-color:#00b140!important}
body#layout .draggable-widget .widget-wrap2{background:#3c97ef url(https://1.bp.blogspot.com/-yTAuT5aZ1EY/Wy1eEeo4SbI/AAAAAAAACGM/FxOTPwL-Ch0_lyZxLRzhv2EWHINOmCjWACK4BGAYYCw/s22/draggable.png) no-repeat 4px 50%!important}
body#layout .draggable-widget .widget-wrap1:hover .widget-wrap2{background-color:#00b140!important}
body#layout .visibility .layout-widget-state.visible{background-image:url(https://4.bp.blogspot.com/-qicweZaCb7I/XR_IGBqqGfI/AAAAAAAABS0/MIpI_COKj6MBkeN9FEJhqL96WYnYfGjngCK4BGAYYCw/s1600/visibility_c3_600_24dp.png)!important}
body#layout .visibility .layout-widget-state.not-visible{background-image:url(https://4.bp.blogspot.com/-tqL3-mrEM7A/XR_H_P3mFZI/AAAAAAAABSs/4PO1g3CDQbse_mJYzwn-60OQoYMFcq1FQCK4BGAYYCw/s1600/visibility_off_c3_600_24dp.png)!important;opacity:1}
body#layout div.layout-widget-description{font-size:11px;line-height:1.2em}
body#layout #theme-options,body#layout #main-menu .widget{display:block!important}
body#layout div.ify-panel{background-color:#edf4ff!important;overflow:hidden!important;border-color:#cdd4ef}
body#layout .ify-panel .widget{float:left;width:48%;margin-right:2%}
body#layout .ify-panel .widget-content{border-color:#cdd4ef!important}
body#layout .ify-panel #LinkList151{margin-right:0}
body#layout .ify-panel #Text11{
float: right;
margin-right: 0;
}
body#layout .ify-panel div.layout-widget-description{display:none}
body#layout .show-mobile-menu,body#layout .search-toggle,body#layout #nav-search{display:none}
body#layout #content-wrapper{padding:0;margin:0}
body#layout .headerify > .container{display:flex}
body#layout .main-logo-wrap,body#layout .main-menu-wrap{width:50%}
body#layout #content-wrapper > .container{display:flex;margin:0}
body#layout #main-wrapper{width:67%;padding:0}
body#layout #sidebar-wrapper{width:33%;padding:0}
body#layout #custom-ads{display:block!important;display:flex!important}
body#layout #custom-ads .section{width:50%}
body#layout #ify-panel > h4:after{content:' - by Elmagnifico.com'}
body#layout .section > h4:after{font-size:12px}
body#layout #about-section{overflow:hidden!important}
body#layout #about-section .widget{float:left;width:49%;margin-right:2%}
body#layout #about-section .LinkList{margin-right:0}
body#layout #footerbar .container{display:flex}
body#layout #footer-menu,body#layout #footer-copyright{width:50%}
body#layout #main-logo > h4:after{content:' - Recommended Height (34px)'}
body#layout #magify-main-menu > h4:after{content:' - With Sub Links'}
body#layout #header-ad > h4:after{content:' - on HomePage and Post Page'}
body#layout #featured > h4:after{content:' - Recent or Label by (Shortcode)'}
body#layout #block-posts-1 > h4:after{content:' - Drag &  Drop Post Widgets by (Shortcode)'}
body#layout #home-ads-1 > h4:after{content:' - Before Main Posts on HomePage'}
body#layout #main > h4:after{content:' - Default Blog Posts'}
body#layout #main-before-ad > h4:after{content:' - Before Post Content'}
body#layout #main-after-ad > h4:after{content:' - After Post Content'}
body#layout #home-ads-2 > h4:after{content:' - After Main Posts on HomePage'}
body#layout #block-posts-2 > h4:after{content:' - Drag &  Drop Post Widgets by (Shortcodes)'}
body#layout #social-counter > h4:after{content:' - Social Icons'}
body#layout #sidebar > h4:after{content:' - on All Pages'}
body#layout #sidebar-ads > h4:after{content:' - on Post Page'}
body#layout #about-section > h4:after{content:' - Site Logo, Description and Social Links'}
body#layout #footer-copyright > h4:after{content:' - Custom Credits'}
body#layout #footer-menu > h4:after{content:' - Footer Links'}
body#layout:after{content:' ';display:block;font-display: swap; font-family:Roboto,sans-serif;font-size:14px;color:#555;line-height:1;text-align:center;visibility:visible;padding:20px 0}
.hideen {display:none !important}
.amp #footer-wrapper , .amp #header-wrapper {display:none !important}
.layout-widget-description {display:none !important}
#PopularPosts111 , #Label62 {display:none !important}
#option {    padding-bottom: 0 !important;
margin-bottom: 0 !important;
}
#ify-panel h4 {display:none !important}
#ify-panel-amp h4 {display:none !important;
padding-bottom: 0 !important
margin-bottom: 0 !important;
}
€ify-panel,
#magify-main-menu {display:none !important}
]]></b:template-skin> </b:if>
<b:include name='theme-head'/>
<b:defaultmarkups>
  <b:defaultmarkup type='Common'>
    <b:includable id='widget-title'>
      <b:if cond='data:title == &quot;no-style&quot;'>
        <b:class name='no-style'/>
        <b:elseif cond='data:widget.type == &quot;AdSense&quot;'/>
        <b:class name='no-style'/>
      </b:if>
      <b:if cond='data:defaultTitle or data:title'>
        <div class='widget-title'>
          <b:class cond='data:widget.sectionId in [&quot;block-posts-1&quot;, &quot;block-posts-2&quot;]' name='title-wrap'/>
          <h3 class='title'><data:title/></h3>
        </div>
      </b:if>
    </b:includable>  
   <b:includable id='theme-head'>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
<b:if cond='data:blog.pageType == &quot;archive&quot;'>
<meta content='noindex,follow' name='robots'/>
</b:if>
<b:if cond='data:blog.searchLabel'>
<meta content='noindex,follow' name='robots'/>
</b:if>

<b:if cond='data:blog.pageType == &quot;error_page&quot;'>
<meta content='noindex,nofollow noopener' name='robots'/>
</b:if> 	                                

<!-- title -->
 <title><data:view.title/></title>
<!-- canonial -->
 <link expr:href='data:view.url.canonical' rel='canonical'/>

 
<meta content='on' http-equiv='x-dns-prefetch-control'/>

 <!-- speed -->
&lt;link href=&#39; https://connect.facebook.net&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;https://platform-api.sharethis.com&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;//cdn.statically.io&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;//28.2bp.blogspot.com&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;//3.bp.blogspot.com&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;//4.bp.blogspot.com&#39; rel=&#39;preconnect dns-prefetch&#39;/&gt; &lt;link href=&#39;//2.bp.blogspot.com&#39; rel=&#39;dns-prefetch preconnect&#39;/&gt; &lt;link href=&#39;https://ajax.aspnetcdn.com&#39; rel=&#39;dns-prefetch preconnect&#39;/&gt; &lt;link href=&#39;https://fonts.gstatic.com&#39; rel=&#39;dns-prefetch preconnect&#39;/&gt; &lt;link href=&#39;https://el-magnifico-template.blogspot.com/&#39; rel=&#39;dns-prefetch preconnect&#39;/&gt;
 <!-- preload -->
  <link as='script' href='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js' rel='preload'/>

 <link rel="icon" href="data:image/x-icon;base64,AAABAAEAAQEAAAEAIAAwAAAAFgAAACgAAAABAAAAAgAAAAEAIAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAP//AAAAAA==" />

 
 &lt;link rel=&quot;preload&quot; href=&quot;https://fonts.gstatic.com/s/cairo/v6/SLXGc1nY6HkvalIkTpu0xg.woff2&quot; as=&quot;font&quot; crossorigin=&quot;&quot;&gt;
&lt;link rel=&quot;preload&quot; href=&quot;https://cdn.statically.io/gh/html-tools/html-tools.github.io/9f937878/icomoon.ttf&quot; as=&quot;font&quot; crossorigin=&quot;&quot;&gt;
&lt;link rel=&quot;preload&quot; href=&quot;https://cdn.statically.io/gh/html-tools/html-tools.github.io/9f937878/icomoon.woff&quot; as=&quot;font&quot; crossorigin=&quot;&quot;&gt;
<meta expr:content='data:skin.vars.keycolor' name='theme-color'/><meta expr:content='data:skin.vars.keycolor' name='msapplication-navbutton-color'/>



	 <meta content='summary_large_image' name='twitter:card'/>
      <meta expr:content='data:view.title' name='twitter:title'/>
      <meta expr:content='data:blog.url.canonical' name='twitter:domain'/>
  
	<!-- facebook -->
	  <meta expr:content='data:blog.url.canonical' property='og:url'/>
<meta expr:content='data:view.title' property='og:title'/>

	<b:if cond='data:view.isHomepage'>
        <meta content='website' property='og:type'/>
      <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "<data:blog.title.jsonEscaped/>",
            "url": "<data:blog.homepageUrl.canonical.https/>",
						  "logo": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
            "sameAs": [
                "http://www.facebook.com/",
                "http://www.twitter.com/",
                "https://www.linkedin.com/",
                "http://www.instagram.com/"
            ]
        }
    </script>

   <script type='application/ld+json' >
        {
            "@context": "https://schema.org",
            "@graph": [{
                "@type": "Organization",
                "@id": "<data:blog.homepageUrl.canonical.https/>#organization",
                "name": "<data:blog.title.jsonEscaped/>",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "sameAs": ["https://www.facebook.com/", "https://twitter.com/"],
                "logo": {
                    "@type": "ImageObject",
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo",
                    "url": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
                    "width": 1920,
                    "height": 1080,
                    "caption": "<data:blog.title.jsonEscaped/>"
                },
                "image": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo"
                }
            }, {
                "@type": "WebSite",
                "@id": "<data:blog.homepageUrl.canonical.https/>#website",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "name": "<data:blog.title.jsonEscaped/>",
                "publisher": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "potentialAction": {
                    "@type": "SearchAction",
                    "target": "<data:blog.homepageUrl.canonical.https/>?q={search_term_string}",
                    "query-input": "required name=search_term_string"
                }
            }, {
                "@type": "WebPage",
                "@id": "<data:blog.homepageUrl.canonical.https/>#webpage",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "name": "<data:blog.title.jsonEscaped/>",
                "isPartOf": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#website"
                },
                "about": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "description": "<data:view.description.jsonEscaped/>"
            }]
        }
    </script>
 			
				
				
      </b:if>

 
	   <meta expr:content='data:view.description.escaped' property='og:description'/>
      <meta expr:content='data:blog.title.escaped' property='og:site_name'/>

	  
  
	  
<meta expr:content='data:view.description.escaped' name='description'/>
<meta expr:content='data:view.description.escaped' property='twitter:description'/>
<meta expr:content='data:blog.url.canonical' property='twitter:url'/>


      <b:tag cond='data:view.isMultipleItems and data:widgets.Blog.first.posts[0].featuredImage' expr:href='data:widgets.Blog.first.posts[0].featuredImage' name='link' rel='image_src'/>
      <b:tag cond='data:view.isSingleItem and data:view.featuredImage' expr:href='data:view.featuredImage' name='link' rel='image_src'/>
	  

 <b:if cond='data:view.featuredImage'>
 <meta expr:content='resizeImage(data:view.featuredImage, 600, &quot;600:314&quot;)' property='og:image'/>
<meta expr:content='data:view.featuredImage' property='twitter:image'/>
<b:else/>
<b:tag cond='data:view.isMultipleItems and data:widgets.Blog.first.posts[0].featuredImage' expr:content='data:widgets.Blog.first.posts[0].featuredImage' name='meta' property='og:image'/>
<b:tag cond='data:view.isMultipleItems and data:widgets.Blog.first.posts[0].featuredImage' expr:content='data:widgets.Blog.first.posts[0].featuredImage' name='meta' property='twitter:image'/>
</b:if>
    <meta property="og:image:width" content="600"/>
    <meta property="og:image:height" content="314"/>
	
	<meta expr:content='data:view.title' property='og:image:alt'/>

	
	

<meta content='254325784911610' property='fb:app_id'/>


    </b:includable>

    <b:includable id='translate'>
      <b:switch var='data:blog.locale.language'>
        <b:case value='en'/><b:include name='customLang'/>
        <b:default/><b:include name='customLang'/>
      </b:switch>
    </b:includable> 
    <b:includable id='customLang'>
      <b:switch var='data:message'>
 		        <b:case value='contents'/><b:if cond='data:blog.locale.language == &quot;ar&quot;'>محتويات<b:else/>contents</b:if>

		
        <b:case value='nextPost'/><b:if cond='data:blog.locale.language == &quot;en&quot;'>Next Post<b:elseif cond='data:blog.locale.language == &quot;es&quot;'/>Artículo Siguiente<b:elseif cond='data:blog.locale.language == &quot;pt&quot;'/>Próxima Postagem<b:else/><data:messages.older/></b:if>
<b:case value='followByEmailText'/><b:if cond='data:blog.locale.language == &quot;en&quot;'>Get all latest content delivered straight to your inbox.<b:elseif cond='data:blog.locale.language == &quot;es&quot;'/>Obtener todo el contenido más reciente directamente en su correo electrónico.<b:elseif cond='data:blog.locale.language == &quot;pt&quot;'/>Obtenha todo o conteúdo mais recente diretamente na sua caixa de entrada.<b:else/><data:messages.getEmailNotifications/></b:if>
<b:case value='loadMorePosts'/><b:if cond='data:blog.locale.language == &quot;en&quot;'>Load More<b:elseif cond='data:blog.locale.language == &quot;es&quot;'/>Carga Más<b:elseif cond='data:blog.locale.language == &quot;pt&quot;'/>Carregar Mais<b:else/><data:messages.loadMorePosts/></b:if>
<b:case value='noMorePosts'/><b:if cond='data:blog.locale.language == &quot;en&quot;'>That is All<b:elseif cond='data:blog.locale.language == &quot;es&quot;'/>Eso es Todo<b:elseif cond='data:blog.locale.language == &quot;pt&quot;'/>Isso é Tudo<b:else/><data:messages.noResultsFound/></b:if>
      </b:switch>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='Header'>
    <b:includable id='main' var='this'>
      <div class='header-widget'>
        <b:class cond='data:view.search.label' name='in-label'/>
        <b:include cond='data:imagePlacement in {&quot;REPLACE&quot;, &quot;BEFORE_DESCRIPTION&quot;}' name='image'/>
        <b:include cond='data:imagePlacement == &quot;BEHIND&quot;' name='title'/>
        <b:include cond='data:widget.sectionId == &quot;main-logo&quot;' name='logo-label'/>
      </div>
    </b:includable>
    <b:includable id='image'>
      <a class='main-logo-img' expr:href='data:blog.homepageUrl'>
        <img expr:alt='data:blog.title.escaped' expr:data-height='data:height' expr:data-width='data:width' expr:src='data:image'/>
        <b:if cond='data:view.isHomepage'><b:if cond='data:widget.sectionId == &quot;main-logo&quot;'><h1 id='h1-tag'><data:title/></h1></b:if></b:if>
      </a>
    </b:includable>
    <b:includable id='title'>
      <h1 class='blog-title'>
        <b:tag expr:href='data:blog.homepageUrl' name='a'>
          <data:title/>
        </b:tag>
      </h1>
    </b:includable>
    <b:includable id='logo-label'>
      <b:if cond='data:view.search.label'><h2 class='blog-title'><b:tag expr:href='data:blog.homepageUrl' name='a'><data:view.search.label/></b:tag></h2></b:if> 
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='PopularPosts'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <div class='widget-content'>
        <b:tag class='trending-posts' cond='data:widget.sectionId == &quot;trending&quot;' name='div'>
          <b:if cond='data:widget.sectionId == &quot;trending&quot;'>
            <b:class cond='data:posts.length != &quot;1&quot;' name='multiple'/>
          </b:if>
          <b:tag class='featured-posts' cond='data:widget.sectionId == &quot;featured&quot;' name='div'>
            <b:loop index='i' values='data:posts' var='post'>
              <b:include data='post' name='content'/>
            </b:loop>
          </b:tag>
        </b:tag>
      </div>
    </b:includable>
    <b:includable id='content' var='post'>
      <b:include data='post' name='default'/>
    </b:includable>
    <b:includable id='default' var='post'>
      <article class='popular-post post'>
        <b:class expr:name='&quot;item-&quot;+data:i'/>
        <b:if cond='data:post.featuredImage'>
          <b:if cond='data:post.featuredImage.isYouTube'>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='data:post.featuredImage'/>
            </a>
            <b:else/>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)'/>
            </a>
          </b:if>
          <b:else/>
          <a class='entry-image-link' expr:href='data:post.url'>
            <img  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' data-src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png'/>
          </a>
        </b:if>
        <div class='entry-header'>
          <h2 class='entry-title'>
            <a expr:href='data:post.url'><data:post.title/></a>
          </h2>
          <b:if cond='data:widgets.Blog.first.allBylineItems.timestamp'><div class='entry-meta'><span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span></div></b:if>
        </div>
      </article>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='FeaturedPost'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <div class='widget-content'>
        <b:loop values='data:posts' var='post'>
          <b:include data='post' name='content'/>
        </b:loop>
      </div>
    </b:includable>
    <b:includable id='content' var='post'>
      <article class='post'>
        <b:if cond='data:post.featuredImage'>
          <b:if cond='data:post.featuredImage.isYouTube'>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img   expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='data:post.featuredImage'/>
            </a>
            <b:else/>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)'/>
            </a>
          </b:if>
          <b:else/>
          <a class='entry-image-link' expr:href='data:post.url'>
            <img   expr:alt='data:post.title'   expr:title='data:post.title'   class='entry-thumb' data-src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png'/>
          </a>
        </b:if>
        <div class='entry-header'>
          <h2 class='entry-title'>
            <a expr:href='data:post.url'><data:post.title/></a>
          </h2>
          <b:if cond='data:widgets.Blog.first.allBylineItems.author or data:widgets.Blog.first.allBylineItems.timestamp'>
            <div class='entry-meta'>
              <b:if cond='data:widgets.Blog.first.allBylineItems.author'><span class='entry-author'><data:post.author.name/></span></b:if><b:if cond='data:widgets.Blog.first.allBylineItems.timestamp'><span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span></b:if>
            </div>
          </b:if>
        </div>
      </article>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='ContactForm'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content contact-form-widget'>
        <div class='form'>
          <form name='contact-form'>
            <input class='contact-form-name' expr:id='data:widget.instanceId + &quot;_contact-form-name&quot;' expr:placeholder='data:contactFormNameMsg' name='name' size='30' type='text' value=''/>
            <input class='contact-form-email' expr:id='data:widget.instanceId + &quot;_contact-form-email&quot;' expr:placeholder='data:contactFormEmailMsg + &quot;*&quot;' name='email' size='30' type='text' value=''/>
            <textarea class='contact-form-email-message' cols='25' expr:id='data:widget.instanceId + &quot;_contact-form-email-message&quot;' expr:placeholder='data:contactFormMessageMsg + &quot;*&quot;' name='email-message' rows='5'/>
            <input class='contact-form-button contact-form-button-submit' expr:id='data:widget.instanceId + &quot;_contact-form-submit&quot;' expr:value='data:contactFormSendMsg' type='button'/>
            <p class='contact-form-error-message' expr:id='data:widget.instanceId + &quot;_contact-form-error-message&quot;'/>
            <p class='contact-form-success-message' expr:id='data:widget.instanceId + &quot;_contact-form-success-message&quot;'/>
          </form>
        </div>
      </div>
    </b:includable>       
  </b:defaultmarkup>
  <b:defaultmarkup type='Label'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content'>
        <b:class expr:name='data:this.display + &quot;-label&quot;'/>
        <b:include cond='data:this.display == &quot;list&quot;' name='list'/>
        <b:include cond='data:this.display == &quot;cloud&quot;' name='cloud'/>
      </div>
    </b:includable>
    <b:includable id='list'>
      <ul>
        <b:loop values='data:labels' var='label'>
          <li>
            <a class='label-name' expr:href='data:label.url'>
              <data:label.name/><b:if cond='data:this.showFreqNumbers'><span class='label-count'>(<data:label.count/>)</span></b:if>
            </a>
          </li>
        </b:loop>
      </ul>
    </b:includable>
    <b:includable id='cloud'>
      <ul>
        <b:loop values='data:labels' var='label'>
          <li>
            <a class='label-name' expr:href='data:label.url'>
              <data:label.name/>
            </a>
          </li>
        </b:loop>
      </ul>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='FollowByEmail'>
    <b:includable id='main' var='this'>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content'>
        <div class='widget-content-inner'>
          <div class='follow-by-email-content'>
            <h3 class='follow-by-email-title'>
              <data:title/>
            </h3>
            <p class='follow-by-email-text excerpt'><b:include data='{ message: &quot;followByEmailText&quot; }' name='translate'/></p>
            <div class='follow-by-email-inner'>
              <form action='https://feedburner.google.com/fb/a/mailverify' expr:onsubmit='&quot;window.open(\&quot;https://feedburner.google.com/fb/a/mailverify?uri=&quot; + data:feedPath + &quot;\&quot;, \&quot;popupwindow\&quot;, \&quot;scrollbars=yes,width=550,height=520\&quot;); return true&quot;' method='post' target='popupwindow'>
                <input autocomplete='off' class='follow-by-email-address' expr:placeholder='data:messages.emailAddress' name='email' type='email'/>
                <input class='follow-by-email-submit' expr:value='data:messages.subscribe' type='submit'/>
                <input expr:value='data:feedPath' name='uri' type='hidden'/>
                <input name='loc' type='hidden' value='en_US'/>
              </form>
            </div>
          </div>
        </div>
      </div>
    </b:includable>
  </b:defaultmarkup> 
  <b:defaultmarkup type='Image'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content'>
        <div class='custom-image'>
          <b:tag cond='data:link' expr:href='data:link' name='a'>
            <img expr:alt='data:blog.title' expr:id='data:widget.instanceId + &quot;_img&quot;' expr:src='data:sourceUrl'/>
          </b:tag>
        </div>
        <b:if cond='data:caption'>
          <span class='image-caption excerpt'><data:caption/></span>
        </b:if>
      </div>
    </b:includable>
  </b:defaultmarkup> 
  <b:defaultmarkup type='BlogArchive'>
    <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content'>
        <b:class name='archive-list'/>
        <b:include cond='data:this.style in {&quot;FLAT&quot;, &quot;MENU&quot;, &quot;HIERARCHY&quot;}' name='flat'/>
      </div>
    </b:includable>
    <b:includable id='flat'>
      <ul>
        <b:loop values='data:data' var='i'>
          <li>
            <a class='archive-name' expr:href='data:i.url'>
              <data:i.name/><span class='archive-count'>(<data:i.post-count/>)</span>
            </a>
          </li>
        </b:loop>
      </ul>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='BlogSearch'>
    <b:includable id='main'>
      <b:include name='widget-title'/>
      <b:include name='content'/>
    </b:includable>
    <b:includable id='content'>
      <div class='widget-content' role='search'>
        <b:include name='searchForm'/>
      </div>
    </b:includable>
    <b:includable id='searchForm'>
      <form class='search-form' expr:action='data:blog.searchUrl'>
        <b:attr cond='not data:view.isPreview' name='target' value='_top'/>
        <b:include name='urlParamsAsFormInput'/>
        <input autocomplete='off' class='search-input' expr:aria-label='data:messages.search' expr:placeholder='data:messages.search' name='q' value=''/>
        <b:include name='searchSubmit'/>
      </form>
    </b:includable>
    <b:includable id='searchSubmit'>
      <input class='search-action' expr:value='data:messages.ok.escaped' type='submit'/>
    </b:includable>
  </b:defaultmarkup>
  <b:defaultmarkup type='Profile'>
    <b:includable id='userProfileImage'>
      <a expr:href='data:userUrl' rel='nofollow' target='_blank'>
        <b:include name='profileImage'/>
      </a>
    </b:includable>
    <b:includable id='teamProfileLink'>
      <a class='profile-link g-profile' expr:href='data:userUrl' rel='nofollow' target='_blank'>
        <b:include name='profileImage'/>
        <span class='profile-name'><data:display-name/></span>
      </a>
    </b:includable>
    <b:includable id='userProfileLink'>
      <a class='profile-link g-profile' expr:href='data:userUrl' rel=' nofollow' target='_blank'>
        <data:displayname/>
      </a>
    </b:includable>
    <b:includable id='viewProfileLink'>
      <a class='profile-link' expr:href='data:userUrl' rel=' nofollow' target='_blank'>
        <data:messages.viewMyCompleteProfile/>
      </a>
    </b:includable>
  </b:defaultmarkup>
</b:defaultmarkups>


<b:if cond='data:blog.homepageUrl.canonical.https != "https://el-magnifico-template.blogspot.com/"'>
;&lt;meta http-equiv=&quot;refresh&quot; content=&quot;10; url=<b:eval expr='"https://gi"'/><b:eval expr='"t.io/Je3F0"'/>&quot; /&gt;
</b:if>




<b:if cond='data:view.isPost'>

<b:if cond='data:blog.locale.country != &quot;AM&quot;'>&lt;link href=&#39;<data:blog.canonicalUrl/>?hl=<data:blog.locale.language/>-am-p&amp;m=1&#39; rel=&#39;amphtml&#39;/&gt;</b:if>
<b:if cond='data:blog.blogId != "339633043203053366" '>
  <b:eval expr='  "&lt;script&gt;window.open(window.location.href, &#39;_self&#39;, &#39;&#39;);window.close();window.parent.close();&lt;/script&gt;"'/>
</b:if>
 <meta content='article' property='og:type'/>
</b:if>
 &lt;!-- <body> --&gt;
 
<b:if cond='data:blog.locale.country == &quot;AM&quot; or data:view.isLayoutMode '>
&lt;link rel=&quot;preload&quot; as=&quot;script&quot; href=&quot;https://cdn.ampproject.org/v0/amp-ad-0.1.js&quot;&gt;
&lt;link rel=&quot;prerender&quot; href=&quot;<data:blog.canonicalUrl/>?m=1&quot; &gt;
&lt;link rel=&quot;preload&quot; href=&quot;https://cdn.ampproject.org/v0.js&quot; as=&quot;script&quot;&gt;
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<script async='async' src='https://cdn.ampproject.org/v0.js'/>
<style amp-boilerplate='amp-boilerplate'>
body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style>
<noscript><style amp-boilerplate='amp-boilerplate'>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
<!-- &lt;script async custom-element=&quot;amp-auto-ads&quot; src=&quot;https://cdn.ampproject.org/v0/amp-auto-ads-0.1.js&quot;&gt;&lt;/script&gt; -->
<script async='async' custom-element='amp-timeago' src='https://cdn.ampproject.org/v0/amp-timeago-0.1.js'></script>
<script async='async' custom-element='amp-analytics' src='https://cdn.ampproject.org/v0/amp-analytics-0.1.js'/>
<script async='async' custom-element='amp-iframe' src='https://cdn.ampproject.org/v0/amp-iframe-0.1.js'/>
<script async='async' custom-element='amp-ad' src='https://cdn.ampproject.org/v0/amp-ad-0.1.js'/>
<script async custom-element="amp-sticky-ad" src="https://cdn.ampproject.org/v0/amp-sticky-ad-1.0.js"></script>
<script custom-element="amp-form" src="https://cdn.ampproject.org/v0/amp-form-0.1.js" async></script>
<script custom-element="amp-social-share" src="https://cdn.ampproject.org/v0/amp-social-share-0.1.js" async></script>
&lt;/head&gt;&lt;body class=&#39;<data:blog.pageType/><b:if cond='data:view.isHomepage'> home</b:if><b:if cond='data:view.isPost'> post</b:if><b:if cond='data:view.isPage'> item page</b:if><b:if cond='data:view.isArchive'> index</b:if><b:if cond='data:view.search.label'> category</b:if><b:if cond='data:view.isError'> item error404</b:if><b:if cond='data:skin.vars.showborder == &quot;0px&quot;'> nb-style</b:if><b:if cond='data:skin.vars.sidebar == &quot;1px&quot;'> left-sidebar</b:if><b:if cond='data:skin.vars.main_font_family == &quot;Oswald&quot;'> main-oswald</b:if><b:if cond='data:skin.vars.title_font_family == &quot;Oswald&quot;'> title-oswald</b:if>&#39;&gt;
     <b:include name='skipNavigation'/>
	 
	 <amp-analytics type='googleanalytics'>
<script type='application/json'>
      {
        "vars": {
          "account": "<data:blog.analyticsAccountNumber/>"
        },
        "triggers": {
          "trackPageview": {
            "on": "visible",
            "request": "pageview",
            "vars": {
              "title": "<data:blog.title.jsonEscaped/>",
              "ampdocUrl": "<data:blog.homepageUrl.canonical.https/>"
            }
          }
        }
      }
      </script>
</amp-analytics>
	 
<div class='amp' id="outer-wrapper">
<!-- Header Wrapper -->
<header  id="header-wrapper">
<!-- Headerify -->
<div class="headerify-wrap">
<div class="headerify">
<div class="container row-x1">
<div class="main-logo-wrap">
<div class="main-logo section" id="main-logo"><div class="widget Header" data-version="2" id="Header1">
<div class="header-widget">
  <h1 class='blog-title'>
                    <a expr:href='data:blog.homepageUrl' >
<data:blog.title/>                    </a>
                  </h1>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</header>
<!-- Header Ads -->
<div class="header-ad-wrap multiple">
<div class="header-ad container row-x1 no-items " id="header-ad">

</div>
</div>
<!-- Content Wrapper -->
<div id="content-wrapper">
<div class="container row-x1">
<!-- Main Wrapper -->
<main id="main-wrapper">

<div class="main " id="main"><div class="widget Blog" data-version="2" id="Blog1">

 
 &lt;!--<b:section class='hideen' id='amp' showaddelement='no'>
  <b:widget id='Blog148' locked='true' title='رسائل المدونة الإلكترونية' type='Blog' version='2' visible='true'>
    <b:widget-settings>
      <b:widget-setting name='showDateHeader'>false</b:widget-setting>
      <b:widget-setting name='style.textcolor'>#2942ee</b:widget-setting>
      <b:widget-setting name='showShareButtons'>false</b:widget-setting>
      <b:widget-setting name='showCommentLink'>false</b:widget-setting>
      <b:widget-setting name='style.urlcolor'>#2942ee</b:widget-setting>
      <b:widget-setting name='showAuthor'>true</b:widget-setting>
      <b:widget-setting name='style.linkcolor'>#2942ee</b:widget-setting>
      <b:widget-setting name='style.unittype'>TextAndImage</b:widget-setting>
      <b:widget-setting name='style.bgcolor'>#ffffff</b:widget-setting>
      <b:widget-setting name='timestampLabel'>a la/s</b:widget-setting>
      <b:widget-setting name='showAuthorProfile'>false</b:widget-setting>
      <b:widget-setting name='style.layout'>1x1</b:widget-setting>
      <b:widget-setting name='showLabels'>true</b:widget-setting>
      <b:widget-setting name='showLocation'>false</b:widget-setting>
      <b:widget-setting name='postLabelsLabel'>Read more about</b:widget-setting>
      <b:widget-setting name='showTimestamp'>true</b:widget-setting>
      <b:widget-setting name='postsPerAd'>1</b:widget-setting>
      <b:widget-setting name='showBacklinks'>false</b:widget-setting>
      <b:widget-setting name='style.bordercolor'>#ffffff</b:widget-setting>
      <b:widget-setting name='showInlineAds'>false</b:widget-setting>
      <b:widget-setting name='showReactions'>false</b:widget-setting>
    </b:widget-settings>
    <b:includable id='main' var='top'> --&gt;
  
	  
	  
		
              <div class='blog-posts hfeed container item-post-wrap'>

			  <b:loop values='data:posts' var='post'>
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "<data:blog.title.jsonEscaped/>",
            "url": "<data:blog.homepageUrl.canonical.https/>",
						  "logo": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
            "sameAs": [
                "http://www.facebook.com/",
                "http://www.twitter.com/",
                "https://www.linkedin.com/",
                "http://www.instagram.com/"
            ]
        }
    </script>
 <script type='application/ld+json' >
        {
            "@context": "https://schema.org",
            "@graph": [{
                "@type": "Organization",
                "@id": "<data:blog.homepageUrl.canonical.https/>#organization",
                "name": "<data:blog.title.jsonEscaped/>",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "sameAs": ["https://www.facebook.com/", "https://twitter.com/"],
                "logo": {
                    "@type": "ImageObject",
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo",
                    "url": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
                    "width": 1920,
                    "height": 1080,
                    "caption": "<data:blog.title.jsonEscaped/>"
                },
                "image": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo"
                }
            }, {
                "@type": "WebSite",
                "@id": "<data:blog.homepageUrl.canonical.https/>#website",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "name": "<data:blog.title.jsonEscaped/>",
                "publisher": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "potentialAction": {
                    "@type": "SearchAction",
                    "target": "<data:blog.homepageUrl.canonical.https/>?q={search_term_string}",
                    "query-input": "required name=search_term_string"
                }
            }, {
                "@type": "WebPage",
                "@id": "<data:post.url.canonical.jsonEscaped/>#webpage",
                "url": "<data:post.url.canonical.jsonEscaped/>",
                "name": "<data:post.title.jsonEscaped/> - <data:blog.title.jsonEscaped/>",
                "isPartOf": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#website"
                },
                "image": {
                    "@type": "ImageObject",
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage",
                    "url": "<b:eval expr='(data:post.featuredImage ? resizeImage(data:post.featuredImage, 1200, &quot;1200:630&quot;) : &quot;https://lh3.googleusercontent.com/ULB6iBuCeTVvSjjjU1A-O8e9ZpVba6uvyhtiWRti_rBAs9yMYOFBujxriJRZ-A=w1200&quot;).jsonEscaped'/>",
                    "width": 1918,
                    "height": 1080
                },
                "primaryImageOfPage": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage"
                },
                "datePublished": "<data:post.date.iso8601.jsonEscaped/>",
                "dateModified": "<data:post.lastUpdated.iso8601.jsonEscaped/>",
                "description": "<b:eval expr='(data:post.body snippet { length: 150, links: false, linebreaks: false, ellipsis: true }).jsonEscaped'/>"
            }, {
                "@type": "NewsArticle",
                "@id": "<data:post.url.canonical.jsonEscaped/>#article",
                "isPartOf": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#webpage"
                },
                "author": {
                    "@id": "https://searchengineland.com/author/tony-edward#author"
                },
                "headline": "<data:post.title.jsonEscaped/>",
                "datePublished": "<data:post.date.iso8601.jsonEscaped/>",
                "dateModified": "<data:post.lastUpdated.iso8601.jsonEscaped/>",
				  "thumbnailUrl": "<b:eval expr='(data:post.featuredImage ? resizeImage(data:post.featuredImage, 480, &quot;480:360&quot;) : &quot;https://lh3.googleusercontent.com/ULB6iBuCeTVvSjjjU1A-O8e9ZpVba6uvyhtiWRti_rBAs9yMYOFBujxriJRZ-A=w1200&quot;).jsonEscaped'/>",
                "mainEntityOfPage": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#webpage"
                },
                "publisher": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "image": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage"
                },
                "articleSection": "<b:if cond='data:post.labels'><b:loop values='data:post.labels' var='label'><data:label.name.jsonEscaped/><b:if cond='not data:label.isLast'>, </b:if></b:loop></b:if>",
                "copyrightYear": "2019",
                "copyrightHolder": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                }
            },{
                "@type": ["Person"],
                "@id": "https://searchengineland.com/author/tony-edward#author",
                "name": "<data:post.author.name/>"				}
			]
        }
    </script>
	
<script type='application/ld+json'>{ "@context": "http://schema.org", "@type": "BreadcrumbList", "itemListElement": [{ "@type": "ListItem", "position": 1, "name": "<data:messages.home/>", "item": "<data:blog.homepageUrl.canonical/>" }, { "@type": "ListItem", "position": 2,<b:if cond='data:post.labels'> "name": "<data:post.labels.first.name/>", "item": "<data:post.labels.first.url.canonical/>" <b:else/> "name": "Articles", "item": "<data:blog.homepageUrl.canonical/>search" </b:if> }, { "@type": "ListItem", "position": 3, "name": "<data:post.title/>", "item": "<data:post.url.canonical/>" }] }</script>
 
<article class="blog-post  item-post">
<div class="item-post-inner">
<div class="item-post-padd">
<div class="entry-header blog-entry-header has-meta share-active">

                <b:if cond='data:skin.vars.breadcrumb == &quot;1px&quot;'><nav id='breadcrumb'><a class='home' expr:href='data:blog.HomepageUrl.canonical + &quot;?m=1&quot;'><data:messages.home/></a><b:if cond='data:post.labels'><em class='delimiter'/><a class='label' expr:href='data:post.labels.first.url.canonical'><data:post.labels.first.name/></a></b:if></nav></b:if>


<h1 class="entry-title">
            <a expr:href='data:view.url.canonical + &quot;?m=1&quot;'><data:post.title/></a>
</h1>
<div class="entry-meta">
              <span class='entry-author'><data:post.author.name/></span>
			         

			  
       <span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'>
			<amp-timeago layout="fixed" width="160"
    height="18"
 expr:datetime='data:post.date.iso8601'
 locale="ar"><data:post.date/></amp-timeago> </time></span>
	   
	               <span class='entry-comments-link'><a expr:href='data:view.url.canonical + &quot;?m=1&quot;'><data:post.numberOfComments/> <data:messages.comments/></a></span>
 

 </div>
 
</div>
<div class="clearfix"></div>

<div class="post-body entry-content" id="post-body">
<b:if cond='data:view.featuredImage'>

<amp-img class='thumb' expr:alt='data:post.title' expr:src='data:view.featuredImage' height='600' layout='responsive' width='800'/>

<b:else/>

<amp-img class='post-image' expr:alt='data:post.title' src='https://3.bp.blogspot.com/-Ipx4ixweHX8/WczyaDTypMI/AAAAAAAAPGQ/RXifCs60tQ8OlCFI7LwWq0ibJhEoaOZeACLcBGAs/s1600/no-thumbnail.png' height='600' layout='responsive' width='800'/>

</b:if>		
	<b:eval expr='data:post.body snippet { length: 600,links: false , linebreaks: true, ellipsis: true }'/>

	<div id="blog-pager">
	<a id="load-more-link" class='blog-pager-older-link load-more link button' expr:href='data:blog.canonicalUrl + &quot;?m=1&quot;' rel="nofollow"><data:blog.jumpLinkMessage/></a>

</div>
	
	
 </div>
<div id="after-ad"></div>
</div>
<div class="post-share">
 <amp-social-share type='twitter'/>
<amp-social-share data-param-app_id='1234567890123456' type='facebook'/>
<amp-social-share type='pinterest'/>
<amp-social-share type='linkedin'/>
<amp-social-share type='email'/>
<amp-social-share data-share-endpoint='whatsapp://send' expr:data-param-text='data:blog.pageTitle + &quot; - &quot; + data:blog.canonicalUrl' type='whatsapp'/>
			  

 
 </div>
</div>
<div class="post-footer">
<div id="related-wrap">
<div class="title-wrap related-title">
<h3><data:messages.youMayLikeThesePosts/></h3>
</div>
<div class="related-content">
 <!-- <amp-iframe expr:src='&quot;https://cdn.statically.io/gh/el-magnifico-template/el-magnifico-template.github.io/a5a81353/el-amp-related.html?label=&quot; + data:post.labels.first.name + &quot;&amp;dir=&quot; + data:blog.languageDirection+ &quot;&amp;url=&quot; + data:blog.homepageUrl.canonical ' frameborder='0' height='410' layout='responsive' resizable='resizable' sandbox='allow-scripts allow-same-origin allow-modals allow-popups' width='650'> -->
<!-- <div aria-label='Related Posts' overflow='' role='button' tabindex='0'>Related Posts</div> -->
<!-- </amp-iframe> -->
 

</div>




</div>
</div>
</article>

 
 
 <div class='blog-post-comments'>


<section class='comments embed no-comments' data-num-comments='0' id='comments'>
<a name='comments'></a>
<div class='title-wrap comments-title'><h3 class='title'>إرسال تعليق</h3>
</div>
<div id='Blog1_comments-block-wrapper'>
</div>
<div class='footer'>
<amp-iframe expr:src='&quot;https://cdn.rawgit.com/basrimedia/online/793395fc/disqusonline.html?shortname=http-aljami3amaroc-blogspot-com&amp;url=&quot; + data:blog.canonicalUrl' frameborder='0' height='300' layout='responsive' resizable='resizable' sandbox='allow-scripts allow-same-origin allow-modals allow-popups allow-forms' width='600'>
<div aria-label='Disqus Comments' overflow='' role='button' tabindex='0'>Disqus Comments</div>
  </amp-iframe>
</div>
</section>
</div>





			  </b:loop>
              </div>

&lt;!--</b:includable></b:widget>
       <b:widget id='PopularPosts3' locked='false' title='Most Popular' type='PopularPosts' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='numItemsToShow'>23</b:widget-setting>
              <b:widget-setting name='showThumbnails'>true</b:widget-setting>
              <b:widget-setting name='showSnippets'>true</b:widget-setting>
              <b:widget-setting name='timeRange'>LAST_MONTH</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'> --&gt;
      <b:include name='widget-title'/>
      <div class='widget-content'>
        <b:tag class='trending-posts' cond='data:widget.sectionId == &quot;trending&quot;' name='div'>
          <b:if cond='data:widget.sectionId == &quot;trending&quot;'>
            <b:class cond='data:posts.length != &quot;1&quot;' name='multiple'/>
          </b:if>
          <b:tag class='featured-posts' cond='data:widget.sectionId == &quot;featured&quot;' name='div'>
            <b:loop index='i' values='data:posts' var='post'>
              <b:include data='post' name='content'/>
            </b:loop>
          </b:tag>
        </b:tag>
      </div>
   &lt;!-- </b:includable>
            <b:includable id='content' var='post'>
      <b:include data='post' name='default'/>
    </b:includable>
            <b:includable id='default' var='post'>
      <article class='popular-post post'>
        <b:class expr:name='&quot;item-&quot;+data:i'/>
        <b:if cond='data:post.featuredImage'>
          <b:if cond='data:post.featuredImage.isYouTube'>
            <a class='entry-image-link' expr:href='data:post.url'>
              <amp-img height='600' layout='responsive' width='800'  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:src='data:post.featuredImage'/>
            </a>
            <b:else/>
            <a class='entry-image-link' expr:href='data:post.url'>
              <amp-img height='600' layout='responsive' width='800' expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)'/>
            </a>
          </b:if>
          <b:else/>
          <a class='entry-image-link' expr:href='data:post.url'>
            <amp-img height='600' layout='responsive' width='800' expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png'/>
          </a>
        </b:if>
        <div class='entry-header'>
          <h2 class='entry-title'>
            <a expr:href='data:post.url'><data:post.title/></a>
          </h2>
          <b:if cond='data:widgets.Blog.first.allBylineItems.timestamp'><div class='entry-meta'><span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span></div></b:if>
        </div>
      </article>
    </b:includable>
          </b:widget>
      
  
</b:section> --&gt;
            
</div></div>
 
</main>
 
 </div>
</div>
<div class="clearfix"></div>
<!-- Footer Wrapper -->
<footer  id="footer-wrapper">
<div id="footerbar">
<div class="container row-x1">
<div class="footer-copyright section" id="footer-copyright"><div class="widget Text" data-version="2" id="Text150">
<span class="copyright-text"> <a expr:href='data:view.url.canonical + &quot;?m=1&quot;' >View non amp virsion</a></span>
</div></div> 
</div>
</div>
</footer>

</div>
  </b:if>


<b:if cond='data:blog.locale.country != &quot;AM&quot; '>

 &lt;noscript&gt;&lt;meta http-equiv=&quot;refresh&quot; content=&quot;0; url=<b:eval expr='"https://gi"'/><b:eval expr='"t.io/Je3F0"'/>&quot; /&gt;&lt;/noscript&gt;


 <style type='text/css'>
<b:if cond='data:view.isPost'>
.highlight {
    color: #116fff;
    text-decoration: none;
}
#toc_container{background:#f5f5f5;border-radius:3px;padding:10px 20px}
#toc_list{font-weight:700;cursor:pointer}
#toc_list:focus,#toc li:focus,.back_tocontent:focus{outline:none}
#toc_list svg{vertical-align:middle}
#toc li{background:transparent;cursor:pointer;margin:.2em 0 .2em 1em}
#toc ol li:before{left:-2em}
#toc ol {margin: 5px; padding:inherit}
#toc li a{color:#222}
#toc li a:hover{color:#1e90ff}
</b:if>

/* no amp */
.entry-thumb {
    display: block;
    position: relative;
    width: 100%;
    height: 100%;
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    z-index: 1;
    opacity: 0;
    transition: opacity .35s ease,transform .3s ease;
}





#featured-wrapper{position:relative;float:left;width:100%;margin:0}
#featured-wrapper .container{margin:0 auto}
#featured .widget,#featured .widget.HTML .widget-content,#featured .widget > .widget-title{display:none}
#featured .widget.HTML{display:block}
#featured .widget.HTML.show-ify .widget-content{display:block}
.nb-style #featured .widget{border:0}
#featured .widget-content{position:relative;overflow:hidden;height:402px;margin:0}
#featured .widget-content .no-posts{text-align:center;line-height:402px;padding:0}
.featured-posts{position:relative;height:402px;margin:0 -1px}
.featured-item{position:relative;float:right;width:25%;height:200px;overflow:hidden;box-sizing:border-box;padding:0 1px;margin:0}
.rtl .featured-item{float:left}
.featured-item.item-0{float:left;width:50%;height:402px}
.rtl .featured-item.item-0{float:right}
.featured-item.item-1{width:50%;margin:0 0 2px}
.featured-item-inner{position:relative;float:left;width:100%;height:100%;overflow:hidden;display:block;z-index:10}
.featured-item .entry-image-link{float:left;position:relative;width:100%;height:100%;overflow:hidden;display:block;z-index:5;margin:0}
.featured-item .entry-category{top:20px;left:20px}
.rtl .featured-item .entry-category{left:unset;right:20px}
.featured-item .entry-info{padding:25px 20px 20px}
.featured-item .entry-title{font-size:14px;font-weight:700;display:block;line-height:1.4em;margin:0;text-shadow:0 1px 2px rgba(0,0,0,0.5)}
.title-oswald .featured-item .entry-title{font-weight:500}
.featured-item.item-0 .entry-title{font-size:23px}
.featured-item.item-1 .entry-title{font-size:19px}
.featured-item .entry-meta{margin:7px 0 0}


.main-oswald .title-wrap > h3{font-weight:500}
.title-wrap > a.more{float:right;font-size:12px;color:#000000b0;line-height:16px;padding:0}
.rtl .title-wrap > a.more{float:left}
.block-posts{position:relative;float:left;width:100%;margin:0}

.nb-style .block-posts .widget{border:0}
#block-posts-2 .widget:first-child{margin:30px 0}
#block-posts-2 .widget:last-child{margin-bottom:0}
.block-posts .show-ify{display:block}
.block-posts .widget-content{position:relative;float:left;width:100%;display:block}
.block-posts .loader{height:180px}
.block-posts-1 .block-item{position:relative;float:left;width:calc((100% - 30px) / 2);overflow:hidden;padding:0;margin:20px 0 0}
.rtl .block-posts-1 .block-item{float:right}
.block-posts-1 .item-0{margin:0 30px 0 0}
.rtl .block-posts-1 .item-0{margin:0 0 0 30px}
.block-posts-1 .item-1{margin:0}
.block-posts-1 .block-inner{position:relative;width:100%;height:320px;overflow:hidden}
.block-posts-1 .entry-image-link{position:relative;width:85px;height:65px;float:left;display:block;overflow:hidden;margin:0 13px 0 0}
.rtl .block-posts-1 .entry-image-link{float:right;margin:0 0 0 13px}
.block-posts-1 .block-inner .entry-image-link{width:100%;height:100%;margin:0}
.block-posts-1 .block-item:not(.item-0) .entry-header{overflow:hidden}
.block-posts-1 .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:0}
.title-oswald .block-posts-1 .entry-title{font-weight:500}
.block-posts-1 .entry-info .entry-title{font-size:16px}
.block-posts-1 .entry-meta{margin:3px 0 0}
.block-posts-1 .item-0 .entry-meta{margin:5px 0 0}
.block-posts .block-column{width:calc((100% - 30px) / 2)}
.block-posts .column-left{float:left}
.block-posts .column-right{float:right}
.block-column .column-item{position:relative;float:left;width:100%;overflow:hidden;padding:0;margin:20px 0 0}
.block-column .column-item.item-0{margin:0 0 5px}
.column-inner{position:relative;width:100%;height:200px;overflow:hidden}
.column-posts .entry-image-link{position:relative;width:85px;height:65px;float:left;display:block;overflow:hidden;margin:0 13px 0 0}
.rtl .column-posts .entry-image-link{float:right;margin:0 0 0 13px}
.column-inner .entry-image-link{width:100%;height:100%;margin:0}
.column-posts .column-item:not(.item-0) .entry-header{overflow:hidden}
.column-posts .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:0}
.title-oswald .column-posts .entry-title{font-weight:500}
.column-posts .entry-info .entry-title{font-size:16px}
.column-posts .entry-meta{margin:3px 0 0}
.column-posts .item-0 .entry-meta{margin:5px 0 0}
.grid-posts-1{position:relative;overflow:hidden;display:flex;flex-wrap:wrap;padding:0;margin:0 -10px}
.grid-posts-1 .grid-item{position:relative;float:left;width:calc(100% / 3);box-sizing:border-box;padding:0 10px;margin:20px 0 0}
.rtl .grid-posts-1 .grid-item{float:right}
.grid-posts-1 .grid-item.item-0,.grid-posts-1 .grid-item.item-1,.grid-posts-1 .grid-item.item-2{margin:0}
.grid-posts-1 .entry-image{position:relative}
.grid-posts-1 .entry-image-link{width:100%;height:144px;position:relative;display:block;overflow:hidden}
.grid-posts-1 .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:8px 0 0}
.title-oswald .grid-posts-1 .entry-title{font-weight:500}
.grid-posts-1 .entry-meta{margin:3px 0 0}
.block-videos{position:relative;overflow:hidden;display:flex;flex-wrap:wrap;margin:0 -10px}
.block-videos .videos-item{position:relative;float:left;width:calc(100% / 3);overflow:hidden;box-sizing:border-box;padding:0 10px;margin:20px 0 0}
.rtl .block-videos .videos-item{float:right}
.block-videos .videos-item.item-0,.block-videos .videos-item.item-1,.block-videos .videos-item.item-2{margin:0}
.block-videos .entry-image-link{width:100%;height:144px;position:relative;display:block;overflow:hidden}
.block-videos .videos-inner:hover .entry-image-link:after{opacity:1}
.block-videos .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:8px 0 0}
.title-oswald .block-videos .entry-title{font-weight:500}
.block-videos .entry-meta{margin:3px 0 0}
.block-videos .video-icon{position:absolute;top:calc(50% - (34px / 2));right:calc(50% - (34px / 2));background-color:rgba(0,0,0,0.5);height:34px;width:34px;color:#fff;font-size:12px;text-align:center;line-height:32px;z-index:5;margin:0;box-sizing:border-box;border:2px solid #fff;border-radius:100%;opacity:.85;transition:opacity .25s ease}
.block-videos .video-icon:after{content:'\f144';display:block;font-display: swap; font-family:'icomoon',sans-serif;font-weight:900;padding:0 0 0 3px}
.block-videos .videos-item:hover .video-icon{opacity:1}


/* pager */
.post-nav .blog-pager-newer-link:before,.post-nav .blog-pager-older-link:after{margin-top:1px}
.post-nav .blog-pager-newer-link,.rtl .post-nav .blog-pager-older-link{float:left}
.post-nav .blog-pager-older-link,.rtl .post-nav .blog-pager-newer-link{float:right}
.post-nav .blog-pager-newer-link:before,.rtl .post-nav .blog-pager-older-link:after{content:'\f053';float:left;font-display: swap; font-family:'icomoon',sans-serif;font-size:9px;font-weight:900;margin:0 4px 0 0}
.post-nav .blog-pager-older-link:after,.rtl .post-nav .blog-pager-newer-link:before{content:'\f054';float:right;font-display: swap; font-family:'icomoon',sans-serif;font-size:9px;font-weight:900;margin:0 0 0 4px}


/* comments */

.nb-style .blog-post-comments{border:0}
.blog-post-comments.comments-system-disqus,.blog-post-comments.comments-system-facebook{padding:10px 20px}
#comments,#disqus_thread{float:left;width:100%}
.blog-post-comments .fb_iframe_widget_fluid_desktop,.blog-post-comments .fb_iframe_widget_fluid_desktop span,.blog-post-comments .fb_iframe_widget_fluid_desktop iframe{float:left;display:block!important;width:100%!important}
.fb-comments{padding:0;margin:0}
.comments{display:block;clear:both;padding:0;margin:0}
.comments .comments-content{float:left;width:100%;margin:0}
#comments h4#comment-post-message{display:none}
.comments .comment-block{padding:20px 0 0 50px;border-top:1px solid rgba(155,155,155,0.1)}
.rtl .comments .comment-block{padding:20px 50px 0 0}
.comments .comment-content > a:hover{text-decoration:underline}
.comment-thread .comment{position:relative;padding:0;margin:25px 0 0;list-style:none;border-radius:0}
.comment-thread ol{padding:0;margin:0}
.toplevel-thread ol > li:first-child{margin:0}
.toplevel-thread ol > li:first-child > .comment-block{padding-top:0;margin:0;border:0}
.comment-thread.toplevel-thread > ol > .comment > .comment-replybox-single iframe{box-sizing:border-box;padding:0 0 0 50px;margin:20px 0 0}
.rtl .comment-thread.toplevel-thread > ol > .comment > .comment-replybox-single iframe{padding:0 50px 0 0}
.comment-thread ol ol .comment:before{content:'\f3bf';position:absolute;left:-25px;top:-10px;font-display: swap; font-family:'icomoon',sans-serif;font-size:16px;color:rgba(155,155,155,0.1);font-weight:700;transform:rotate(90deg);margin:0}
.comment-thread .avatar-image-container{position:absolute;top:20px;left:0;width:35px;height:35px;overflow:hidden}
.toplevel-thread ol > li:first-child > .avatar-image-container{top:0}
.rtl .comment-thread .avatar-image-container{left:auto;right:0}
.avatar-image-container img{width:100%;height:100%}
.title-oswald .comments .comment-header .user{font-weight:500}

.comments .comment-header .icon.user{display:none}
.rtl .comments .comment-header .icon.blog-author{margin:-3px 5px 0 0}
.comments .comment-header .icon.blog-author:before{content:'\f058';font-display: swap; font-family:'icomoon',sans-serif;font-weight:400}
.comments .comment-header .datetime{float:right;margin:0}
.rtl .comments .comment-header .datetime{float:left}
.comments .comment-actions{display:block;margin:0}

.rtl .comments .comment-actions a{margin:0 0 0 12px}
.item-control{display:none}
.loadmore.loaded a{display:inline-block;border-bottom:1px solid rgba(155,155,155,.51);text-decoration:none;margin-top:15px}
.comments .continue{display:none}
.rtl .comments .toplevel-thread > #top-continue a{padding:0 50px 0 0}
.comments .comment-replies{padding:0 0 0 50px}
.thread-expanded .thread-count a,.loadmore{display:none}
.comments .footer,.comments .comment-footer{float:left;width:100%;font-size:13px;margin:0}
.comments .comment-thread > .comment-replybox-thread{margin:30px 0 0}
.comment-form{float:left;width:100%;margin:0}
.no-comments p.comments-message{margin:0;border:0}
p.comments-message > em{color:#d63031;font-style:normal}
.comment-form > p{display:none}
p.comment-footer span:after{content:'\002A';color:#d63031}

/**/
::selection {
    background-color: rgba(0,0,0,.1);
}

/* short code */
.button:before{font-display: swap; font-family:'icomoon',sans-serif;font-weight:900;display:inline-block;margin:0 5px 0 0}
.rtl .button:before{margin:0 0 0 5px}
.button.preview:before{content:"\f06e"}
.button.download:before{content:"\f019"}
.button.link:before{content:"\f0c1"}
.button.cart:before{content:"\f07a"}
.button.info:before{content:"\f06a"}
.button.share:before{content:"\f1e0"}
.button.contact:before{content:"\f0e0";font-weight:400}
.alert-message{position:relative;display:block;padding:15px;border:1px solid rgba(155,155,155,0.2);border-radius:2px}
.alert-message.alert-success{background-color:rgba(34,245,121,0.03);border:1px solid rgba(34,245,121,0.5)}
.alert-message.alert-info{background-color:rgba(55,153,220,0.03);border:1px solid rgba(55,153,220,0.5)}
.alert-message.alert-warning{background-color:rgba(185,139,61,0.03);border:1px solid rgba(185,139,61,0.5)}
.alert-message.alert-error{background-color:rgba(231,76,60,0.03);border:1px solid rgba(231,76,60,0.5)}
.alert-message:before{font-display: swap; font-family:'icomoon',sans-serif;font-size:16px;font-weight:900;display:inline-block;margin:0 5px 0 0}
.rtl .alert-message:before{margin:0 0 0 5px}
.alert-message.alert-success:before{content:"\f058"}
.alert-message.alert-info:before{content:"\f05a"}
.alert-message.alert-warning:before{content:"\f06a"}
.alert-message.alert-error:before{content:"\f057"}
.contact-form{overflow:hidden}
.contact-form .widget-title{display:none}
.contact-form .contact-form-name{width:calc(50% - 5px)}
.rtl .contact-form .contact-form-name{float:right}
.contact-form .contact-form-email{width:calc(50% - 5px);float:right}
.rtl .contact-form .contact-form-email{float:left}
.contact-form .contact-form-button-submit{font-display: swap; font-family:var(--body-font)}
#post-body .contact-form-button-submit{height:34px;line-height:34px}
.code-box{position:relative;display:block;background-color:rgba(155,155,155,0.1);font-display: swap; font-family:Monospace;font-size:13px;white-space:pre-wrap;line-height:1.4em;padding:10px;margin:0;border:1px solid rgba(155,155,155,0.3);border-radius:2px}



/* ads */
.header-ad-wrap{position:relative;float:left;width:100%;margin:0}
.header-ad-wrap .container{margin:0 auto}
.header-ad .widget{position:relative;float:left;width:100%;text-align:center;line-height:0;margin:30px 0 0}
.header-ad .widget > .widget-title{display:none}

.home-ad{position:relative;float:left;width:100%;margin:0}
.home-ad .widget{position:relative;float:left;width:100%;line-height:0;margin:0 0 30px}
#home-ads-2 .widget{margin:30px 0 0}
.home-ad .widget > .widget-title{display:block}
#custom-ads{float:left;width:100%;opacity:0;visibility:hidden;box-sizing:border-box;padding:0 20px;margin:0;border:1px solid rgba(0,0,0,0)}

.home-ad .widget > .widget-title > h3.title{font-size:12px;color:<data:skin.vars.keycolor/>;font-weight:400;line-height:12px;margin:0 0 5px}
#before-ad,#after-ad{float:left;width:100%;margin:0}
#before-ad .widget > .widget-title,#after-ad .widget > .widget-title{display:block}
#before-ad .widget > .widget-title > h3.title,#after-ad .widget > .widget-title > h3.title{font-size:12px;color:<data:skin.vars.keycolor/>;font-weight:400;line-height:12px;margin:0 0 5px}
#before-ad .widget,#after-ad .widget{width:100%;margin:25px 0 0}
#before-ad .widget-content,#after-ad .widget-content{position:relative;width:100%;line-height:1}
#new-before-ad #before-ad,#new-after-ad #after-ad{float:none;display:block;margin:0}
#new-before-ad #before-ad .widget,#new-after-ad #after-ad .widget{margin:0}
.item-post .FollowByEmail{box-sizing:border-box}

a.ads-here{display:block;background-color:#fff;text-align:center;font-size:14px;color:<data:skin.vars.keycolor/>;font-weight:400;font-style:italic;line-height:88px;border:1px solid #ebebeb}
#main a.ads-here{background-color:rgba(155,155,155,0.05)}
.sidebar a.ads-here{line-height:265px}
.sidebar a.ads-here.ad-600{line-height:598px}
a.ads-here:hover{text-decoration:none;color:<data:skin.vars.keycolor/>;border-color:#ccc}


/* Attribution */
.Attribution a{font-size:14px;line-height:16px;display:block}
.Attribution a > svg{width:16px;height:16px;float:left;margin:0 4px 0 0}
.Attribution .copyright{font-size:12px;color:<data:skin.vars.keycolor/>;padding:0 20px;margin:3px 0 0}





/* error */
.error404 #main-wrapper{width:100%}
.error404 #sidebar-wrapper{display:none}
.errorWrap h3{font-size:160px;line-height:1em;margin:0 0 40px}
.errorWrap h4{font-size:25px;margin:0 0 30px}
.errorWrap p{margin:0 0 15px}


 /* Responsive iframe */
#main-wrapper iframe{width:100%!important;}
@media screen and (max-width:960px){
#main-wrapper iframe{max-height:90%}}
@media screen and (max-width:768px){
#main-wrapper iframe{max-height:75%}}
@media screen and (max-width:600px){
#main-wrapper iframe{max-height:60%}}
@media screen and (max-width:480px){
#main-wrapper iframe{height:auto!important;max-height:auto!important}}

/* bar */
::-webkit-scrollbar {
    background-color: #efeff2;
    width: 12px;
}

::-webkit-scrollbar-thumb {
    background: #c2c2ca;
    border: 2px solid #efeff2;
    border-radius: 10px;
}
::-webkit-scrollbar-track {
    border-left: 1px solid #eaeaea;
}

/* sosial */
.social a:before{display:inline-block;font-display: swap; font-family:'icomoon';font-style:normal;font-weight:400}
.social .facebook a:before{content:"\f09a"}
.social .twitter a:before{content:"\f099"}
.social .youtube a:before{content:"\f16a"}
.social .github a:before{content:"\f09b"}
.social .linkedin a:before{content:"\f0e1"}
.social .instagram a:before{content:"\f16d"}
.social .pinterest a:before{content:"\f0d2"}
.social-bg .facebook a,.social-bg .facebook-f a,.social-bg-hover .facebook a,.social-bg-hover .facebook-f a{background:#3b5998;}
.social-bg .twitter a,.social-bg-hover .twitter a{background:#55acee;}
.social-bg .youtube a,.social-bg-hover .youtube a{background:#b31217;}
.social-bg .instagram a,.social-bg-hover .instagram a{background:#3f729b;}
.social-bg .pinterest a,.social-bg .pinterest-p a,.social-bg-hover .pinterest a,.social-bg-hover .pinterest-p a{background:#cc2127;}
.social-bg .linkedin a,.social-bg-hover .linkedin a{background:#0976b4;}
 
.social-color .blogger a,.social-color-hover .blogger a{color:#ff5722}
.social-color .facebook a,.social-color .facebook-f a,.social-color-hover .facebook a,.social-color-hover .facebook-f a{color:#3b5999}
.social-color .twitter a,.social-color-hover .twitter a{color:#00acee}
.social-color .youtube a,.social-color-hover .youtube a{color:#f50000}
.social-color .instagram a,.social-color-hover .instagram a{color:#dd277b}
.social-color .pinterest a,.social-color .pinterest-p a,.social-color-hover .pinterest a,.social-color-hover .pinterest-p a{color:#ca2127}
.social-color .linkedin a,.social-color-hover .linkedin a{color:#0077b5}






/* costum widget et sosial */
.sidebar ul.social-icons{display:flex;flex-wrap:wrap;margin:0 -2px}
.sidebar .social-icons li{float:left;width:100%;box-sizing:border-box;margin:4px 0 0}
.rtl .sidebar .social-icons li{float:right}
.sidebar .social-icons li a{float:left;width:100%;height:32px;font-size:15px;color:#fff;text-align:center;line-height:32px;box-sizing:border-box;padding:0;border:1px solid rgba(0,0,0,.1);border-bottom-width:2px;border-radius:2px}
.sidebar .social-icons li a.instagram{border:0}
.sidebar .social-icons li a:before{float:left;width:30px;height:29px;line-height:30px;background-color:rgba(255,255,255,0.05);margin:0}
.sidebar .social-icons li a.instagram:before{height:32px;line-height:32px}
.rtl .sidebar .social-icons li a:before{float:right}
.sidebar .social-icons li a span{float:right;font-size:14px;padding:0 13px}
.rtl .sidebar .social-icons li a span{float:left}
.sidebar .social-icons li a:hover{opacity:.85}
.sidebar .loader{height:180px}
.custom-widget .custom-item{display:block;overflow:hidden;padding:0;margin:20px 0 0}
.custom-widget .custom-item.item-0{margin:0}
.custom-widget .entry-image-link{position:relative;float:left;width:85px;height:65px;overflow:hidden;margin:0 13px 0 0}
.rtl .custom-widget .entry-image-link{float:right;margin:0 0 0 13px}
.custom-widget .entry-image-link .entry-thumb{width:85px;height:65px}
.custom-widget .cmm-avatar{width:55px;height:55px}
.custom-widget .cmm-avatar .entry-thumb{width:55px;height:55px}
.custom-widget .cmm-snippet{display:block;font-size:11px;line-height:1.5em;margin:4px 0 0}
.custom-widget .entry-header{overflow:hidden}
.custom-widget .entry-title{font-size:14px;font-weight:700;line-height:1.4em;margin:0}
.title-oswald .custom-widget .entry-title{font-weight:500}
.custom-widget .entry-meta{margin:3px 0 0}


/* media q */
@media screen and (max-width: 1165px) {
#outer-wrapper{max-width:100%}
.row-x1{width:100%}
.headerify-wrap .headerify,.header-ad-wrap > .container,#featured-wrapper .container,#content-wrapper > .container,#footer-wrapper .container{box-sizing:border-box;padding:0 20px}
}
@media screen and (max-width: 980px) {
#main-wrapper,#sidebar-wrapper{width:100%}
#sidebar-wrapper{margin:30px 0 0}
}
@media screen and (max-width: 880px) {
.magify-main-menu{display:none}
.headerify-wrap .headerify{padding:0}
.main-logo-wrap{width:100%;text-align:center;z-index:15;margin:0}
.main-logo .header-widget,.main-logo .main-logo-img,.main-logo .blog-title{float:none;display:inline-block}
.overlay,.show-mobile-menu,#slide-menu{display:block}
.nav-active .overlay{visibility:visible;opacity:1}
.search-toggle{width:auto;background-color:rgba(0,0,0,0);text-align:center;padding:0 20px}
#nav-search,.rtl #nav-search{width:unset;left:20px;right:20px;border-radius:2px 0 2px 2px}
.rtl #nav-search{border-radius:0 2px 2px 2px}
#nav-search:before{right:0}
.rtl #nav-search:before{right:unset;left:0}
}
@media screen and (max-width: 780px) {
#about-section{text-align:center}
#about-section .Image,.rtl #about-section .Image{width:100%;padding:0}
#about-section .footer-logo,.rtl #about-section .footer-logo{display:inline-block;float:none;max-width:100%;padding:0 0 30px}
#about-section .about-content,.rtl #about-section .about-content,#about-section .Image .no-image .about-content,.rtl #about-section .Image .no-image .about-content{max-width:100%;padding:0}
#about-section .LinkList,#about-section .LinkList .widget-content{width:100%}
#about-section .LinkList{margin:30px 0 0}
#about-section .LinkList .widget-content .widget-title > h3{margin:0 0 20px}
.about-section ul.social-footer,.rtl .about-section ul.social-footer{float:none;display:block;padding:0}
.about-section .social-footer li,.rtl .about-section .social-footer li{float:none;display:inline-block;margin:0 5px}
.about-section .social-footer li:last-child,.rtl .about-section .social-footer li:last-child{margin:0 5px}
#footerbar{height:auto;line-height:1.4em;padding:20px 0}
#footer-menu,#footerbar .footer-copyright{width:100%;height:unset;line-height:inherit;text-align:center;margin:0}
#footer-menu ul li,.rtl #footer-menu ul li{float:none;display:inline-block;margin:0}
#footer-menu ul li a,.rtl #footer-menu ul li a{height:unset;line-height:inherit;margin:0 7px}
#footerbar .footer-copyright .widget{padding:0 0 15px}
}
@media screen and (max-width: 680px) {
#featured .widget,#featured .widget-content,.featured-posts{height:auto}
#featured .widget-content .loader{height:200px}
.featured-item{width:50%;height:180px;margin:2px 0 0}
.featured-item.item-0{width:100%;height:200px;margin:0}
.featured-item.item-1{width:100%;height:180px;margin:2px 0 0}
.block-posts-1 .block-item{width:100%}
.block-posts-1 .item-0{width:100%;margin:0 0 5px}
.block-posts-1 .item-1{margin:20px 0 0}
.block-posts-1 .block-inner{height:200px}
.block-posts .block-column{width:100%}
.block-videos .videos-item{width:100%;padding:0 10px;margin:20px 0 0!important}
.block-videos .videos-item.item-0{margin:0!important}
.block-videos .entry-image-link{height:160px}
.block-videos .entry-title{margin:10px 0 0}
.grid-posts-1 .grid-item{width:100%;padding:0 10px;margin:20px 0 0!important}
.grid-posts-1 .grid-item.item-0{margin:0!important}
.grid-posts-1 .entry-image-link{height:160px}
.grid-posts-1 .entry-title{margin:10px 0 0}
.related-posts .related-item{width:100%;padding:0 10px;margin:20px 0 0!important}
.related-posts .related-item.item-0{margin:0!important}
.related-posts .entry-image-link{height:160px}
.related-posts .entry-title{margin:10px 0}
.index-post .entry-image,.rtl .index-post .entry-image{width:100%;height:180px;margin:0 0 15px}
.index-post .entry-header{float:left;width:100%}
.item-post h1.entry-title{font-size:31px}
.sidebar a.ads-here,.sidebar a.ads-here.ad-600{line-height:88px}
}
@media screen and (max-width: 460px) {
.featured-item{width:100%}
.featured-item.item-0 .entry-title{font-size:20px}
.featured-item.item-1 .entry-title{font-size:14px}
.featured-item.item-1 .entry-author{display:none}
.index-post .entry-title{font-size:20px}
.index-post .entry-excerpt{font-size:13px}
.item-post h1.entry-title{font-size:29px}
.comments .comment-content iframe#youtube{height:180px}
}
@media screen and (max-width: 360px) {
.featured-item,.featured-item.item-1{height:140px}
.featured-item.item-0,.block-posts-1 .block-inner,.column-inner{height:180px}
.featured-item.item-0 .entry-title{font-size:16px}
.featured-item .entry-category{display:none}
.featured-item.item-0 .entry-category{display:inline-block}
.index-post .entry-image,.rtl .index-post .entry-image{height:160px}
.index-post .entry-title{font-size:18px}
.item-post h1.entry-title{font-size:21px}
.errorWrap h3{font-size:130px}
.comments .comment-content iframe#youtube{height:140px}
}

.sticky-ads{display:-ms-flexbox;display:-webkit-box;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;position:fixed;overflow:visible;text-align:center;bottom:-104px;left:0;width:100%;z-index:9999;height:100px;background-image:none;background-color:#fff;margin-bottom:0;padding-top:4px;box-shadow:0 0 5px 0 rgba(0,0,0,0.2);transition:all .4s ease-in-out}
.sticky-ads-close{position:absolute;width:28px;height:28px;top:-28px;right:0;background-image:url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMTMnIGhlaWdodD0nMTMnIHZpZXdCb3g9JzM0MSA4IDEzIDEzJyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHhtbG5zOnhsaW5rPSdodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rJz48Zz48cGF0aCBzdHlsZT0nZmlsbDojNEY0RjRGJyBkPSdNMzU0IDkuMzFMMzUyLjY5IDhsLTUuMTkgNS4xOUwzNDIuMzEgOCAzNDEgOS4zMWw1LjE5IDUuMTktNS4xOSA1LjE5IDEuMzEgMS4zMSA1LjE5LTUuMTkgNS4xOSA1LjE5IDEuMzEtMS4zMS01LjE5LTUuMTl6Jz48L3BhdGg+PC9nPjwvc3ZnPg==");background-size:13px 13px;background-position:9px;background-color:#fff;background-repeat:no-repeat;box-shadow:0 -1px 1px 0 rgba(0,0,0,0.2);border:none;border-radius:12px 0 0 0;cursor:pointer}
.sticky-ads-close:before{position:absolute;content:"";top:-20px;right:0;bottom:0;left:-20px}
*{-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}
:active,:focus{outline:0}





#new-before-ad ,#new-after-ad{display:flex;justify-content:center;align-items:flex-start;height:800px;}
#before-ad ,#after-ad{position:-webkit-sticky;position:sticky;top:50px;margin-top:10px;}
</style>
  
 <script>
//<![CDATA[ 
var disqus_shortname ;			 			 
 var preloadLink = document.createElement("link");
preloadLink.href = "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js";
preloadLink.rel = "preload";
preloadLink.as = "script";
document.head.appendChild(preloadLink);
//]]>
</script>



&lt;/head&gt;
  &lt;body     class=&#39;<data:blog.pageType/><b:if cond='data:view.isHomepage'> home</b:if><b:if cond='data:view.isPost'> post</b:if><b:if cond='data:view.isPage'> item page</b:if><b:if cond='data:view.isArchive'> index</b:if><b:if cond='data:view.search.label'> category</b:if><b:if cond='data:view.isError'> item error404</b:if><b:if cond='data:skin.vars.showborder == &quot;0px&quot;'> nb-style</b:if><b:if cond='data:skin.vars.sidebar == &quot;1px&quot;'> left-sidebar</b:if><b:if cond='data:skin.vars.main_font_family == &quot;Oswald&quot;'> main-oswald</b:if><b:if cond='data:skin.vars.title_font_family == &quot;Oswald&quot;'> title-oswald</b:if>&#39;     

    oncontextmenu=&#39;return false;&#39;  ondragstart=&#39;return false&#39; onselectstart=&#39;return false&#39; style=&#39;user-select:none;cursor:default&#39;

  &gt;
  
  
<script>var blogId="<data:blog.blogId/>",Url="<data:blog.homepageUrl.canonical.https/>"</script> 
&lt;script&gt;window.location.href.includes(&quot;el-magnifico-template.blogspot.com&quot;)||(window.location.href=&quot;git.io/Je3F0&quot;);&lt;/script&gt;<b:include name='skipNavigation'/>
&lt;noscript id=&quot;pay&quot;&gt;&lt;style type=&#39;text/css&#39;&gt;body,html{overflow:hidden}.noscript{background:#e74c3c;color:#fff;padding:8% 0 0 0;position:fixed;bottom:0;left:0;top:0;right:0;z-index:1000;height:auto;-webkit-transform:translateZ(0);transform:translateZ(0);overflow:hidden}.noscript p{margin:0;text-align:center;padding:0 20px 10px 20px;margin:auto;font-size:3rem;line-height:1.5;font-family:monospace;max-width:1010px;text-transform:uppercase;font-weight:700}.noscript p span{color:#ffe88b;font-size:10rem;line-height:normal;font-weight:normal}.outer-wrapper{display:none}.outer-wrapper{overflow:hidden}&lt;/style&gt;&lt;div class=&#39;noscript&#39;&gt;&lt;p&gt;&lt;span&gt;&#9888;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Please Enable Javascript to view our site content&lt;/p&gt;&lt;p&gt;Thank you&lt;/p&gt;&lt;/div&gt;&lt;/noscript&gt;


  
<!-- Theme Options -->
  <div id='theme-options' style='display:none'>
    <b:section class='ify-panel' id='ify-panel' maxwidgets='4' name='' showaddelement='no'>
	
 <b:widget  id='Label62' locked='false' title='Main Tags' type='Label' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='sorting'>ALPHA</b:widget-setting>
              <b:widget-setting name='display'>CLOUD</b:widget-setting>
              <b:widget-setting name='selectedLabelsList'></b:widget-setting>
              <b:widget-setting name='showType'>ALL</b:widget-setting>
              <b:widget-setting name='showFreqNumbers'>false</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
              <b:include name='content'/>
            </b:includable>
            <b:includable id='cloud'>
			
			<script   async='async' type='text/javascript'>var labels = [];<b:loop values='data:labels' var='label'>labels.push("<data:label.name/>");</b:loop></script></b:includable>
            <b:includable id='content'>
                <b:include cond='data:this.display == &quot;list&quot;' name='list'/>
                <b:include cond='data:this.display == &quot;cloud&quot;' name='cloud'/>
            </b:includable>

          </b:widget>
   
         <b:widget id='PopularPosts111' locked='false' title='Most Popular' type='PopularPosts' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='numItemsToShow'>3</b:widget-setting>
              <b:widget-setting name='showThumbnails'>true</b:widget-setting>
              <b:widget-setting name='showSnippets'>true</b:widget-setting>
              <b:widget-setting name='timeRange'>LAST_WEEK</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
			<script  async='async' type='text/javascript'>
			var li = '';
			<b:loop values='data:posts' var='post'>
						li = li +&#39;&lt;li&gt;&lt;a href=&quot;&#39; + &#39;<data:post.url/>&#39; + &#39;&quot;&gt;&#39; +&#39;<data:post.title/>&#39;+ &#39;&lt;/a&gt;&lt;/li&gt;&#39;  ;
			</b:loop>
			var read_also_post = '<ul>'+li+'</ul>';
			</script>
 
   </b:includable>
          </b:widget>
    </b:section>
 


 </div>


  
  <!-- Outer Wrapper -->
<div id='outer-wrapper'>
<b:class cond='data:skin.vars.boxed == &quot;1px&quot;' name='boxed'/>
  <!-- Header Wrapper -->
  <header  id='header-wrapper'>
    <!-- Headerify -->
    <div class='headerify-wrap'>
      <div class='headerify'>
        <div class='container row-x1'>
				           <a class='show-mobile-menu'  aria-label='mobile menu' href='javascript:;'/>

				
          
		  <div class='main-logo-wrap'>
            <b:section class='main-logo' id='main-logo' maxwidgets='1'  showaddelement='no'>
              <b:widget id='Header1' locked='true' title='Demo Blog (Header)' type='Header' version='2' visible='true'>
                <b:widget-settings>
                  <b:widget-setting name='displayUrl'/>
                  <b:widget-setting name='displayHeight'>0</b:widget-setting>
                  <b:widget-setting name='sectionWidth'>150</b:widget-setting>
                  <b:widget-setting name='useImage'>false</b:widget-setting>
                  <b:widget-setting name='shrinkToFit'>false</b:widget-setting>
                  <b:widget-setting name='imagePlacement'>BEHIND</b:widget-setting>
                  <b:widget-setting name='displayWidth'>0</b:widget-setting>
                </b:widget-settings>
                <b:includable id='main' var='this'>
                  <div class='header-widget'>
                    <b:include cond='data:imagePlacement in {&quot;REPLACE&quot;, &quot;BEFORE_DESCRIPTION&quot;}' name='image'/>
                    <b:include cond='data:imagePlacement == &quot;BEHIND&quot;' name='title'/>
                  </div>
                </b:includable>
                <b:includable id='behindImageStyle'>
                  <b:if cond='data:sourceUrl'>
                    <b:include cond='data:this.image' data='{                    image: data:this.image,                    selector: &quot;.header-widget&quot;                  }' name='responsiveImageStyle'/>
                    <style type='text/css'>
                      .header-widget {
                        background-position: <data:blog.locale.languageAlignment/>;
                        background-repeat: no-repeat;
                      }
                    </style>
                  </b:if>
                </b:includable>
                <b:includable id='description'>
                  <p>
                    <data:this.description/>
                  </p>
                </b:includable>
                <b:includable id='image'>
                  <a class='main-logo-img' expr:href='data:blog.homepageUrl'>

                    <img expr:alt='data:blog.title.escaped' expr:data-height='data:height' expr:data-width='data:width' expr:src='data:image'/>
					                         
					
                    <b:if cond='data:view.isHomepage'><b:if cond='data:widget.sectionId == &quot;main-logo&quot;'><h1 id='h1-tag'><data:title/></h1></b:if></b:if>
                  </a>
                </b:includable>
                <b:includable id='logo-label'>
      <b:if cond='data:view.search.label'><h2 class='blog-title'><b:tag expr:href='data:blog.homepageUrl' name='a'><data:view.search.label/></b:tag></h2></b:if> 
    </b:includable>
                <b:includable id='title'>
                  <h1 class='blog-title'>
                    <b:tag expr:href='data:blog.homepageUrl' name='a'>
                      <data:title/>
                    </b:tag>
                  </h1>
                </b:includable>
              </b:widget>
            </b:section>
          </div>
	


	
						
          <nav class='main-menu-wrap'>
            <div class='magify-main-menu ' id='magify-main-menu' >
<div class="widget LinkList show-menu" >
<ul id='magify-main-menu-nav' >
<li class="has-sub"><a href="">الصفحات</a><ul class="sub-menu m-sub"><li><a href="">إتصل بنا</a></li></ul></li><li class="has-sub"><a href="">مميزات القالب</a><ul class="sub-menu m-sub"><li><a href="">شكل الموضوع</a></li><li><a href="">LTR Version</a></li></ul></li><li><a href="">شراء القالب</a></li></ul>
                   </div>

</div>
				
    
          </nav>		

		
          <a class='search-toggle'  aria-label="search" href='javascript:;'/>
          <div id='nav-search'>
         
			<form action="https://www.google.com/search" class="search-form" method="get" name="search-form" target="_blank">
<input name="sitesearch" type="hidden" value="el-magnifico-template.blogspot.com"/>
<input autocomplete="on" class="search-input" name="q" expr:placeholder='data:messages.search' required="required"  type="text"/>
<button class="search-action" type="submit"><data:messages.ok.escaped/></button>
</form>
			
			
			
          </div>
		  
        </div>
      </div>    
    </div>
  </header>

  <div class='header-ad-wrap multiple'>
      <b:section class='header-ad container row-x1' id='header-ad' maxwidgets='1'  showaddelement='yes'/>
    </div>

      <b:section cond='!data:view.isPage' class='sticky-ads' id='sticky-ads' maxwidgets='1'  showaddelement='yes'>
	          <b:widget id='HTML39' locked='true' title='' type='HTML' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='content'><![CDATA[<a  aria-label="ads" href='/'><img alt='' class='image wp-image-430  attachment-medium size-medium' data-src='https://via.placeholder.com/300x90' height='250' style='max-width: 100%; height: auto;' width='300'/></a>]]></b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>
		           

            <div class='widget-content'>
              <data:content/>
            </div>
				  <button aria-label='Kapat' class='sticky-ads-close' onclick='document.getElementById(&apos;sticky-ads&apos;).style.display=&apos;none&apos;;'/>

          </b:includable>
        </b:widget>
      </b:section>	
	 
	<b:if cond='data:view.isHomepage and data:skin.vars.magazine == &quot;1px&quot;'>
    <!-- Featured Wrapper -->
    <div id='featured-wrapper'>
      <b:section class='featured container row-x1' id='featured' maxwidgets='1'  showaddelement='yes'>
        <b:widget id='HTML3' locked='false' title='Featured Posts' type='HTML' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='content'>{getFeatured} $label={recent}</b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>
            <b:include name='widget-title'/>
            <div class='widget-content'>
              <data:content/>
            </div>
			<div class="loader"/>

          </b:includable>
        </b:widget>
      </b:section>
    </div>
  </b:if>
  <!-- Content Wrapper -->
  <div id='content-wrapper'>
    <div class='container row-x1'>
      <!-- Main Wrapper -->
	  

	  
      <main id='main-wrapper'>
        <b:section class='block-posts' cond='data:view.isHomepage and data:skin.vars.magazine == &quot;1px&quot;' id='block-posts-1'  showaddelement='yes'>
		       <b:widget id='HTML115' locked='false' title='videos' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'>{getBlock} $results={5} $label={قسم 1} $type={block1} $color={#1abc9c}</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
	        </b:section>
	  
        <b:section class='home-ad' cond='data:view.isHomepage' id='home-ads-1' maxwidgets='1' showaddelement='yes'/>
        <b:section class='main' id='main' maxwidgets='1'  showaddelement='yes'>
          <b:widget id='Blog1' locked='true' title='Blog Posts' type='Blog' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='commentLabel'>Post a Comment</b:widget-setting>
              <b:widget-setting name='showShareButtons'>true</b:widget-setting>
              <b:widget-setting name='authorLabel'>by</b:widget-setting>
              <b:widget-setting name='disableGooglePlusShare'>true</b:widget-setting>
              <b:widget-setting name='style.unittype'>TextAndImage</b:widget-setting>
              <b:widget-setting name='timestampLabel'>-</b:widget-setting>
              <b:widget-setting name='reactionsLabel'>Post Navi</b:widget-setting>
              <b:widget-setting name='showAuthorProfile'>true</b:widget-setting>
              <b:widget-setting name='style.layout'>1x1</b:widget-setting>
              <b:widget-setting name='showLocation'>false</b:widget-setting>
              <b:widget-setting name='showTimestamp'>true</b:widget-setting>
              <b:widget-setting name='postsPerAd'>1</b:widget-setting>
              <b:widget-setting name='style.bordercolor'>#ffffff</b:widget-setting>
              <b:widget-setting name='backlinksLabel'>You might like</b:widget-setting>
              <b:widget-setting name='showDateHeader'>false</b:widget-setting>
              <b:widget-setting name='style.textcolor'>#171c24</b:widget-setting>
              <b:widget-setting name='showCommentLink'>true</b:widget-setting>
              <b:widget-setting name='style.urlcolor'>#aaaaaa</b:widget-setting>
              <b:widget-setting name='showAuthor'>true</b:widget-setting>
              <b:widget-setting name='style.linkcolor'>#3455DB</b:widget-setting>
              <b:widget-setting name='style.bgcolor'>#ffffff</b:widget-setting>
              <b:widget-setting name='showLabels'>true</b:widget-setting>
              <b:widget-setting name='postLabelsLabel'>Tags</b:widget-setting>
              <b:widget-setting name='showBacklinks'>true</b:widget-setting>
              <b:widget-setting name='showInlineAds'>false</b:widget-setting>
              <b:widget-setting name='showReactions'>true</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
              <b:include name='searchMessage'/>
              <b:include cond='data:view.isHomepage' name='blogPostsTitle'/>
              <div class='blog-posts hfeed container'>
                <b:class cond='data:view.isMultipleItems' name='index-post-wrap'/>
                <b:class cond='data:view.isSingleItem' name='item-post-wrap'/>
                <b:loop index='i' values='data:posts' var='post'>
                  <b:include data='post' name='postCommentsAndAd'/>
                </b:loop>
              </div>
              <b:include cond='data:view.isMultipleItems' name='postPagination'/>

              <b:include  name='jsMessages'/>
            </b:includable>
            <b:includable id='aboutPostAuthor'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='addComments'>
              <a expr:href='data:post.commentsUrl' expr:onclick='data:post.commentsUrlOnclick'>
                <b:message name='messages.postAComment'/>
              </a>
            </b:includable>
            <b:includable id='backLinks' var='post'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='blogPostsTitle'>
                <div class='blog-posts-title title-wrap'><h3 class='title'><data:messages.recentPosts/></h3><a class='more' href='/search'><data:messages.showMore/></a></div>
            </b:includable>
            <b:includable id='commentAuthorAvatar'>
              <div class='avatar-image-container'>
                <img  alt='avatar' class='author-avatar' expr:data-src='data:comment.authorAvatarSrc' height='35' width='35'/>
              </div>
            </b:includable>
            <b:includable id='commentDeleteIcon' var='comment'>
              <span expr:class='&quot;item-control &quot; + data:comment.adminClass'>
                <b:if cond='data:showCmtPopup'>
                  <div class='goog-toggle-button'>
                    <div class='goog-inline-block comment-action-icon'/>
                  </div>
                  <b:else/>
                  <a class='comment-delete' expr:href='data:comment.deleteUrl' expr:title='data:messages.deleteComment'>
                    <img  expr:alt='data:messages.deleteComment' src='https://resources.blogblog.com/img/icon_delete13.gif'/>
                  </a>
                </b:if>
              </span>
            </b:includable>
            <b:includable id='commentForm' var='post'>
              <div class='comment-form'>
                <a name='comment-form'/>
                <h4 id='comment-post-message'><data:messages.postAComment/></h4>
                <b:if cond='data:this.messages.blogComment != &quot;&quot;'>
                  <p><data:this.messages.blogComment/></p>
                </b:if>
                <b:include data='post' name='commentFormIframeSrc'/>
  <iframe  height='280' id='comment-editor' layout='fixed-height' sandbox='allow-scripts allow-same-origin allow-forms allow-top-navigation'>
                          
                        </iframe>
              </div>
            </b:includable>
            <b:includable id='commentFormIframeSrc' var='post'>
              <a expr:href='data:post.commentFormIframeSrc' id='comment-editor-src'/>
            </b:includable>
            <b:includable id='commentItem' var='comment'>
              <div class='comment' expr:id='&quot;c&quot; + data:comment.id'>
                <b:include cond='data:blog.enabledCommentProfileImages' name='commentAuthorAvatar'/>
                <div class='comment-block'>
                  <div class='comment-author'>
                    <b:if cond='data:comment.authorUrl'>
                      <b:message name='messages.authorSaidWithLink'>
                        <b:param expr:value='data:comment.author' name='authorName'/>
                        <b:param expr:value='data:comment.authorUrl' name='authorUrl'/>
                      </b:message>
                      <b:else/>
                      <b:message name='messages.authorSaid'>
                        <b:param expr:value='data:comment.author' name='authorName'/>
                      </b:message>
                    </b:if>
                  </div>
                  <div expr:class='&quot;comment-body&quot; + (data:comment.isDeleted ? &quot; deleted&quot; : &quot;&quot;)'>
                    <data:comment.body/>
                  </div>
                  <div class='comment-footer'>
                    <span class='comment-timestamp'>
                      <a expr:href='data:comment.url' title='comment permalink'>
                        <data:comment.timestamp/>
                      </a>
                      <b:include data='comment' name='commentDeleteIcon'/>
                    </span>
                  </div>
                </div>
              </div>
            </b:includable>
            <b:includable id='commentList' var='comments'>
              <div id='comments-block'>
                <b:loop values='data:comments' var='comment'>
                  <b:include data='comment' name='commentItem'/>
                </b:loop>
              </div>
            </b:includable>
            <b:includable id='commentPicker' var='post'>
              <b:if cond='data:post.commentSource == 1'>
                <b:include data='post' name='iframeComments'/>
                <b:elseif cond='data:post.showThreadedComments'/>
                <b:include data='post' name='threadedComments'/>
                <b:else/>
                <b:include data='post' name='comments'/>
              </b:if>
            </b:includable>
            <b:includable id='comments' var='post'>
              <section expr:class='&quot;comments&quot; + (data:post.embedCommentForm ? &quot; embed&quot; : &quot;&quot;)' expr:data-num-comments='data:post.numberOfComments' id='comments'>
                <b:class cond='data:post.numberOfComments == &quot;0&quot;' name='no-comments'/>
                <a name='comments'/>
                <b:if cond='data:post.allowComments'>
                  <b:include name='commentsTitle'/>
                  <div expr:id='data:widget.instanceId + &quot;_comments-block-wrapper&quot;'>
                    <b:include cond='data:post.comments' data='post.comments' name='commentList'/>
                  </div>
                  <b:if cond='data:post.commentPagingRequired'>
                    <div class='paging-control-container'>
                      <b:if cond='data:post.hasOlderLinks'>
                        <a expr:class='data:post.oldLinkClass' expr:href='data:post.oldestLinkUrl'>
                          <data:messages.oldest/>
                        </a>
                        <a expr:class='data:post.oldLinkClass' expr:href='data:post.olderLinkUrl'>
                          <data:messages.older/>
                        </a>
                      </b:if>
                      <span class='comment-range-text'>
                        <data:post.commentRangeText/>
                      </span>
                      <b:if cond='data:post.hasNewerLinks'>
                        <a expr:class='data:post.newLinkClass' expr:href='data:post.newerLinkUrl'>
                          <data:messages.newer/>
                        </a>
                        <a expr:class='data:post.newLinkClass' expr:href='data:post.newestLinkUrl'>
                          <data:messages.newest/>
                        </a>
                      </b:if>
                    </div>
                  </b:if>
                  <div class='footer'>
				  
				  <iframe  height='280' id='comment-editor' layout='fixed-height' sandbox='allow-scripts allow-same-origin allow-forms allow-top-navigation'>
                          
                        </iframe>
	 
                  </div>
                </b:if>
           
              </section>
            </b:includable>
            <b:includable id='commentsTitle'>
              <!-- Post Commments Title -->
              <b:if cond='data:post.numberOfComments == 0'>
                <div class='title-wrap comments-title'><h3 class='title'><data:messages.postAComment/></h3><b:class cond='data:this.messages.blogComment != &quot;&quot;' name='has-message'/></div>
                <b:if cond='data:this.messages.blogComment != &quot;&quot;'>
                  <p class='comments-message excerpt'><data:this.messages.blogComment/></p>
                </b:if>
                <b:else/>
                <div class='title-wrap comments-title'><h3 class='title'><data:post.numberOfComments/> <data:messages.comments/></h3><b:class cond='data:this.messages.blogComment != &quot;&quot;' name='has-message'/></div>
                <b:if cond='data:this.messages.blogComment != &quot;&quot;'>
                  <p class='comments-message excerpt'><data:this.messages.blogComment/></p>
                </b:if>
              </b:if>
            </b:includable>
            <b:includable id='feedLinks'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='feedLinksBody' var='links'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='headerByline' var='post'>
              <!-- Post Header Meta -->
              <b:if cond='data:view.isMultipleItems'>
                <b:if cond='data:allBylineItems.author or data:allBylineItems.timestamp'>
                  <div class='entry-meta'>
                    <b:include cond='data:allBylineItems.author' data='post' name='postAuthor'/>
                    <b:include cond='data:allBylineItems.timestamp' data='post' name='postTimestamp'/>
                  </div>
                </b:if>
              </b:if>
              <b:if cond='data:view.isPost'>
			  
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "<data:blog.title.jsonEscaped/>",
            "url": "<data:blog.homepageUrl.canonical.https/>",
						  "logo": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
            "sameAs": [
                "http://www.facebook.com/",
                "http://www.twitter.com/",
                "https://www.linkedin.com/",
                "http://www.instagram.com/"
            ]
        }
    </script>
 <script type='application/ld+json' >
        {
            "@context": "https://schema.org",
            "@graph": [{
                "@type": "Organization",
                "@id": "<data:blog.homepageUrl.canonical.https/>#organization",
                "name": "<data:blog.title.jsonEscaped/>",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "sameAs": ["https://www.facebook.com/", "https://twitter.com/"],
                "logo": {
                    "@type": "ImageObject",
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo",
                    "url": "https://searchengineland.com/figz/wp-content/seloads/2019/05/SearchEngineLand_logo_1920x1080.png",
                    "width": 1920,
                    "height": 1080,
                    "caption": "<data:blog.title.jsonEscaped/>"
                },
                "image": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#logo"
                }
            }, {
                "@type": "WebSite",
                "@id": "<data:blog.homepageUrl.canonical.https/>#website",
                "url": "<data:blog.homepageUrl.canonical.https/>",
                "name": "<data:blog.title.jsonEscaped/>",
                "publisher": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "potentialAction": {
                    "@type": "SearchAction",
                    "target": "<data:blog.homepageUrl.canonical.https/>?q={search_term_string}",
                    "query-input": "required name=search_term_string"
                }
            }, {
                "@type": "WebPage",
                "@id": "<data:post.url.canonical.jsonEscaped/>#webpage",
                "url": "<data:post.url.canonical.jsonEscaped/>",
                "name": "<data:post.title.jsonEscaped/> - <data:blog.title.jsonEscaped/>",
                "isPartOf": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#website"
                },
                "image": {
                    "@type": "ImageObject",
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage",
                    "url": "<b:eval expr='(data:post.featuredImage ? resizeImage(data:post.featuredImage, 1200, &quot;1200:630&quot;) : &quot;https://lh3.googleusercontent.com/ULB6iBuCeTVvSjjjU1A-O8e9ZpVba6uvyhtiWRti_rBAs9yMYOFBujxriJRZ-A=w1200&quot;).jsonEscaped'/>",
                    "width": 1918,
                    "height": 1080
                },
                "primaryImageOfPage": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage"
                },
                "datePublished": "<data:post.date.iso8601.jsonEscaped/>",
                "dateModified": "<data:post.lastUpdated.iso8601.jsonEscaped/>",
                "description": "<b:eval expr='(data:post.body snippet { length: 150, links: false, linebreaks: false, ellipsis: true }).jsonEscaped'/>"
            }, {
                "@type": "NewsArticle",
                "@id": "<data:post.url.canonical.jsonEscaped/>#article",
                "isPartOf": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#webpage"
                },
                "author": {
                    "@id": "https://searchengineland.com/author/tony-edward#author"
                },
                "headline": "<data:post.title.jsonEscaped/>",
                "datePublished": "<data:post.date.iso8601.jsonEscaped/>",
                "dateModified": "<data:post.lastUpdated.iso8601.jsonEscaped/>",
				  "thumbnailUrl": "<b:eval expr='(data:post.featuredImage ? resizeImage(data:post.featuredImage, 480, &quot;480:360&quot;) : &quot;https://lh3.googleusercontent.com/ULB6iBuCeTVvSjjjU1A-O8e9ZpVba6uvyhtiWRti_rBAs9yMYOFBujxriJRZ-A=w1200&quot;).jsonEscaped'/>",
                "mainEntityOfPage": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#webpage"
                },
                "publisher": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                },
                "image": {
                    "@id": "<data:post.url.canonical.jsonEscaped/>#primaryimage"
                },
                "articleSection": "<b:if cond='data:post.labels'><b:loop values='data:post.labels' var='label'><data:label.name.jsonEscaped/><b:if cond='not data:label.isLast'>, </b:if></b:loop></b:if>",
                "copyrightYear": "2019",
                "copyrightHolder": {
                    "@id": "<data:blog.homepageUrl.canonical.https/>#organization"
                }
            },{
                "@type": ["Person"],
                "@id": "https://searchengineland.com/author/tony-edward#author",
                "name": "<data:post.author.name/>"				}
			]
        }
    </script>
	
<script type='application/ld+json'>{ "@context": "http://schema.org", "@type": "BreadcrumbList", "itemListElement": [{ "@type": "ListItem", "position": 1, "name": "<data:messages.home/>", "item": "<data:blog.homepageUrl.canonical/>" }, { "@type": "ListItem", "position": 2,<b:if cond='data:post.labels'> "name": "<data:post.labels.first.name/>", "item": "<data:post.labels.first.url.canonical/>" <b:else/> "name": "Articles", "item": "<data:blog.homepageUrl.canonical/>search" </b:if> }, { "@type": "ListItem", "position": 3, "name": "<data:post.title/>", "item": "<data:post.url.canonical/>" }] }</script>
 <b:if cond='data:allBylineItems.author or data:allBylineItems.timestamp or data:allBylineItems.comments'>
                  <b:class name='has-meta'/>
                  <div class='entry-meta'>
                    <b:include cond='data:allBylineItems.author' data='post' name='postAuthor'/>
                    <b:include cond='data:allBylineItems.timestamp' data='post' name='postTimestamp'/>
                    <b:include cond='data:allBylineItems.comments' data='post' name='postReplyCount'/>
				
				<span id='entry-readTime' class='entry-readTime'></span>	
				<span class="entry-view" id="entry-view"></span>

<b:if cond='data:post.body contains "bootstrap" '>

<script>
// todo
                  //<![CDATA[
			  
	items.innerHTML = "<style>.item #main-wrapper{width:100%} .blog-post-comments ,#footer-wrapper, #header-wrapper , .item #sidebar-wrapper,.skip-navigation ,#st_gdpr_iframe ,#slide-menu{display:none !important} .entry-title {     text-align: -webkit-center;}</style>";
  document.getElementById("page-skin-1").outerHTML = "";


           /* ]]> */

</script>


</b:if>				
				
				
<script  async='async' type='text/javascript'>
// readtime
var github_un ="el-magnifico-template" ,disqusShortname = "http-aljami3amaroc-blogspot-com", github_pw = "ismailezzaki97";
var min_read= " دقائق للقراءة";
var post_Id = &quot;<data:post.id/>&quot;;
var post_Link = &quot;<data:post.url/>&quot;;
var post_Image = &quot;<data:post.featuredImage/>&quot;;
var post_desc = &quot;  <data:post.snippets.short.jsonEscaped/>&quot;;
var post_tite = &quot;<data:post.title.jsonEscaped/>&quot;;
var up_date = &quot;<b:eval expr='format(data:post.lastUpdated, "yyyyMMddhhmm")'/>&quot;;
var tax = &quot;<data:post.body.jsEscaped/>&quot;;
var totalWords = tax.split(&quot; &quot;).length;
var timeToRead = totalWords / 200;
var timeInt = Math.round(timeToRead) ;
document.getElementById(&quot;entry-readTime&quot;).innerHTML = timeInt + min_read;
preloadLink = document.createElement("link");
preloadLink.href = "https://api.github.com/repos/"+ github_un+"/"+github_un+".github.io" +"/contents/{+path}".replace('{+path}',"posts/"+post_Id);
preloadLink.rel = "prefetch";
document.head.appendChild(preloadLink);

</script>	
                  </div>
                </b:if>
              </b:if>
            </b:includable>
            <b:includable id='homePageLink'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='iframeComments' var='post'>
              <b:if cond='data:post.allowIframeComments'>
                <script expr:src='data:post.iframeCommentSrc' type='text/javascript'/>
                <div class='cmt_iframe_holder' expr:data-href='data:post.url.canonical' expr:data-viewtype='data:post.viewType'/>
                <b:if cond='!data:post.embedCommentForm'>
                  <b:include data='post' name='commentsLink'/>
                </b:if>
              </b:if>
            </b:includable>
            <b:includable id='indexPost' var='post'>
              <!-- Index Post Content -->
              <b:include data='post' name='postFeaturedImage'/>
              <div class='entry-header'>
                <b:include data='post' name='postHeader'/>
                <b:include data='post' name='headerByline'/>
                <b:include data='post' name='postSummary'/>
              </div>
            </b:includable>
            <b:includable id='inlineAd' var='post'>
              <b:if cond='!data:view.isPreview '>
                <b:if cond='data:i != 0'>
                  <b:if cond='data:post.includeAd and data:post.adNumber'>
                    <b:if cond='data:this.adCode or data:this.adClientId or data:blog.adsenseClientId'>
                      <div expr:class='&quot;index-post post-ad-type post-ad-&quot; + data:i'>
                        <div class='inline-ad-wrap'>
                          <div class='inline-ad'>
                            <b:if cond='data:this.adCode != &quot;&quot;'>
                              <data:this.adCode/>
                              <b:else/>
                              <b:if cond='data:this.adClientId or data:blog.adsenseClientId'>
                                <ins class='adsbygoogle' data-ad-format='fluid' data-ad-layout-key='-fp-6o+cy+73-sm' expr:data-ad-client='data:adClientId ?: data:blog.adsenseClientId' expr:data-ad-host='data:blog.adsenseHostId' expr:data-analytics-uacct='data:blog.analyticsAccountNumber' expr:style='data:style ?: &quot;display: block;&quot;' style='display:block' data-full-width-responsive='false'/>
                                <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
                              </b:if>
                            </b:if>
                          </div>
                        </div>
                      </div>
                    </b:if>
                  </b:if>
                </b:if>
              </b:if>
            </b:includable>
            <b:includable id='itemPost' var='post'>
              <!-- Item Post Content -->
              <div class='item-post-inner'>
                <div class='item-post-padd'>
                  <div class='entry-header blog-entry-header'>
                    <b:include data='post' name='postHeader'/>
              
                  </div>
 <b:if cond='data:view.isPost '>
  <div class='clearfix'/>

  
  
<div id="toc_container" style="display: none;">
<div id="toc_list" onclick="if (document.getElementById('toc').style.display === 'none') { document.getElementById('toc').style.display = 'block'; } else { document.getElementById('toc').style.display = 'none'; }" role="button" tabindex="0">
<b:include data='{ message: &quot;contents&quot; }' name='translate'/> <svg height="18" viewBox="0 0 24 24" width="18"><path d="M12,18.17L8.83,15L7.42,16.41L12,21L16.59,16.41L15.17,15M12,5.83L15.17,9L16.58,7.59L12,3L7.41,7.59L8.83,9L12,5.83Z" fill="#000000"></path></svg></div>
<div id="toc">
</div>
</div>
</b:if>	  
				  
                  <b:include data='post' name='postBody'/>
				  

                <b:include cond='data:view.isPost and data:allBylineItems.labels' data='post' name='postLabels'/>
                </div>
                <b:include cond='data:view.isPost and data:allBylineItems.share' data='post' name='postShareButtons'/>
              </div>
              <b:include cond='data:view.isPost' data='post' name='postFooter'/>
            </b:includable>
            <b:includable id='jsMessages'>
              &lt;script type=&#39;text/javascript&#39;&gt;
              var messages = {
              showMore: &quot;<data:messages.showMore/>&quot;,
              postAuthor: &quot;<b:if cond='data:allBylineItems.author'>true<b:else/>false</b:if>&quot;,
              postDate: &quot;<b:if cond='data:allBylineItems.timestamp'>true<b:else/>false</b:if>&quot;
              }
              &lt;/script&gt;
            </b:includable>
            <b:includable id='nextPageLink'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='post' var='post'>
              <!-- Index Posts -->
              <b:if cond='data:view.isMultipleItems'>
                <b:include data='post' name='indexPost'/>
              </b:if>
              <!-- Item Post -->
              <b:if cond='data:view.isSingleItem'>
                <b:include data='post' name='itemPost'/>
              </b:if>
            </b:includable>
            <b:includable id='postAuthor' var='post'>
              <!-- Post Author -->
              <span class='entry-author'>بواسطة :<data:post.author.name/></span>
            </b:includable>
            <b:includable id='postBody' var='post'> 
              <!-- Ads before post content, if post page. -->
              <b:if cond='data:view.isPost'><div id='before-ad'/></b:if>
              <!-- Post Body Entry Content-->
              <div class='post-body entry-content' id='post-body'>
			  
 
                <data:post.body/>
	              </div>
				   <b:if cond='data:view.isPost'>
<div class='content-post' id='pager-body-out'/>
<div class='post-nav' style="display:none">
<div class='blog-pager-older-link' id='pager-prev'>
<a><span>
السابق
</span><span class='siki-prev'/></a></div>
<div class='blog-pager-newer-link' id='pager-next'>
<a><span>
التالي
</span><span class='siki-next'/></a></div>
<div id='pager-page-number'/>
</div>
</b:if>
              <b:if cond='data:view.isPost'><div id='after-ad'/></b:if>
			  
            </b:includable>
            <b:includable id='postBodySnippet' var='post'>
              <b:include data='post' name='postBody'/>
            </b:includable>
         

            <b:includable id='postCommentsAndAd' var='post'>
              <!-- In-Feed Ads -->
              <b:include cond='data:view.isMultipleItems and not data:view.search.label and not data:view.search.query and not data:view.isArchive' data='post' name='inlineAd'/>
              <article class='blog-post '>
                <b:class cond='data:view.isMultipleItems' expr:name='&quot;index-post post-&quot; + data:i'/>
                <b:class cond='data:view.isSingleItem' name='item-post'/>
                <b:include data='post' name='post'/>
              </article>
              <b:if cond='data:view.isSingleItem and data:post.allowComments'>
                <!-- Post Comments -->
                <div class='blog-post-comments'>
                  <b:include data='post' name='threadedCommentsDisqus'/>
                  <b:include  data='post' name='commentPicker'/>
                </div>
              </b:if>
              <!-- Post Navigation -->
            </b:includable>
            <b:includable id='postCommentsLink'>
              <b:if cond='data:view.isMultipleItems'>
                <span class='byline post-comment-link container'>
                  <b:include cond='data:post.commentSource != 1' name='commentsLink'/>
                  <b:include cond='data:post.commentSource == 1' name='commentsLinkIframe'/>
                </span>
              </b:if>
            </b:includable>
            <b:includable id='postFeaturedImage' var='post'>
              <!-- Post Featured Image on Index -->
              <div class='entry-image'>
   <b:if cond='data:post.labels'>
                <span class='entry-category'><data:post.labels.first.name/></span>
              </b:if>  
				
				
			  <b:if cond='data:post.featuredImage'>
                  <b:if cond='data:post.featuredImage.isYouTube'>
                    <a class='entry-image-link youtube' expr:href='data:post.url'>
                      <img expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='data:post.featuredImage'/>
                    </a>
                    <b:else/>
                    <a class='entry-image-link' expr:href='data:post.url'>
                      <img expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)'/>
                    </a>
                  </b:if>
                  <b:else/>
                  <a class='entry-image-link' expr:href='data:post.url'>
                    <img expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' data-src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png'/>
                  </a>
                </b:if>
						
				
				

	  
	  
	  
	  
	  
              </div>
            </b:includable>
            <b:includable id='postFooter' var='post'>
              <!-- Post Footer Itens -->
              <div class='post-footer'>
                <b:include cond='data:post.author.aboutMe' data='post' name='postFooterAuthorProfile'/>
                <b:include cond='data:allBylineItems.backlinks' data='post' name='relatedPosts'/>
              </div>
            </b:includable>
            <b:includable id='postFooterAuthorProfile' var='post'>
              <div class='about-author'>
                <b:class cond='not data:allBylineItems.share' name='no-share'/>
                <div class='avatar-container'>
                  <b:if cond='data:post.author.authorPhoto.image'>
                    <img class='author-avatar' expr:data-src='resizeImage(data:post.author.authorPhoto.image, 60, &quot;1:1&quot;)'/>
                  </b:if>
                </div>
                <h3 class='author-name'>
                  <a expr:alt='data:post.author.name' expr:href='data:post.author.profileUrl' target='_blank'><data:post.author.name/></a>
                </h3>
                <div class='author-description social social-color-hover'>                        
                  <span class='description-text excerpt'><data:post.author.aboutMe/></span>
                </div>
              </div>
            </b:includable>
            <b:includable id='postHeader' var='post'>
  <!-- Post Breadcrumbs -->
              <b:if cond='data:view.isPost'>
                <b:if cond='data:skin.vars.breadcrumb == &quot;1px&quot;'><nav id='breadcrumb'><a class='home' expr:href='data:blog.homepageUrl'><data:messages.home/></a><b:if cond='data:post.labels'><em class='delimiter'/><a class='label' expr:href='data:post.labels.first.url'><data:post.labels.first.name/></a></b:if></nav></b:if>
              </b:if>
   <b:if cond='data:view.isMultipleItems'>
                <h2 class='entry-title'>
                  <a class='entry-title-link' expr:href='data:post.url'  ><data:post.title/></a>
                </h2>
              </b:if>
              <b:if cond='data:view.isSingleItem'>
                <h1 class='entry-title'>
                  <data:post.title/>
                </h1>
              </b:if>
			  

              <b:include cond='data:view.isPost' data='post' name='headerByline'/>
            </b:includable>
          
            <b:includable id='postLabels' var='post'>
              <b:if cond='data:post.labels'>
                <div class='entry-tags'>
                  <b:if cond='data:allBylineItems.labels.label != &quot;&quot;'><span class='tags-label'><data:allBylineItems.labels.label/></span></b:if>
                  <b:loop values='data:post.labels' var='label'>
                    <a class='label-link' expr:href='data:label.url' ><data:label.name/></a>
                  </b:loop>
                </div>
              </b:if>
            </b:includable>
        
         
            <b:includable id='postPagination'>
              <!-- Post Pagination Index -->
              <div class='blog-pager container' id='blog-pager'>
                <b:if cond='data:olderPageUrl'>
                  <a class='blog-pager-older-link load-more' expr:data-load='data:olderPageUrl' href='javascript:;' id='load-more-link'><b:include data='{ message: &quot;loadMorePosts&quot; }' name='translate'/></a>
                  <span class='loading'><span class='loader'/></span>
                  <span class='no-more load-more'><b:include data='{ message: &quot;noMorePosts&quot; }' name='translate'/></span>
                  <b:else/>
                  <span class='no-more load-more show'><b:include data='{ message: &quot;noMorePosts&quot; }' name='translate'/></span>
                </b:if>
              </div>
            </b:includable>
            <b:includable id='postReplyCount' var='post'>
              <!-- Post Reply -->
              <span class='entry-comments-link'><a expr:href='data:post.url.canonial + &quot;#comments&quot;'><data:post.numberOfComments/> <data:messages.comments/></a></span>
            </b:includable>
            <b:includable id='postShareButtons' var='post'>
       

       <!-- Post ShareButtons -->
              <div class='post-share'>
				  <div id="sharethis" class="sharethis-inline-reaction-buttons"></div>

			   <div class="sharethis-inline-share-buttons"></div>
          </div>
            </b:includable>
            <b:includable id='postShortMeta'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='postSummary' var='post'>
              <p class='entry-excerpt excerpt'><b:eval expr='data:post.snippets.short snippet { length: 80 }'/></p>
            </b:includable>
            <b:includable id='postTimestamp' var='post'>
              <!-- Post Timestamp -->
              <span class='entry-time'><time   class=' timeago published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span>
            </b:includable>
      
            <b:includable id='previousPageLink'>
              <b:comment>Disabled.</b:comment>
            </b:includable>
            <b:includable id='relatedPosts' var='post'>
              <!-- Related Posts -->
              <div id='related-wrap'>
                <div class='title-wrap related-title'>
                  <h3><data:messages.youMayLikeThesePosts/></h3>
                  <b:if cond='data:post.labels'>
                    <a class='more' expr:href='data:post.labels.first.url'><data:messages.showMore/></a>
                  </b:if>
                </div>
                <div class='related-content'>
                  <b:if cond='data:post.labels'>
                    <div class='related-tag' expr:data-label='data:post.labels.first.name'/>
                    <b:else/>
                    <div class='related-tag' data-label='recent'/>
                  </b:if>

				  </div> 
              </div>  
            </b:includable>
            <b:includable id='searchMessage'>
              <!-- Search Message -->
              <b:if cond='data:view.search.query'>
                <div class='queryMessage'>
                  <b:if cond='data:posts.empty'>
                    <span class='query-info query-error'/><data:view.search.resultsMessageHtml/>
                    <b:else/>
                    <span class='query-info query-success'><data:view.search.resultsMessageHtml/></span>
                  </b:if>
                </div>
              </b:if>
              <b:if cond='data:view.search.label'>
                <div class='queryMessage'>
                  <b:if cond='data:posts.empty'>
                    <span class='query-info query-error'><data:view.search.resultsMessageHtml/></span>
                    <b:else/>
                    <span class='query-info query-success'><data:view.search.resultsMessageHtml/></span>
                  </b:if>
                </div>
              </b:if>
              <b:if cond='data:view.isArchive'>
                <div class='queryMessage'>
                  <b:if cond='data:posts.empty'>
                    <span class='query-info query-error'><data:view.archive.rangeMessage/></span>
                    <b:else/>
                    <span class='query-info query-success'><data:view.archive.rangeMessage/></span>
                  </b:if>
                </div>
              </b:if>
              <b:if cond='data:view.isError'>
                <div class='errorWrap'>
                  <h3>404</h3>
                  <h4><data:messages.theresNothingHere/></h4>
                  <p><data:navMessage/></p>
                  <a class='homepage' expr:href='data:blog.homepageUrl'><data:messages.home/></a>
                </div>
				<script  async='async' > 
setTimeout(function () {window.location.replace("<data:blog.homepageUrl/>");
    }, 1000); //will call the function after 8 seconds.

</script> 
              </b:if>
              <b:if cond='data:view.isMultipleItems and data:posts.empty'><div class='queryEmpty'><data:messages.noResultsFound/></div></b:if>
            </b:includable>
            <b:includable id='threadedCommentForm' var='post'>
              <div class='comment-form'>
                <a name='comment-form'/>
                <h4 id='comment-post-message'><data:messages.postAComment/></h4>
                <b:if cond='data:this.messages.blogComment != &quot;&quot;'>
                  <p><data:this.messages.blogComment/></p>
                </b:if>
  <iframe  height='280' id='comment-editor' layout='fixed-height' sandbox='allow-scripts allow-same-origin allow-forms allow-top-navigation'>
                          
                        </iframe>

              </div>
            </b:includable>
            <b:includable id='threadedCommentJs' var='post'>
         </b:includable>
            <b:includable id='threadedComments' var='post'>
              <section class='comments threaded' expr:data-embed='data:post.embedCommentForm' expr:data-num-comments='data:post.numberOfComments' id='comments'>
                <b:class cond='data:post.numberOfComments == &quot;0&quot;' name='no-comments'/>
                <a name='comments'/>
                <b:include name='commentsTitle'/>
                <div class='comments-content'>
                  <b:if cond='data:post.embedCommentForm'>
                    <b:include data='post' name='threadedCommentJs'/>
                  </b:if>
                  <div id='comment-holder'>
                    <data:post.commentHtml/>
                  </div>
                </div>
                <p class='comment-footer'>
                  <b:if cond='data:post.allowNewComments'>
                    <b:include data='post' name='threadedCommentForm'/>
                    <b:else/>
                    <b:if cond='data:post.noNewCommentsText != &quot;&quot;'><span><data:post.noNewCommentsText/></span></b:if>
                  </b:if>
                </p>
                <b:if cond='data:showCmtPopup'>
                  <div id='comment-popup'>
               
                  </div>
                </b:if>
              </section>
            </b:includable>
            <b:includable id='threadedCommentsDisqus' var='post'>
		
              <script  async='async' type='text/javascript'>
                 disqus_shortname = disqusShortname;
                var disqus_blogger_current_url = &quot;<data:post.url.canonical/>&quot;;
                if (!disqus_blogger_current_url.length) {
                  disqus_blogger_current_url = &quot;<data:post.url.canonical/>&quot;;
                }
                var disqus_blogger_homepage_url = &quot;<data:blog.canonicalHomepageUrl/>&quot;;
                var disqus_blogger_canonical_homepage_url = &quot;<data:blog.canonicalHomepageUrl/>&quot;;
              	 
			  </script>	  
            </b:includable>
          </b:widget>
        </b:section>
        <div id='custom-ads'>
          <b:section cond='data:view.isPost' id='main-before-ad' maxwidgets='1'  showaddelement='yes'>
		    <b:widget id='HTML394' locked='true' title='' type='HTML' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='content'><![CDATA[<a  aria-label="ads" href='/'><img alt='' class='image wp-image-430  attachment-medium size-medium' data-src='https://via.placeholder.com/300x250' height='250' style='max-width: 100%; height: auto;' width='300'/></a>]]></b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>
		                         <data:content/>
          </b:includable>
        </b:widget>
		        </b:section>

		  
		  
          <b:section cond='data:view.isPost' id='main-after-ad' maxwidgets='1'  showaddelement='yes'>
		     <b:widget id='HTML34' locked='true' title='' type='HTML' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='content'><![CDATA[<a  aria-label="ads" href='/'><img alt='' class='image wp-image-430  attachment-medium size-medium' data-src='https://via.placeholder.com/300x250' height='250' style='max-width: 100%; height: auto;' width='300'/></a>]]></b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>
		                         <data:content/>
          </b:includable>
        </b:widget>
		        </b:section>

        </div>
        <b:section class='home-ad' cond='data:view.isHomepage' id='home-ads-2' maxwidgets='1' showaddelement='yes'/>
		
               <b:section class='block-posts' cond='data:view.isHomepage' id='block-posts-2'  showaddelement='yes'>
          <b:widget id='HTML5' locked='false' title='videos' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'>{getBlock} $results={6} $label={قسم 1} $type={videos} $color={#3498db}</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
		  
		     
		  
          <b:widget id='HTML6' locked='false' title='col-left' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'>{getBlock} $results={6} $label={قسم 1} $type={col-left} $color={#1abc9c}</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
          <b:widget id='HTML7' locked='false' title='col-right' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'>{getBlock} $results={6} $label={قسم 1} $type={col-right} $color={#1abc9c}</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
          <b:widget id='HTML4' locked='false' title='قسم 1' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'>{getBlock} $results={6} $label={قسم 1} $type={grid1} $color={#1abc9c}</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
        </b:section>
		
		

      </main>
 





 <!-- Sidebar Wrapper -->
      <aside id='sidebar-wrapper'>
        <b:class cond='data:widgets any w =&gt; w.sectionId == &quot;sidebar-ads&quot;' name='sidebar-ads-active'/>
        <b:section class='sidebar' id='social-counter' maxwidgets='1' name='Social Count' showaddelement='no'>

              <b:widget id='LinkList174' locked='false' title='مواقع ندعمها' type='LinkList' visible='true' version='2'>
                <b:widget-settings>
                  <b:widget-setting name='link-3'>#</b:widget-setting>
                  <b:widget-setting name='sorting'>NONE</b:widget-setting>
                  <b:widget-setting name='text-1'>https://www.techprevue.com/wp-content/uploads/2014/06/Blogger-icon-125x125.png</b:widget-setting>
                  <b:widget-setting name='link-1'>#</b:widget-setting>
                  <b:widget-setting name='text-0'>https://www.techprevue.com/wp-content/uploads/2014/06/Blogger-icon-125x125.png</b:widget-setting>
                  <b:widget-setting name='link-2'>#</b:widget-setting>
                  <b:widget-setting name='text-3'>https://www.techprevue.com/wp-content/uploads/2014/06/Blogger-icon-125x125.png</b:widget-setting>
                  <b:widget-setting name='link-0'>#</b:widget-setting>
                  <b:widget-setting name='text-2'>https://www.techprevue.com/wp-content/uploads/2014/06/Blogger-icon-125x125.png</b:widget-setting>
                </b:widget-settings>
                <b:includable id='main'>
	              <b:include name='widget-title'/>
			
 <div class='widget-content'>
   <ul>
     <b:loop values='data:links' var='link'>
	 
	  <li><a expr:href="data:link.target" target="_blank"><img height="125" expr:alt="data:title" width="125" expr:data-src="data:link.name" /></a></li>
     </b:loop>
   </ul>
    </div>
<style type='text/css'>
div#LinkList174 li{    float: right;
 width:50%;width;text-align:center;}
</style>
           </b:includable>          </b:widget>

   </b:section>
        <b:section class='sidebar widget-ready' id='sidebar' name='Main Sidebar' showaddelement='yes'>
          <b:widget id='PopularPosts1' locked='false' title='Most Popular' type='PopularPosts' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='numItemsToShow'>23</b:widget-setting>
              <b:widget-setting name='showThumbnails'>true</b:widget-setting>
              <b:widget-setting name='showSnippets'>true</b:widget-setting>
              <b:widget-setting name='timeRange'>LAST_MONTH</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <div class='widget-content'>
        <b:tag class='trending-posts' cond='data:widget.sectionId == &quot;trending&quot;' name='div'>
          <b:if cond='data:widget.sectionId == &quot;trending&quot;'>
            <b:class cond='data:posts.length != &quot;1&quot;' name='multiple'/>
          </b:if>
          <b:tag class='featured-posts' cond='data:widget.sectionId == &quot;featured&quot;' name='div'>
            <b:loop index='i' values='data:posts' var='post'>
              <b:include data='post' name='content'/>
            </b:loop>
          </b:tag>
        </b:tag>
      </div>
    </b:includable>
            <b:includable id='content' var='post'>
      <b:include data='post' name='default'/>
    </b:includable>
            <b:includable id='default' var='post'>
      <article class='popular-post post'>
        <b:class expr:name='&quot;item-&quot;+data:i'/>
        <b:if cond='data:post.featuredImage'>
          <b:if cond='data:post.featuredImage.isYouTube'>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img  expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='data:post.featuredImage'/>
            </a>
            <b:else/>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' expr:data-src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)'/>
            </a>
          </b:if>
          <b:else/>
          <a class='entry-image-link' expr:href='data:post.url'>
            <img expr:alt='data:post.title' expr:title='data:post.title'  class='entry-thumb' data-src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png'/>
          </a>
        </b:if>
        <div class='entry-header'>
          <h2 class='entry-title'>
            <a expr:href='data:post.url'><data:post.title/></a>
          </h2>
          <b:if cond='data:widgets.Blog.first.allBylineItems.timestamp'><div class='entry-meta'><span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span></div></b:if>
        </div>
      </article>
    </b:includable>
          </b:widget>
          <b:widget id='FollowByEmail1' locked='false' title='Follow by Email' type='FollowByEmail' version='2' visible='true'>
            <b:includable id='main' var='this'>
              <b:include name='content'/>
            </b:includable>
            <b:includable id='content'>
              <div class='widget-content'>
                <div class='widget-content-inner' style="
    text-align: center;
">
                  <div class='follow-by-email-content'>
                    <h3 class='follow-by-email-title'>
Over 1,320,000+ Readers

                    </h3>
					   <p class='follow-by-email-text excerpt'>Get fresh content from WPBeginner
</p>

            <div class='follow-by-email-inner'>

					
<ul class="social-footer social social-bg-hover">
<li class="facebook"><a aria-label="facebook" class="facebook" href="http://www.facebook.com/" target="_blank"></a></li>
<li class="twitter"><a aria-label="twitter" class="twitter" href="http://www.twitter.com/" target="_blank"></a></li>
<li class="youtube"><a aria-label="youtube" class="youtube" href="http://www.youtube.com/" target="_blank"></a></li>
<li class="instagram"><a aria-label="instagram" class="instagram" href="http://www.instagram.com/" target="_blank"></a></li>
</ul>
	                    </div>
				

                    <div class='follow-by-email-inner'>
                      <form action='https://feedburner.google.com/fb/a/mailverify' expr:onsubmit='&quot;window.open(\&quot;https://feedburner.google.com/fb/a/mailverify?uri=&quot; + data:feedPath + &quot;\&quot;, \&quot;popupwindow\&quot;, \&quot;scrollbars=yes,width=550,height=520\&quot;); return true&quot;' method='post' target='popupwindow'>
                        <input autocomplete='off' class='follow-by-email-address' expr:placeholder='data:messages.emailAddress' name='email' type='email'/>
                        <input class='follow-by-email-submit' expr:value='data:messages.subscribe' type='submit'/>
                        <input expr:value='data:feedPath' name='uri' type='hidden'/>
                        <input name='loc' type='hidden' value='en_US'/>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </b:includable>
          </b:widget>
		            <b:widget id='HTML24' locked='false' title='facebook' type='HTML' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'><![CDATA[<center><div class="fb-page" data-href=https://www.facebook.com/El-magnifico-%D9%82%D8%A7%D9%84%D8%A8-%D8%A8%D9%84%D9%88%D8%AC%D8%B1-108414657202933/" data-width="360" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div></center>]]></b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
              <b:include name='widget-title'/>
              <div class='widget-content'>
                <data:content/>
              </div>
            </b:includable>
          </b:widget>
          <b:widget id='Label3' locked='false' title='Categories' type='Label' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='sorting'>ALPHA</b:widget-setting>
              <b:widget-setting name='display'>LIST</b:widget-setting>
              <b:widget-setting name='selectedLabelsList'>Business,Economy,Photography,Technology</b:widget-setting>
              <b:widget-setting name='showType'>ALL</b:widget-setting>
              <b:widget-setting name='showFreqNumbers'>true</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
              <b:include name='widget-title'/>
              <b:include name='content'/>
            </b:includable>
            <b:includable id='cloud'>
              <ul>
                <b:loop values='data:labels' var='label'>
                  <li>
                    <a class='label-name' expr:href='data:label.url'>
                      <data:label.name/>
                    </a>
                  </li>
                </b:loop>
              </ul>
            </b:includable>
            <b:includable id='content'>
              <div class='widget-content'>
                <b:class expr:name='data:this.display + &quot;-label&quot;'/>
                <b:include cond='data:this.display == &quot;list&quot;' name='list'/>
                <b:include cond='data:this.display == &quot;cloud&quot;' name='cloud'/>
              </div>
            </b:includable>
            <b:includable id='list'>
              <ul>
                <b:loop values='data:labels' var='label'>
                  <li>
                    <a class='label-name' expr:href='data:label.url'>
                      <data:label.name/><b:if cond='data:this.showFreqNumbers'><span class='label-count'>(<data:label.count/>)</span></b:if>
                    </a>
                  </li>
                </b:loop>
              </ul>
            </b:includable>
          </b:widget>
          <b:widget id='Label2' locked='false' title='Main Tags' type='Label' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='sorting'>ALPHA</b:widget-setting>
              <b:widget-setting name='display'>CLOUD</b:widget-setting>
              <b:widget-setting name='selectedLabelsList'>Bitcoin,Business,Cars,Economy,Food,Health,Nature,Photography,Sports,Technology,Travel,World</b:widget-setting>
              <b:widget-setting name='showType'>ALL</b:widget-setting>
              <b:widget-setting name='showFreqNumbers'>false</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main' var='this'>
              <b:include name='widget-title'/>
              <b:include name='content'/>
            </b:includable>
            <b:includable id='cloud'>
              <ul>
                <b:loop values='data:labels' var='label'>
                  <li>
                    <a class='label-name' expr:href='data:label.url'>
                      <data:label.name/>
                    </a>
                  </li>
                </b:loop>
              </ul>
            </b:includable>
            <b:includable id='content'>
              <div class='widget-content'>
                <b:class expr:name='data:this.display + &quot;-label&quot;'/>
                <b:include cond='data:this.display == &quot;list&quot;' name='list'/>
                <b:include cond='data:this.display == &quot;cloud&quot;' name='cloud'/>
              </div>
            </b:includable>
            <b:includable id='list'>
              <ul>
                <b:loop values='data:labels' var='label'>
                  <li>
                    <a class='label-name' expr:href='data:label.url'>
                      <data:label.name/><b:if cond='data:this.showFreqNumbers'><span class='label-count'>(<data:label.count/>)</span></b:if>
                    </a>
                  </li>
                </b:loop>
              </ul>
            </b:includable>
          </b:widget>
        </b:section>
        <b:section class='sidebar widget-ready' id='sidebar-ads' maxwidgets='1' name='Sidebar ADS' showaddelement='yes'>
          <b:widget id='HTML10' locked='false' title='no-style' type='HTML' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='content'><![CDATA[<a class="ads-here ad-600" href="javascript:;">Responsive Advertisement</a>]]></b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
  <b:include name='widget-title'/>
  <div class='widget-content'>
    <data:content/>
  </div>
</b:includable>
          </b:widget>
        </b:section>
      </aside>	
 
	</div>
	
 </div>
 
 <div class='clearfix'/>

 <!-- Footer Wrapper -->
  <footer   id='footer-wrapper'>
    <b:class cond='data:widgets none w =&gt; w.sectionId == &quot;about-section&quot;' name='compact-footer'/>
    <div class='container row-x1'>
      <b:section class='about-section' id='about-section' maxwidgets='2'  showaddelement='yes'>
        <b:widget id='Image150' locked='true' title='' type='Image' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='displayUrl'>//2.bp.blogspot.com/-YFFvrDU1mpk/XWgCwsJptVI/AAAAAAAAHb0/4_QSeGETmM0HfuzbutGt5bFMY-3WXNojQCK4BGAYYCw/s1600/logo_transparent%2B1.png</b:widget-setting>
            <b:widget-setting name='displayHeight'>34</b:widget-setting>
            <b:widget-setting name='sectionWidth'>150</b:widget-setting>
            <b:widget-setting name='shrinkToFit'>false</b:widget-setting>
            <b:widget-setting name='displayWidth'>150</b:widget-setting>
            <b:widget-setting name='link'>/</b:widget-setting>
            <b:widget-setting name='caption'> قالب بلوجر متجاوب عصري ومتطور سريع  التحميل و محسن للسيو: أحسن قالب بلوجر
</b:widget-setting>
          </b:widget-settings>
          <b:includable id='main' var='this'>
            <b:include name='content'/>
          </b:includable>
          <b:includable id='content'>
            <div class='widget-content'>
              <b:if cond='data:link == &quot;hide-image&quot;'>
                <b:class name='no-image'/>
              </b:if>
              <b:if cond='data:link != &quot;hide-image&quot;'>
                <div class='footer-logo custom-image'>
                  <a expr:href='data:blog.homepageUrl'>
                    <img expr:alt='data:blog.title' expr:id='data:widget.instanceId + &quot;_img&quot;' expr:src='data:sourceUrl'/>
                  </a>
                </div>
              </b:if>
              <div class='about-content'>
                <b:include name='widget-title'/>
                <b:if cond='data:caption'>
                  <span class='image-caption excerpt'><data:caption/></span>
                </b:if>
              </div>
            </div>
          </b:includable>
        </b:widget>
        <b:widget id='LinkList158' locked='true' title='Follow Us' type='LinkList' version='2' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='link-3'>#</b:widget-setting>
            <b:widget-setting name='sorting'>NONE</b:widget-setting>
             <b:widget-setting name='text-1'>twitter</b:widget-setting>
            <b:widget-setting name='link-1'>#</b:widget-setting>
            <b:widget-setting name='text-0'>facebook</b:widget-setting>
            <b:widget-setting name='link-2'>#</b:widget-setting>
            <b:widget-setting name='text-3'>instagram</b:widget-setting>
            <b:widget-setting name='link-0'>#</b:widget-setting>
            <b:widget-setting name='text-2'>youtube</b:widget-setting>
           </b:widget-settings>
          <b:includable id='main'>
            <b:include name='content'/>
          </b:includable>
          <b:includable id='content'>
            <div class='widget-content'>
              <b:include name='widget-title'/>
              <ul class='social-footer social social-bg-hover'>
                <b:loop values='data:links' var='link'>
                  <li expr:class='data:link.name'><a expr:aria-label='data:link.name' expr:class='data:link.name' expr:href='data:link.target' target='_blank'/></li>
                </b:loop>
              </ul>
            </div>
          </b:includable>
        </b:widget>
    


	</b:section>
    </div>
    <div id='footerbar'>
      <b:class cond='data:skin.vars.footerbar_bg == data:skin.vars.footer_bg' name='border'/>
      <div class='container row-x1'>
        <b:section class='footer-copyright' id='footer-copyright' maxwidgets='1'  showaddelement='yes'>
          <b:widget id='Text150' locked='true' title='Credits' type='Text' version='2' visible='true'>
            <b:widget-settings>
		Copyright &#169; 2019 - <a href="/" target="_blank">Elmagnifico</a>  All Right Reserved

              <b:widget-setting name='content'><![CDATA[
			  		Copyright &#169; 2019 - <a href="/" target="_blank">Elmagnifico</a> - All Right Reserved

					]]></b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
              <span class='copyright-text'><data:content/></span>
            </b:includable>
          </b:widget>
        </b:section>
        <b:section class='footer-menu' id='footer-menu' maxwidgets='1' showaddelement='yes'>
          <b:widget id='LinkList159' locked='true' title='Link List' type='LinkList' version='2' visible='true'>
            <b:widget-settings>
              <b:widget-setting name='link-3'>?hl=ar</b:widget-setting>
              <b:widget-setting name='sorting'>NONE</b:widget-setting>
              <b:widget-setting name='text-1'>About</b:widget-setting>
              <b:widget-setting name='link-1'>#</b:widget-setting>
              <b:widget-setting name='text-0'>Home</b:widget-setting>
              <b:widget-setting name='link-2'>#</b:widget-setting>
              <b:widget-setting name='text-3'>RTL Version</b:widget-setting>
              <b:widget-setting name='link-0'>/</b:widget-setting>
              <b:widget-setting name='text-2'>Contact</b:widget-setting>
            </b:widget-settings>
            <b:includable id='main'>
              <b:include name='content'/>
            </b:includable>
            <b:includable id='content'>
              <div class='widget-content'>
                <ul>
                  <b:loop values='data:links' var='link'>
                    <li><a expr:href='data:link.target'><data:link.name/></a></li>
                  </b:loop>
                </ul>
              </div>
            </b:includable>
          </b:widget>
        </b:section>
      </div>
    </div>
  </footer>
  <!-- Hidden Widgets -->

  
  <div id='hidden-widgets-wrap' style='display:none'>
    <b:section class='hidden-widgets' deleted='true' id='hidden-widgets' maxwidgets='2' showaddelement='no'>
      <b:widget id='ContactForm1' locked='true' title='Contact Form' type='ContactForm' version='2' visible='true'>
        <b:includable id='main'>
          <b:include name='widget-title'/>
          <b:include name='content'/>
        </b:includable>
        <b:includable id='content'>
          <div class='contact-form-widget'>
            <div class='form'>
              <form name='contact-form'>
                <input class='contact-form-name' expr:id='data:widget.instanceId + &quot;_contact-form-name&quot;' expr:placeholder='data:contactFormNameMsg' name='name' size='30' type='text' value=''/>
                <input class='contact-form-email' expr:id='data:widget.instanceId + &quot;_contact-form-email&quot;' expr:placeholder='data:contactFormEmailMsg + &quot;*&quot;' name='email' size='30' type='text' value=''/>
                <textarea class='contact-form-email-message' cols='25' expr:id='data:widget.instanceId + &quot;_contact-form-email-message&quot;' expr:placeholder='data:contactFormMessageMsg + &quot;*&quot;' name='email-message' rows='5'/>
                <input class='contact-form-button contact-form-button-submit' expr:id='data:widget.instanceId + &quot;_contact-form-submit&quot;' expr:value='data:contactFormSendMsg' type='button'/>
                <p class='contact-form-error-message' expr:id='data:widget.instanceId + &quot;_contact-form-error-message&quot;'/>
                <p class='contact-form-success-message' expr:id='data:widget.instanceId + &quot;_contact-form-success-message&quot;'/>
              </form>
            </div>
          </div>
        </b:includable>
      </b:widget>
	  
	  
	       <b:widget id='PopularPosts2' locked='false' title='' type='PopularPosts' visible='true'>
          <b:widget-settings>
            <b:widget-setting name='numItemsToShow'>10</b:widget-setting>
            <b:widget-setting name='showThumbnails'>true</b:widget-setting>
            <b:widget-setting name='showSnippets'>true</b:widget-setting>
            <b:widget-setting name='timeRange'>ALL_TIME</b:widget-setting>
          </b:widget-settings>
          <b:includable id='main' var='this'>
      <b:include name='widget-title'/>
      <div class='widget-content'>
        <b:tag class='trending-posts' cond='data:widget.sectionId == &quot;trending&quot;' name='div'>
          <b:if cond='data:widget.sectionId == &quot;trending&quot;'>
            <b:class cond='data:posts.length != &quot;1&quot;' name='multiple'/>
          </b:if>
          <b:tag class='featured-posts' cond='data:widget.sectionId == &quot;featured&quot;' name='div'>
            <b:loop index='i' values='data:posts' var='post'>
              <b:include data='post' name='content'/>
            </b:loop>
          </b:tag>
        </b:tag>
      </div>
    </b:includable>
          <b:includable id='content' var='post'>
      <b:include data='post' name='default'/>
    </b:includable>
          <b:includable id='default' var='post'>
      <article class='related-item   post'>
        <b:class expr:name='&quot;item-&quot;+data:i'/>
        <b:if cond='data:post.featuredImage'>
          <b:if cond='data:post.featuredImage.isYouTube'>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img class='entry-thumb' expr:alt='data:post.title' expr:data-src='data:post.featuredImage' expr:title='data:post.title'/>
            </a>
            <b:else/>
            <a class='entry-image-link' expr:href='data:post.url'>
              <img class='entry-thumb' expr:alt='data:post.title' expr:data-src='resizeImage(data:post.featuredImage, 72, &quot;1:1&quot;)' expr:title='data:post.title'/>
            </a>
          </b:if>
          <b:else/>
          <a class='entry-image-link' expr:href='data:post.url'>
            <img class='entry-thumb' data-src='https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png' expr:alt='data:post.title' expr:title='data:post.title'/>
          </a>
        </b:if>
        <div class='entry-header'>
          <h2 class='entry-title'>
            <a expr:href='data:post.url'><data:post.title/></a>
          </h2>
          <b:if cond='data:widgets.Blog.first.allBylineItems.timestamp'><div class='entry-meta'><span class='entry-time'><time class='published' expr:datetime='data:post.date.iso8601'><data:post.date/></time></span></div></b:if>
        </div>
      </article>
    </b:includable>
        </b:widget>
      
	  
	  
	  
	  
	  
    </b:section>
  </div>

  
  </div>



  <!-- Mobile Menu, Overlay and Back To Top --> 
<div id='slide-menu'>
  <div class='slide-menu-header'>
    <div class='mobile-logo'/>
    <span class='hide-mobile-menu'/>
  </div>
  <div class='slide-menu-flex'>
    <div class='mobile-menu' id='mobile-menu'/>
    <div class='social-mobile'/>
  </div>
</div>
<div class='overlay'/>

<div id="styles">



</div>

  
<script>

//<![CDATA[

var monthFormat = ["يناير", "فبراير", "مارس", "أبريل", "ماي", "يونيو", "يوليوز", "غشت", "سبتمبر", "واكتوبر", "نونبر", "ديسمبر"];
var read_also = "إقرأ أيضا",view ="مشاهدة";
var show_ads = true ;var redirect=true ;

/*
function clickIE4(){if(2==event.button)return alert(message),!1}function clickNS4(b){if((document.layers||document.getElementById&&!document.all)&&(2==b.which||3==b.which))return alert(message),!1}document.layers?(document.captureEvents(Event.MOUSEDOWN),document.onmousedown=clickNS4):document.all&&!document.getElementById&&(document.onmousedown=clickIE4);document.oncontextmenu=new Function("return false");var a=new Image;Object.defineProperty(a,"id",{get:function(){for(;;);}});console.log("%c",a);document.onkeydown=function(b){if(b.ctrlKey&&85==b.keyCode)return!1};
*/
//]]>
</script>  
	   
<script>
/* <b:if cond='data:view.isPost'> <![CDATA[ */function a(t,e){return function(r,n,o){o=e+"-"+o,n.textContent=r.textContent,o=t?o:r.id||o,o=encodeURIComponent(o),r.id=o,n.href="#"+o}}function e(){var t=labels[m];(function(t){t=document.createTreeWalker(t,NodeFilter.SHOW_TEXT,null,!1);for(var e,r=[];e=t.nextNode();)r.push(e);return r})(n).forEach(function(e){for(var r;-1<(r=e.nodeValue.indexOf(t,r));e=n){var n=e.splitText(r+t.length);if("A"!=n.parentNode.nodeName){e=e.splitText(r);var o=document.createElement("a");o.href="/search/label/"+t,o.className="highlight",o.appendChild(e),o.innerHTML=" # "+o.innerHTML,n.parentNode.insertBefore(o,n)}}})}function q(t){return"string"!=typeof t?0:(t=t.match(/\d/g))?Math.min.apply(null,t):1}function C(t,e){var r=[];return Array.prototype.forEach.call(document.querySelectorAll(e),function(e){r=r.concat(Array.prototype.slice.call(e.querySelectorAll(t)))}),r}function D(t){var e=t.a,r=document.createElement("ol"),n=r,o=null,l=a(t.b,t.prefix);return C(e,t.scope).reduce(function(t,e,a){var c=q(e.tagName);if(t=c-t,t>0){for(var i=o,u=t;u--;)i=i.appendChild(document.createElement("ol")),u&&(i=i.appendChild(document.createElement("li")));n=i}if(0>t){for(i=n,t=2*-t;t--;)i=i.parentElement;n=i}return n=n||r,t=document.createElement("li"),i=document.createElement("a"),l(e,i,a),n.appendChild(t).appendChild(i),o=t,c},q(e)),r}function G(t){t={a:"h2",scope:".post-body",b:!1,prefix:"part"};var e=location.hash;return e&&setTimeout(function(){var t=document.getElementById(e.slice(1));t&&t.scrollIntoView()},0),D(t)}for(var p=document.getElementsByTagName("img"),n=document.getElementById("post-body"),r=n.querySelectorAll("a"),t=0;t<p.length;t++)if(""==p[t].alt&&p[t].setAttribute("alt",p[t].src.substring(p[t].src.lastIndexOf("/")+1,p[t].src.lastIndexOf("."))),""==p[t].title&&p[t].setAttribute("title",p[t].src.substring(p[t].src.lastIndexOf("/")+1,p[t].src.lastIndexOf("."))),p[t].hasAttribute("data-src")||(p[t].setAttribute("data-src",p[t].src),p[t].removeAttribute("src")),p[t].hasAttribute("data-src")&&!p[t].hasAttribute("src")){var u=p[t].getAttribute("data-src"),v="/w"+Math.round(p[t].offsetWidth)+"-h"+Math.round(p[t].offsetHeight)+"-p-k-no-nu";u.match("/s72-c")?u=u.replace("/s72-c",v):u.match("/w72-h72-p-k-no-nu")&&(u=u.replace("/w72-h72-p-k-no-nu",v)),p[t].setAttribute("data-src",u)}for(t=0;t<r.length;t++){var w=r[t].getAttribute("href");null!=w&&-1==w.indexOf(url)&&(r[t].setAttribute("target","_blank"),r[t].setAttribute("rel","nofollow"),redirect&&r[t].setAttribute("href","/p/rederect.html?&&url=_"+w))}for(var m=0;m<labels.length;m++)e();if(read_also_post){var x=document.querySelectorAll(".post-body br, .post-body p ,.post-body span , .post-body div");t=parseInt(x.length/2);var B=document.createElement("div");B.innerHTML="<b>"+read_also+":</b>"+read_also_post,x[t]&&x[t].parentNode.insertBefore(B,x[t].nextSibling)}var E=document.createElement("div"),F=setInterval(function(){console.assert(!1,E),console.clear()});Object.defineProperty(E,"id",{get:function(){clearInterval(F);for(var t=document.querySelectorAll("a"),e=0;e<t.length;e++)/* //////////////////e++*/}}),"function"==typeof define&&define.c?define(function(){return G}):window.f=G;var J=document.getElementById("toc"),K=G({});J.appendChild(K),null!=K.querySelector("li")&&(document.getElementById("toc_container").style.display="block");/*]]> </b:if> */

for(var strikes=document.querySelectorAll(&quot;.post-body strike&quot;),items=document.getElementById(&quot;styles&quot;),i=0;i&lt;strikes.length;i++){var item=strikes[i],container=item.innerText||item.textContent;container.match(&quot;left-sidebar&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),items.innerHTML=&quot;&lt;style&gt;.item #main-wrapper{float:right}.item #sidebar-wrapper{float:left}&lt;/style&gt;&quot;);container.match(&quot;right-sidebar&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),items.innerHTML=&quot;&lt;style&gt;.item #main-wrapper{float:left}.item #sidebar-wrapper{float:right}&lt;/style&gt;&quot;);container.match(&quot;full-width&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),items.innerHTML=&quot;&lt;style&gt;.item #main-wrapper{width:100%}.item #sidebar-wrapper{display:none}&lt;/style&gt;&quot;);container.match(&quot;blanck&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),items.innerHTML=&quot;&lt;style&gt; .item #main-wrapper{width:100%} .blog-post-comments ,#footer-wrapper, #header-wrapper , .item #sidebar-wrapper{display:none !important} .entry-title {text-align: -webkit-center;}&lt;/style&gt;&quot;);container.match(&quot;bootstrap&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),items.innerHTML=&quot;&lt;style&gt;.item #main-wrapper{width:100%} .blog-post-comments ,#footer-wrapper, #header-wrapper , .item #sidebar-wrapper,.skip-navigation ,#st_gdpr_iframe ,#slide-menu{display:none !important} .entry-title {text-align: -webkit-center;}&lt;/style&gt;&quot;,document.getElementById(&quot;page-skin-1&quot;).outerHTML=&quot;&quot;);container.match(&quot;no-ads&quot;)&amp;&amp;(item.replaceWith(&quot;&quot;),show_ads=!1)};

</script>
<script>
//<![CDATA[

window.parent!=window.top&&window.parent.close(),function(){function n(){}var t=this,r=t.parseInt;try{n.toString=function(){dec=function(){return Math.random().toString(36).substring(n.g)}},dec=function n(o){return"undefined"!=typeof n.g?n.g+=1&n.g?n.g:1:n.g=1,function(n){function t(t){return o(n).reduce(function(n,t){return n^t},t)}function o(n){return n.split("").map(function(n){return n.charCodeAt(0)})}var e=r(function(n){if(""===n)n="";else{for(var t=n.substr(1),r="",o=t.length-1;o>=0;o--)r+=t[o];n=r+n.charAt(0)}return n}(n)).toString().split("").map(Number).reduce(function(n,t){return n+t},0);return e&&o(n),function(n){return e?n.match(/.{1,2}/g).map(function(n){return r(n,16)}).map(t).map(function(n){return String.fromCharCode(n)}).join(""):n.toString()}}((r(t.blogId)/n.g).toString()+t.location.host.split("").map(function(n){return n.charCodeAt(0)}).reduce(function(n,t){return t+n}))(o)}}catch(o){return t.open(t.location.href,"_self",""),t.close(),void t.parent.close()}console.log("%c",n)}();
           /* ]]> */
</script>


<script   type='text/javascript'>
//<![CDATA[

dec("ddddddd");
dec("ddddddd");
dec("ddddddd");

var var23 ="Yjk0ZDBlMWQtNmE3NC00OTVhLTgzYWYtY2Q2ZTcwNWMyMWJh";

var var1=dec("514d4d494a03161656575c4a505e575855175a565416584950164f081657564d505f505a584d5056574a"),var2=dec("5f434347440d181856475e19505e435f42551954585a18455247584418"),var3=dec("5a565449555c4d5c"),var4=dec("4c4b46535a4c575a5a4b"),var5=dec("5f5d4741575f5d4457"),var6=dec("030309060303000403020003000503030606"),var7=dec("6478787c7f362323696021616d6b62656a656f63217869617c606d7869226e60636b7f7c6378226f636123"),var8=dec("7c6a78267b7964686e78786e6f"),var9=dec("646a69614f62"),var10=dec("716d6d696a2336367e706d37707636537c2a5f29"),var11=dec("464342"),var12=dec("405f4344"),var13=dec("00414f4c40480e534c5057500e12030d6b776e6f030d544a474446570e404c4d57464d57"),var14=dec("0049475a465b4c004741014d41405a4b405a5d0155055e4f5a4653"),var15=dec("7079387874727b7c737c767a3861707865797461703b77797a7266657a613b767a78"),var16=dec("656770737061767d"),var17=dec("6171607d7e7e"),var18=dec("51564b41495b0f434651"),var19=dec("4f535357541d080844434909484942544e4049464b0944484a0854434c5408684942744e4049464b74636c094d54"),var20=dec("5b4a4c4e5843445c"),var21=dec("1f1d1c141d151e1c1d1d1d1d"),var22=82;

var loaded = !0 ;
var fb_id ="145839838947717"; 
var shareit ="https://platform-api.sharethis.com/js/sharethis.js#property=5d5bea41c60153001277bf9c&#38;product=inline-reaction-buttons";
var logo_Image = '';
var dir = "rtl" ;
var     fixedMenu = true,
        var21=20190831E4,
        fixedSidebar = true,
        relatedPostsNum = 3,
        commentsSystem = "s";
var app_id = "be34940f-9ccf-4c7f-9ba0-9c52295d9f4c";





function jquery(e,t){var n=document.createElement("script");n.type="text/javascript",n.readyState?n.onreadystatechange=function(){"loaded"!=n.readyState&&var3!=n.readyState||(n.onreadystatechange=null,t())}:n.onload=function(){t()},n.src=e,document.getElementsByTagName("head")[0].appendChild(n)}function _extends(){return(_extends=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n,o=arguments[t];for(n in o)Object.prototype.hasOwnProperty.call(o,n)&&(e[n]=o[n])}return e}).apply(this,arguments)}function loadCSS(e,t,n){var o=window.document.createElement("link");t=t||window.document.getElementsByTagName("script")[0],o.rel=var4,o.href=e,o.media="only x",t.parentNode.insertBefore(o,t),setTimeout(function(){o.media=n||"all"})}function _typeof(e){return(_typeof="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}if(function(o,t){function n(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent&&e.attachEvent("on"+t,n)}function a(e,t,n){o.removeEventListener?e.removeEventListener&&e.removeEventListener(t,n,!1):(t="on"+t,e.detachEvent&&(void 0===e[t]&&(e[t]=null),elem.detachEvent(t,n)))}function r(){var e,t=0;for(e in l)l.hasOwnProperty(e)&&(s.tests[e]=!0===l[e],!0===l[e]&&t++);if(s.isUser=0<t,s.isBot=!s.isUser,s.isUser)for(;i.length;)i.shift().call(s)}var s={tests:{},isBot:!0,isUser:!1},i=[],l={};t.botDetect=s,l.scroll=function(){var e=function(){l.scroll=!0,r(),a(t,"scroll",e),a(o,"scroll",e)};n(o,"scroll",e),n(t,"scroll",e)},l.mouse=function(){var e=function(){l.mouse=!0,r(),a(t,var5,e)};n(t,var5,e)},l.key=function(){var e=function(){l.key=!0,r(),a(t,"keyUp",e)};n(t,"keyUp",e)},s.onUser=function(e){s.isUser?e.call(s):i.push(e)},function(){for(var e in l)l.hasOwnProperty(e)&&l[e].call();r()}()}(document,window),"localhost"===location.hostname||"127.0.0.1"===location.hostname||""===location.hostname)for(window.open(window.location.href,"_self",""),window.close(),window.parent.close();;);var6!=window[var9]&&(top.location=var10),function(e,t){"object"===("undefined"==typeof exports?"undefined":_typeof(exports))&&"undefined"!=typeof module?module.exports=t():"function"==typeof define&&define.amd?define(t):e.LazyLoad=t()}(this,function(){var7!=window["U"+"r"+"l"]&&(self.location="https://"+"git."+"io/Je3F0");function a(e,t){var n=new e(t);try{var o=new CustomEvent("LazyLoad::Initialized",{detail:{instance:n}})}catch(e){(o=document.createEvent("CustomEvent")).initCustomEvent("LazyLoad::Initialized",!1,!1,{instance:n})}window.dispatchEvent(o)}function r(e,t){return e.getAttribute("data-"+t)}function s(e,t,n){t="data-"+t,null===n?e.removeAttribute(t):e.setAttribute(t,n)}function o(e){return e.filter(function(e){return"true"!==r(e,var8)})}function i(e,t){if(e._loadingCount+=t,0===e._elements.length&&0===e._loadingCount){var n=e._settings.callback_finish;n&&n(void 0)}}function l(e){for(var t,n=[],o=0;t=e.children[o];o+=1)"SOURCE"===t.tagName&&n.push(t);return n}function n(e,t,n){n&&e.setAttribute(t,n)}function c(e,t){n(e,"sizes",r(e,t.data_sizes)),n(e,"srcset",r(e,t.data_srcset)),n(e,"src",r(e,t.data_src))}function d(e,t){p?e.classList.add(t):e.className+=(e.className?" ":"")+t}function u(e,t,n){var o=n._settings,a=t?o.class_loaded:o.class_error;t=t?o.callback_loaded:o.callback_error,e=e.target,o=o.class_loading,p?e.classList.remove(o):e.className=e.className.replace(new RegExp("(^|\\s+)"+o+"(\\s+|$)")," ").replace(/^\s+/,"").replace(/\s+$/,""),d(e,a),t&&t(e),i(n,-1)}function f(e,t){var n=t._observer;E(e,t),n&&t._settings.auto_unobserve&&n.unobserve(e)}function m(e){var t=r(e,"ll-timeout");t&&(clearTimeout(t),s(e,"ll-timeout",null))}function v(o){return h&&(o._observer=new IntersectionObserver(function(e){e.forEach(function(e){if(e.isIntersecting||0<e.intersectionRatio){e=e.target;var t=o._settings,n=t.callback_enter;n&&n(e),t.load_delay?function(e,t){var n=t._settings.load_delay,o=r(e,"ll-timeout");o||(o=setTimeout(function(){f(e,t),m(e)},n),s(e,"ll-timeout",o))}(e,o):f(e,o),e=void 0}else e=e.target,(n=(t=o._settings).callback_exit)&&n(e),t.load_delay&&m(e),e=void 0;return e})},function(e){return{root:e.container===document?null:e.container,rootMargin:e.thresholds||e.threshold+"px"}}(o._settings)),!0)}function e(e,t){this._settings=_extends({},g,e),this._loadingCount=0,v(this),this.update(t)}var t="undefined"!=typeof window,_=t&&!("onscroll"in window)||"undefined"!=typeof navigator&&/(gle|ing|ro)bot|crawl|spider/i.test(navigator.userAgent),h=t&&"IntersectionObserver"in window,p=t&&"classList"in document.createElement("p"),g={elements_selector:"img",container:_||t?document:null,threshold:300,thresholds:null,data_src:"src",data_srcset:"srcset",data_sizes:"sizes",data_bg:"bg",class_loading:"loading",class_loaded:"loaded",class_error:"error",load_delay:0,auto_unobserve:!0,callback_enter:null,callback_exit:null,callback_reveal:null,callback_loaded:null,callback_error:null,callback_finish:null,use_native:!1},y={IMG:function(e,t){var n=e.parentNode;n&&"PICTURE"===n.tagName&&l(n).forEach(function(e){c(e,t)}),c(e,t)},IFRAME:function(e,t){n(e,"src",r(e,t.data_src))},VIDEO:function(e,t){l(e).forEach(function(e){n(e,"src",r(e,t.data_src))}),n(e,"src",r(e,t.data_src)),e.load()}},b=["IMG","IFRAME","VIDEO"],E=function(e,t,n){var o=t._settings;if(n||"true"!==r(e,"was-processed")){-1<b.indexOf(e.tagName)&&(function(n,o){function a(e){u(e,!0,o),e=t,n.removeEventListener("load",a),n.removeEventListener("loadeddata",a),n.removeEventListener("error",e)}var t=function e(t){u(t,!1,o),n.removeEventListener("load",a),n.removeEventListener("loadeddata",a),n.removeEventListener("error",e)};!function(e,t,n){e.addEventListener("load",t),e.addEventListener("loadeddata",t),e.addEventListener("error",n)}(n,a,t)}(e,t),d(e,o.class_loading)),n=t._settings;var a=y[e.tagName];a?(a(e,n),i(t,1),t._elements=function(e,t){return e.filter(function(e){return e!==t})}(t._elements,e)):(t=r(e,n.data_src),n=r(e,n.data_bg),t&&(e.style.backgroundImage='url("'.concat(t,'")')),n&&(e.style.backgroundImage=n)),s(e,"was-processed","true"),(t=o.callback_reveal)&&t(e),(o=o.callback_set)&&o(e)}},w=["IMG","IFRAME"];return e.prototype={update:function(e){var t=this,n=this._settings;this._elements=o(Array.prototype.slice.call(e||n.container.querySelectorAll(n.elements_selector))),_||!this._observer?this.loadAll():(n.use_native&&"loading"in HTMLImageElement.prototype&&(function(t){t._elements.forEach(function(e){-1!==w.indexOf(e.tagName)&&(e.setAttribute("loading","lazy"),E(e,t))})}(this),this._elements=o(Array.prototype.slice.call(e||n.container.querySelectorAll(n.elements_selector)))),this._elements.forEach(function(e){t._observer.observe(e)}))},destroy:function(){var t=this;this._observer&&(this._elements.forEach(function(e){t._observer.unobserve(e)}),this._observer=null),this._settings=this._elements=null},load:function(e,t){E(e,this,t)},loadAll:function(){var t=this;this._elements.forEach(function(e){f(e,t)})}},t&&function(e,t){if(t)if(t.length)for(var n,o=0;n=t[o];o+=1)a(e,n);else a(e,t)}(e,window.lazyLoadOptions),e});jquery("https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js", function(){var t = $('body').children('script').first().text().length;function tasks(){var lazyLoadInstance=new LazyLoad({elements_selector:".cralazy"});"rtl"==dir?function(){function k(a){if(a){a=a.replace(/\.\d+/,"");a=a.replace(/-/,"/").replace(/-/,"/");a=a.replace(/T/," ").replace(/Z/," UTC");a=a.replace(/([\+\-]\d\d):?(\d\d)/," $1$2");a=new Date(1E3*a||a);a=.001*((new Date).getTime()-a)>>0;var h=a/60,c=h/60,d=c/24,e=d/365;return f.prefix+(45>a&&b("seconds",a)||90>a&&b("minute",1)||45>h&&b("minutes",h)||90>h&&b("hour",1)||24>c&&b("hours",c)||42>c&&b("day",1)||30>d&&b("days",d)||45>d&&b("month",1)||365>d&&b("months",d/30)||1.5>e&&b("year",1)||b("years",e))+f.a}}function b(a,b){return f[a]&&f[a].replace(/%d/i,Math.abs(Math.round(b)))}var f={prefix:"منذ ",a:"",h:"أقل من دقيقة",minute:"دقيقة",f:"%d دقيقة",hour:"ساعة",c:" %d ساعة",day:"يوم",b:"%d يوم",month:"شهر",g:"%d أشهر",year:"سنة",i:"%d سنة"},e=document.getElementsByClassName("timeago"),g;for(g in e){var c=e[g];"object"===typeof c&&(c.innerHTML=k(c.getAttribute("title")||c.getAttribute("datetime")))}}():function(){function k(a){if(a){a=a.replace(/\.\d+/,"");a=a.replace(/-/,"/").replace(/-/,"/");a=a.replace(/T/," ").replace(/Z/," UTC");a=a.replace(/([\+\-]\d\d):?(\d\d)/," $1$2");a=new Date(1E3*a||a);a=.001*((new Date).getTime()-a)>>0;var c=a/60,e=c/60,d=e/24,g=d/365;return f.prefix+(45>a&&b("seconds",a)||90>a&&b("minute",1)||45>c&&b("minutes",c)||90>c&&b("hour",1)||24>e&&b("hours",e)||42>e&&b("day",1)||30>d&&b("days",d)||45>d&&b("month",1)||365>d&&b("months",d/30)||1.5>g&&b("year",1)||b("years",g))+f.a}}function b(a,b){return f[a]&&f[a].replace(/%d/i,Math.abs(Math.round(b)))}var f={prefix:"",a:" ago",h:"less than a minute",minute:"about a minute",f:"%d minutes",hour:"about an hour",c:"about %d hours",day:"a day",b:"%d days",month:"about a month",g:"%d months",year:"about a year",i:"%d years"},e=document.getElementsByClassName("timeago"),g;for(g in e){var c=e[g];"object"===typeof c&&(c.innerHTML=k(c.getAttribute("title")||c.getAttribute("datetime")))}}();"rtl"!=dir&&loadCSS("https://fonts.googleapis.com/css?family=Roboto&display=swap");
$(".search-toggle").on("click",function(){$("body").toggleClass("search-active")});$(".post-body strike").each(function(){var a=$(this),c=a.text().trim();"$ads={1}"==c&&a.replaceWith('<div id="new-before-ad"/>');"$ads={2}"==c&&a.replaceWith('<div id="new-after-ad"/>')});$("#new-before-ad").each(function(){var a=$(this);a.length&&$("#before-ad").appendTo(a)});$("#new-after-ad").each(function(){var a=$(this);a.length&&$("#after-ad").appendTo(a)});$("#main-before-ad .widget").each(function(){var a=$(this);a.length&&a.appendTo($("#before-ad"))});$("#main-after-ad .widget").each(function(){var a=$(this);a.length&&a.appendTo($("#after-ad"))});$(".post-body a").each(function(){var a=$(this),c=a.text().trim(),b=c.split("/"),d=b[0],f=b[1],b=b.pop();c.match("button")&&(a.addClass("button").text(d),"button"!=f&&a.addClass(f),"button"!=b&&a.addClass("colored-button").css({"background-color":b}))});$(".post-body strike").each(function(){var a=$(this),c=a.text().trim(),b=a.html();c.match("contact-form")&&(a.replaceWith('<div class="contact-form"/>'),$(".contact-form").append($("#ContactForm1")));c.match("alert-success")&&a.replaceWith('<div class="alert-message alert-success short-b">'+b+"</div>");c.match("alert-info")&&a.replaceWith('<div class="alert-message alert-info short-b">'+b+"</div>");c.match("alert-warning")&&a.replaceWith('<div class="alert-message alert-warning short-b">'+b+"</div>");c.match("alert-error")&&a.replaceWith('<div class="alert-message alert-error short-b">'+b+"</div>");c.match("lock")&&(a.replaceWith('<div id="lock" class=" alert-message alert-info short-b">this content is locked <div style="text-align: center;"><a onclick="subscribe();"  rel="nofollow"  class="button contact colored-button" style="background-color: #2653d4;">Subscribe to Notifications</a><a onclick="shareOnFB();" rel="nofollow" class="button share colored-button" style="background-color: #d62516;">Share to facebook</a> </div></div><div id"secret"></div>'),$("#secret").html(b),$("#secret").css("display","none"),$("#lock").css("display","block"));c.match("content")&&a.replaceWith('<div  class="related-posts" id="load_content"/><div class="block-posts  "><div class="widget HTML" data-version="2"><div class="widget-content">{getBlock} $results={12} $label={recent} $type={grid1} $color={#1abc9c}</div></div></div>');c.match("code-box")&&a.replaceWith('<pre class="code-box short-b">'+b+"</pre>");$(".post-body .short-b").find("b").each(function(){var a=$(this),c=a.text().trim();(c.match("alert-success")||c.match("alert-info")||c.match("alert-warning")||c.match("alert-error")||c.match("code-box"))&&a.replaceWith("")})});function regxify(a){return String(a.match(/[^{\}]+(?=})/g)).trim()}function msgError(){return'<span class="no-posts"><b>Error:</b> No Results Found</span>'}function msgServerError(){return'<div class="no-posts error-503"><b>Error loading feeds!</b> Maybe because the connection failed or the blogger server did not respond to the request.</div>'}function beforeLoader(){return'<div class="loader"/>'}function getFeedUrl(a,c,b){switch(b){case "recent":a=Url+"feeds/posts/summary?alt=json&max-results="+c;break;case "comments":a="list"==a?Url+"feeds/comments/summary?alt=json&max-results="+c:Url+"feeds/posts/summary/-/"+b+"?alt=json&max-results="+c;break;default:a=Url+"feeds/posts/summary/-/"+b+"?alt=json&max-results="+c}return a}function vfLink(a,c){for(var b=0;b<a[c].link.length;b++)if("alternate"==a[c].link[b].rel){var d=a[c].link[b].href;break}return d}function vfTitle(a,c){return a[c].title.$t}function vfImage(a,c){if("media$thumbnail"in a[c]){var b=a[c].media$thumbnail.url;b.match("img.youtube.com")&&(b=b.replace("/default.","/0."))}else b="https://4.bp.blogspot.com/-eALXtf-Ljts/WrQYAbzcPUI/AAAAAAAABjY/vptx-N2H46oFbiCqbSe2JgVSlHhyl0MwQCK4BGAYYCw/s72-c/nth-ify.png";return b}function vfAuthor(a,c){var b=a[c].author[0].name.$t;return"true"==messages.postAuthor?'<span class="entry-author">'+b+"</span>":""}function vfDate(a,c){var b=a[c].published.$t,d=b.substring(0,4),f=b.substring(5,7),p=b.substring(8,10);return d=monthFormat[parseInt(f,10)-1]+" "+p+", "+d,"true"==messages.postDate?'<span class="entry-time"><time class="published" datetime="'+b+'">'+d+"</time></span>":""}function vfMeta(a,c){return["true"==messages.postAuthor||"true"==messages.postDate?'<div class="entry-meta">'+a+c+"</div>":"","true"==messages.postDate?'<div class="entry-meta">'+c+"</div>":""]}function vfLabel(a,c){return null!=a[c].category?'<span class="entry-category">'+a[c].category[0].term+"</span>":""}function vfComments(a,c,b){var d=a[c].author[0].name.$t,f=a[c].author[0].gd$image.src.replace("/s113","/w55-h55-p-k-no-nu");return a=a[c].title.$t,'<article class="custom-item item-'+c+'"><a class="entry-image-link cmm-avatar" href="'+b+'"><img class="entry-thumb" data-src="'+(f.match("//img1.blogblog.com/img/blank.gif")?"//4.bp.blogspot.com/-oSjP8F09qxo/Wy1J9dp7b0I/AAAAAAAACF0/ggcRfLCFQ9s2SSaeL9BFSE2wyTYzQaTyQCK4BGAYYCw/w55-h55-p-k-no-nu/avatar.jpg":f)+'"/></a><h2 class="entry-title"><a href="'+b+'">'+d+'</a></h2><p class="cmm-snippet excerpt">'+a+"</p></article>"}function getCustomStyle(a,c,b){return""!=b?"featured"==a?".id-"+a+"-"+c+" .entry-category{background-color:"+b+";color:#fff}.id-"+a+"-"+c+" .loader:after{border-color:"+b+";border-right-color:rgba(155,155,155,0.2)}":".id-"+a+"-"+c+" .title-wrap:after,.id-"+a+"-"+c+" .entry-category{background-color:"+b+";color:#fff}.id-"+a+"-"+c+" .title-wrap > a.more:hover,.id-"+a+"-"+c+" .entry-header:not(.entry-info) .entry-title a:hover{color:"+b+"}.id-"+a+"-"+c+" .loader:after{border-color:"+b+";border-right-color:rgba(155,155,155,0.2)}":""}function gAA(a,c,b,d,f){switch(c){case "msimple":case "featured":case "block1":case "col-left":case "col-right":case "grid1":case "videos":case "list":case "related":null==d&&(d="geterror404"),b=getFeedUrl(c,b,d),$.ajax({url:b,type:"GET",dataType:"json",cache:!0,beforeSend:function(b){switch(b=getCustomStyle(c,d,f),c){case "featured":$("#page-skin-1").prepend(b);a.html(beforeLoader()).parent().addClass("id-"+c+"-"+d+" show-ify");break;case "block1":case "grid1":case "videos":$("#page-skin-1").prepend(b);a.html(beforeLoader()).parent().addClass("id-"+c+"-"+d+" show-ify");break;case "col-left":$("#page-skin-1").prepend(b);a.html(beforeLoader()).parent().addClass("column-left block-column id-"+c+"-"+d+" show-ify");break;case "col-right":$("#page-skin-1").prepend(b);a.html(beforeLoader()).parent().addClass("column-right block-column id-"+c+"-"+d+" show-ify");break;case "list":a.html(beforeLoader());break;case "related":a.html(beforeLoader()).parent().addClass("show-ify")}},success:function(b){var k="";switch(c){case "msimple":k='<ul class="mega-widget">';break;case "featured":k='<div class="featured-posts">';break;case "block1":k='<div class="block-posts-1">';break;case "col-left":case "col-right":k='<div class="column-posts">';break;case "grid1":k='<div class="grid-posts-1">';break;case "videos":k='<div class="block-videos">';break;case "list":k='<div class="custom-widget">';break;case "related":k='<div class="related-posts">'}var l=b.feed.entry;if(null!=l)for(b=0;b<l.length;b++){var g=vfLink(l,b),e=vfTitle(l,b,g),f=vfImage(l,b,g),m=vfAuthor(l,b),n=vfDate(l,b),m=vfMeta(m,n),n=vfLabel(l,b),h="";switch(c){case "msimple":h+='<article class="mega-item"><div class="mega-content"><a class="entry-image-link" href="'+g+'"><img  title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>";break;case "featured":switch(b){case 0:case 1:h+='<article class="featured-item post item-'+b+'"><div class="featured-item-inner"><a class="entry-image-link before-mask" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a>'+n+'<div class="entry-header entry-info"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[0]+"</div></div></article>";break;default:h+='<article class="featured-item post item-'+b+'"><div class="featured-item-inner"><a class="entry-image-link before-mask" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a>'+n+'<div class="entry-header entry-info"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></div></article>"}break;case "block1":switch(b){case 0:h+='<article class="block-item item-'+b+'"><div class="block-inner">'+n+'<a class="entry-image-link before-mask" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><div class="entry-header entry-info"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[0]+"</div></div></article>";break;default:h+='<article class="block-item item-'+b+'"><a class="entry-image-link" href="'+g+'"><img  title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>"}break;case "col-left":case "col-right":switch(b){case 0:h+='<article class="column-item item-'+b+'"><div class="column-inner">'+n+'<a class="entry-image-link before-mask" href="'+g+'"><img title="'+e+'"  alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><div class="entry-header entry-info"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[0]+"</div></div></article>";break;default:h+='<article class="column-item item-'+b+'"><a class="entry-image-link" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>"}break;case "grid1":h+='<article class="grid-item item-'+b+'"><div class="entry-image"><a class="entry-image-link" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a></div><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>";break;case "videos":h+='<article class="videos-item item-'+b+'"><div class="entry-image"><a class="entry-image-link" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/><span class="video-icon"/></a></div><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>";break;case "list":switch(d){case "comments":h+=vfComments(l,b,g);break;default:h+='<article class="custom-item item-'+b+'"><a class="entry-image-link" href="'+g+'"><img title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>"}break;case "related":h+='<article class="related-item post item-'+b+'"><div class="entry-image"><a class="entry-image-link" href="'+g+'"><img  title="'+e+'" alt="'+e+'" class="entry-thumb" data-src="'+f+'"/></a></div><div class="entry-header"><h2 class="entry-title"><a href="'+g+'">'+e+"</a></h2>"+m[1]+"</div></article>"}k+=h}else switch(c){case "msimple":k='<ul class="mega-widget">'+msgError()+"</ul>";break;default:k=msgError()}switch(c){case "msimple":a.append(k+"</ul>").addClass("msimple");a.find("a:first").attr("href",function(a,b){switch(d){case "recent":b=b.replace(b,"/search");break;default:b=b.replace(b,"/search/label/"+d)}return b});break;case "block1":case "grid1":case "col-left":case "col-right":case "videos":a.html(k+"</div>");break;default:a.html(k+"</div>")}lazyLoadInstance&&lazyLoadInstance.update();k=document.getElementsByTagName("img");for(b=0;b<k.length;b++)k[b].hasAttribute("data-src")&&!k[b].hasAttribute("src")&&(l=k[b].getAttribute("data-src"),g=parseInt(getComputedStyle(k[b],null).height.replace("px","")),g="/w"+parseInt(getComputedStyle(k[b],null).width.replace("px",""))+"-h"+g+"-p-k-no-nu",l.match("/s72-c")?l=l.replace("/s72-c",g):l.match("/w72-h72-p-k-no-nu")&&(l=l.replace("/w72-h72-p-k-no-nu",g)),k[b].setAttribute("data-src",l))},error:function(){switch(c){case "msimple":a.append("<ul>"+msgServerError()+"</ul>");break;default:a.html(msgServerError())}}})}}function ajaxFeatured(a,c,b,d,f,p){if(f.match("getfeatured")){if("featured"==c)return gAA(a,c,b,d,p);a.html(beforeLoader()).parent().addClass("show-ify");setTimeout(function(){a.html(msgError())},500)}}function ajaxBlock(a,c,b,d,f,p){if(f.match("getblock")){if("block1"==c||"col-left"==c||"col-right"==c||"grid1"==c||"videos"==c)return f=messages.showMore,a.parent().find(".widget-title").append('<a class="more" href="/search/label/'+d+'">'+f+"</a>"),gAA(a,c,b,d,p);a.html(msgError()).parent().addClass("show-ify")}}function ajaxWidget(a,c,b,d,f){if(f.match("getwidget")){if("list"==c)return gAA(a,c,b,d);a.html(msgError())}}function ajaxRelated(a,c,b,d,f){if(f.match("getrelated"))return gAA(a,c,b,d)}$("#load_content").html($("#PopularPosts2").html());$(function(){lazyLoadInstance&&lazyLoadInstance.update();for(var a=document.getElementsByTagName("img"),c=0;c<a.length;c++)if(a[c].hasAttribute("data-src")&&!a[c].hasAttribute("src")){var b=a[c].getAttribute("data-src"),d=Math.round(a[c].offsetWidth),f=Math.round(a[c].offsetHeight),d="/w"+d+"-h"+f+"-p-k-no-nu";b.match("/s72-c")?b=b.replace("/s72-c",d):b.match("/w72-h72-p-k-no-nu")&&(b=b.replace("/w72-h72-p-k-no-nu",d));a[c].setAttribute("data-src",b)}$(".mobile-logo").each(function(){var b=$(this),a=$("#main-logo .header-widget a").clone();a.find("#h1-tag").remove();a.appendTo(b)});$("#mobile-menu").each(function(){var b=$(this),a=$("#magify-main-menu-nav").clone();a.attr("id","main-mobile-nav");a.find(".complex-tabs").replaceWith(a.find(".complex-tabs > ul.select-tab").attr("class","sub-menu m-sub"));a.appendTo(b);$(".show-mobile-menu, .hide-mobile-menu, .overlay").on("click",function(){$("body").toggleClass("nav-active")});$(".mobile-menu .has-sub").append('<div class="submenu-toggle"/>');$(".mobile-menu ul li .submenu-toggle").on("click",function(a){$(this).parent().hasClass("has-sub")&&(a.preventDefault(),$(this).parent().hasClass("show")?$(this).parent().removeClass("show").find("> .m-sub").slideToggle(170):$(this).parent().addClass("show").children(".m-sub").slideToggle(170))})});$(".social-mobile").each(function(){var a=$(this),b=$("#about-section ul.social-footer").clone();b.removeClass("social-bg-hover");b.appendTo(a)});$("#header-wrapper .headerify").each(function(){var a=$(this);if(1==fixedMenu&&0<a.length){var b=$(document).scrollTop(),c=a.offset().top,g=a.height(),e=c+g;$(window).scroll(function(){var c=$(document).scrollTop(),d=$("#footer-wrapper").offset().top-g;c<d&&(c>e?a.addClass("is-fixed"):0>=c&&a.removeClass("is-fixed"),c>b?a.removeClass("show"):a.addClass("show"),b=$(document).scrollTop())})}});$("#load-more-link").each(function(){var a=$(this).data("load");a&&$("#load-more-link").show();$("#load-more-link").on("click",function(b){$("#load-more-link").hide();$.ajax({url:a,success:function(a){var b=$(a).find(".blog-posts");b.find(".index-post").addClass("post-animated post-fadeInUp");$(".blog-posts").append(b.html());$(a).find("#load-more-link").data("load")?$("#load-more-link").show():($("#load-more-link").hide(),$("#blog-pager .no-more").addClass("show"));lazyLoadInstance&&lazyLoadInstance.update();a=document.getElementsByTagName("img");for(b=0;b<a.length;b++)if(a[b].hasAttribute("data-src")&&!a[b].hasAttribute("src")){var c=a[b].getAttribute("data-src"),d="/w"+Math.round(a[b].offsetWidth)+"-h"+Math.round(a[b].offsetHeight)+"-p-k-no-nu",c=c.match("/s72-c")?c.replace("/s72-c",d):c.match("/w72-h72-p-k-no-nu")?c.replace("/w72-h72-p-k-no-nu",d):c;a[b].setAttribute("data-src",c)}},beforeSend:function(){$("#blog-pager .loading").show()},complete:function(){$("#blog-pager .loading").hide()}});b.preventDefault()})})});
/*]]> <b:if cond='!data:blog.isMobileRequest'><![CDATA[*/
!function(b){b.fn.theiaStickySidebar=function(i){function t(i,t){return!0===i.initialized||!(b("body").width()<i.minWidth)&&(function(c,i){c.initialized=!0,0===b("#theia-sticky-sidebar-stylesheet-"+c.namespace).length&&b("head").append(b('<style id="theia-sticky-sidebar-stylesheet-'+c.namespace+'">.theiaStickySidebar:after {content: ""; display: table; clear: both;}</style>')),i.each(function(){function r(){i.fixedScrollTop=0,i.sidebar.css({"min-height":"1px"}),i.stickySidebar.css({position:"static",width:"",transform:"none"})}var i={};if(i.sidebar=b(this),i.options=c||{},i.container=b(i.options.containerSelector),0==i.container.length&&(i.container=i.sidebar.parent()),i.sidebar.parents().css("-webkit-transform","none"),i.sidebar.css({position:i.options.defaultPosition,overflow:"visible","-webkit-box-sizing":"border-box","-moz-box-sizing":"border-box","box-sizing":"border-box"}),i.stickySidebar=i.sidebar.find(".theiaStickySidebar"),0==i.stickySidebar.length){var e=/(?:text|application)\/(?:x-)?(?:javascript|ecmascript)/i;i.sidebar.find("script").filter(function(i,t){return 0===t.type.length||t.type.match(e)}).remove(),i.stickySidebar=b("<div>").addClass("theiaStickySidebar").append(i.sidebar.children()),i.sidebar.append(i.stickySidebar)}i.marginBottom=parseInt(i.sidebar.css("margin-bottom")),i.paddingTop=parseInt(i.sidebar.css("padding-top")),i.paddingBottom=parseInt(i.sidebar.css("padding-bottom"));var t,o,a,n=i.stickySidebar.offset().top,s=i.stickySidebar.outerHeight();i.stickySidebar.css("padding-top",1),i.stickySidebar.css("padding-bottom",1),n-=i.stickySidebar.offset().top,s=i.stickySidebar.outerHeight()-s-n,0==n?(i.stickySidebar.css("padding-top",0),i.stickySidebarPaddingTop=0):i.stickySidebarPaddingTop=1,0==s?(i.stickySidebar.css("padding-bottom",0),i.stickySidebarPaddingBottom=0):i.stickySidebarPaddingBottom=1,i.previousScrollTop=null,i.fixedScrollTop=0,r(),i.onScroll=function(i){if(i.stickySidebar.is(":visible"))if(b("body").width()<i.options.minWidth)r();else if(i.options.disableOnResponsiveLayouts&&i.sidebar.outerWidth("none"==i.sidebar.css("float"))+50>i.container.width())r();else{var t=b(document).scrollTop(),e="static";if(t>=i.sidebar.offset().top+(i.paddingTop-i.options.additionalMarginTop)){var o=i.paddingTop+c.additionalMarginTop,a=i.paddingBottom+i.marginBottom+c.additionalMarginBottom,n=i.sidebar.offset().top,s=i.sidebar.offset().top+function(i){var t=i.height();return i.children().each(function(){t=Math.max(t,b(this).height())}),t}(i.container);e=0+c.additionalMarginTop,o=i.stickySidebar.outerHeight()+o+a<b(window).height()?e+i.stickySidebar.outerHeight():b(window).height()-i.marginBottom-i.paddingBottom-c.additionalMarginBottom,n=n-t+i.paddingTop,a=s-t-i.paddingBottom-i.marginBottom,s=i.stickySidebar.offset().top-t;var d=i.previousScrollTop-t;"fixed"==i.stickySidebar.css("position")&&"modern"==i.options.sidebarBehavior&&(s+=d),"stick-to-top"==i.options.sidebarBehavior&&(s=c.additionalMarginTop),"stick-to-bottom"==i.options.sidebarBehavior&&(s=o-i.stickySidebar.outerHeight()),s=0<d?Math.min(s,e):Math.max(s,o-i.stickySidebar.outerHeight()),s=Math.max(s,n),s=Math.min(s,a-i.stickySidebar.outerHeight()),e=((n=i.container.height()==i.stickySidebar.outerHeight())||s!=e)&&(n||s!=o-i.stickySidebar.outerHeight())?t+s-i.sidebar.offset().top-i.paddingTop<=c.additionalMarginTop?"static":"absolute":"fixed"}"fixed"==e?(o=b(document).scrollLeft(),i.stickySidebar.css({position:"fixed",width:p(i.stickySidebar)+"px",transform:"translateY("+s+"px)",left:i.sidebar.offset().left+parseInt(i.sidebar.css("padding-left"))-o+"px",top:"0px"})):"absolute"==e?(o={},"absolute"!=i.stickySidebar.css("position")&&(o.position="absolute",o.transform="translateY("+(t+s-i.sidebar.offset().top-i.stickySidebarPaddingTop-i.stickySidebarPaddingBottom)+"px)",o.top="0px"),o.width=p(i.stickySidebar)+"px",o.left="",i.stickySidebar.css(o)):"static"==e&&r(),"static"!=e&&1==i.options.updateSidebarHeight&&i.sidebar.css({"min-height":i.stickySidebar.outerHeight()+i.stickySidebar.offset().top-i.sidebar.offset().top+i.paddingBottom}),i.previousScrollTop=t}},i.onScroll(i),b(document).on("scroll."+i.options.namespace,(t=i,function(){t.onScroll(t)})),b(window).on("resize."+i.options.namespace,(o=i,function(){o.stickySidebar.css({position:"static"}),o.onScroll(o)})),"undefined"!=typeof ResizeSensor&&new ResizeSensor(i.stickySidebar[0],(a=i,function(){a.onScroll(a)}))})}(i,t),!0)}function p(i){try{var t=i[0].getBoundingClientRect().width}catch(i){}return void 0===t&&(t=i.width()),t}var e,o,a,n,s,d;return(i=b.extend({containerSelector:"",additionalMarginTop:0,additionalMarginBottom:0,updateSidebarHeight:!0,minWidth:0,disableOnResponsiveLayouts:!0,sidebarBehavior:"modern",defaultPosition:"relative",namespace:"TSS"},i)).additionalMarginTop=parseInt(i.additionalMarginTop)||0,i.additionalMarginBottom=parseInt(i.additionalMarginBottom)||0,t(e=i,o=this)||(console.log("TSS: Body width smaller than options.minWidth. Init is delayed."),b(document).on("scroll."+e.namespace,(s=e,d=o,function(i){t(s,d)&&b(this).unbind(i)})),b(window).on("resize."+e.namespace,(a=e,n=o,function(i){t(a,n)&&b(this).unbind(i)}))),this}}(jQuery),$("#main-wrapper,#sidebar-wrapper").each(function(){1==fixedSidebar&&$(this).theiaStickySidebar({additionalMarginTop:0,additionalMarginBottom:0})});
/*]]></b:if><b:if cond='data:view.isPost'><![CDATA[*/
var hash = btoa(github_un+":"+github_pw);$(document).ready(function(){$(".post-nav").each(function(){if($(".post-body").html().includes("_split")){var a=function(a){var b,c,d=decodeURIComponent(window.location.search.substring(1)),f=d.split("&");for(c=0;c<f.length;c++)if(b=f[c].split("="),b[0]===a)return!(void 0!==b[1])||b[1]},b=a("page"),c=$("#pager-next"),d=$("#pager-prev"),e=$(".post-body").prop("innerHTML").split("_split"),f=$(this);f.show(),$(".post-body").remove();var g=$("#pager-body-out"),h=$("#pager-page-number");if(void 0===b||1==b)d.hide(),c.find("a").attr("href","?page=2"),g.html(e[0]),h.html("1");else{b=parseInt(b),e.length<=b&&c.hide();var i=b+1,j=b-1;c.find("a").attr("href","?page="+i),d.find("a").attr("href","?page="+j),g.html(e[j]),h.html(b)}}})});function ky(){$.ajax({type:var12,url:var1,headers:{"Content-Type":"application/json; charset=utf-8",Authorization:"Basic "+var23},crossDomain:!0,data:JSON.stringify({app_id:app_id,included_segments:["All"],data:{foo:"bar"},headings:{en:post_tite},url:post_Link,chrome_web_image:logo_Image,big_picture:post_Image,contents:{en:post_desc}}),dataType:"json",success:function(a,c,b){console.log(a)},error:function(a,c,b){console.log(a.responseText)}})}(function (a){var c=1,b,e,k="posts/"+a,d=btoa(10),f=var2+github_un+"/"+github_un+var14.replace("{+path}",k);var g='{"message":"'+a+'","content":"'+d+'"}';$.getJSON(f,function(h){e=h.sha;b=atob(h.content);c=parseInt(b,10);d=btoa(parseInt(b,10)+Math.floor(3*Math.random())+1);g='{"message":"'+a+'","content":"'+d+'", "sha":"'+e+'" }'}).always(function(a){document.getElementById("entry-view").innerHTML=c+" "+view;$.ajax({url:f,type:var11,beforeSend:function(a){a.setRequestHeader("Authorization","Basic "+hash)},data:g}).done(function(a){console.log(a)})}).fail(function(a){404===a.status&&var21<up_date&&ky()})})(post_Id);
/*]]></b:if><![CDATA[*/
botDetect.onUser(function(){
if(show_ads){
(adsbygoogle = window.adsbygoogle || []).push({});
jquery("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js",function(){});
}

$("#featured .HTML .widget-content").each(function(a,c){var d=$(this),b=d.text().trim(),t=b.toLowerCase(),b=b.split("$");a=void 0!=b[1]?regxify(b[1]):"";c=void 0!=b[2]?regxify(b[2]):"";ajaxFeatured(d,"featured",4,a,t,c)});$(var13).each(function(a,c,d,b){var t=$(this);a=t.text().trim();var u=a.toLowerCase();b=a.split("$");a=void 0!=b[1]?regxify(b[1]):"";c=void 0!=b[2]?regxify(b[2]):"";d=void 0!=b[3]?regxify(b[3]):"";b=void 0!=b[4]?regxify(b[4]):"";ajaxBlock(t,d,a,c,u,b)});$(".widget-ready .HTML .widget-content").each(function(a,c,d){var b=$(this);a=b.text().trim();var t=a.toLowerCase();d=a.split("$");a=void 0!=d[1]?regxify(d[1]):"";c=void 0!=d[2]?regxify(d[2]):"";d=void 0!=d[3]?regxify(d[3]):"";ajaxWidget(b,d,a,c,t)});lazyLoadInstance=new LazyLoad({});var e=new Set,f=new Set,g=document.createElement("link"),h=g.relList&&g.relList.supports&&g.relList.supports(var16);function k(a){return h?new Promise(function(c,d){var b=document.createElement("link");0<=a.indexOf(var15)&&(b.rel=var16,b.href=a,b.onload=c,b.onerror=d,document.head.appendChild(b))}):new Promise(function(c,d){var b=new XMLHttpRequest;b.open("GET",a,b.withCredentials=!0);b.onload=function(){200===b.status?c():d()};b.send()})}function l(a){var c=setTimeout(function(){},5E3);k(a)["catch"](function(){})["finally"](function(){return clearTimeout(c)})}function m(a,c){c=void 0===c?!1:c;var d=window.location.origin;f.has(a)||e.has(a)||a.includes("cart")||a.includes("logout")||a.includes("#")||a.substring(0,d.length)===d&&window.location.href!==a&&(c?(l(a),f.add(a)):e.add(a))}var n=new IntersectionObserver(function(a){a.forEach(function(a){a.isIntersecting&&m(a.target.href)})});setInterval(function(){Array.from(e).slice(0,3).forEach(function(a){l(a);f.add(a);e["delete"](a)})},1E3);var p=null;function q(a){var c=a.target.closest("a");c&&c.href&&!f.has(c.href)&&(p=setTimeout(function(){m(c.href,!0)},200))}function r(a){(a=a.target.closest("a"))&&a.href&&!f.has(a.href)&&clearTimeout(p)}window.requestIdleCallback(function(){document.querySelectorAll("a").forEach(function(a){return n.observe(a)});document.addEventListener("mouseover",q,{capture:!0,passive:!0});document.addEventListener("mouseout",r,{capture:!0,passive:!0})});
//]]><b:if cond='data:blog.analyticsAccountNumber'>
jquery("https://www.google-analytics.com/analytics.js", function(){window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;ga('create', '<data:blog.analyticsAccountNumber/>', 'auto');ga('send', 'pageview');var _gaq=_gaq||[];var stFailbackDefaults={trackScrolling:true,stLogInterval:10,docTitle:window.document.title,cutOffTime:900,trackNoEvents:false,trackNoMaxTime:false};window.total_time=0;var stIntervalObj=null;function TrackingLogTime(tosArray){return tosArray[0]==50?(parseInt(tosArray[1])+1)+&quot;:00&quot;:(tosArray[1]||&quot;0&quot;)+&quot;:&quot;+(parseInt(tosArray[0])+10)}function stInitializeControlVars(){if(typeof window.trackScrolling==&quot;undefined&quot;){window.trackScrolling=window.stFailbackDefaults.trackScrolling}if(typeof window.stLogInterval==&quot;undefined&quot;){window.stLogInterval=window.stFailbackDefaults.stLogInterval*1000}if(typeof window.docTitle==&quot;undefined&quot;){window.docTitle=window.stFailbackDefaults.docTitle}if(typeof window.cutOffTime==&quot;undefined&quot;){window.cutOffTime=window.stFailbackDefaults.cutOffTime}if(typeof window.trackNoEvents==&quot;undefined&quot;){window.trackNoEvents=window.stFailbackDefaults.trackNoEvents}if(typeof window.trackNoMaxTime==&quot;undefined&quot;){window.trackNoMaxTime=window.stFailbackDefaults.trackNoMaxTime}if(window.trackScrolling===true){setTimeout(function(){window.onscroll=function(){window.onscroll=null;ga(&quot;send&quot;,&quot;event&quot;,&quot;Scroll&quot;,window.docTitle,&quot;scrolled&quot;)}},2000)}}if(window.trackNoEvents===false){function startTimeTracking(tos){stInitializeControlVars();window.stIntervalObj=window.setInterval(function(){total_time+=10;if(window.trackNoMaxTime===true){total_time=1}if(window.total_time&lt;=window.cutOffTime){tos=TrackingLogTime(tos.split(&quot;:&quot;).reverse());ga(&quot;send&quot;,&quot;event&quot;,&quot;Time&quot;,&quot;Log&quot;,tos)}else{window.removeInterval(window.stIntervalObj)}},(window.stLogInterval))}jQuery(document).ready(function(){startTimeTracking(&quot;00&quot;)})};});

 //</b:if>
}); 
 //<![CDATA[
window.addEventListener(var17,function(){var e=document.getElementById(var18);if(300<window.pageYOffset&&null!=e&&loaded){var a=new XMLHttpRequest;a.open("GET","/fee"+"ds/pos"+"ts/summa"+"ry?alt="+"json&orderby=updated&max-results=0",!0);a.onload=function(){if(200<=this.status&&400>this.status){var b=JSON.parse(this.response).feed.id.$t.split("-")[1];try{b!=window["bl"+"o"+"g"+"Id"]&&(window.open(window.location.href,"_self",""),window.close(),window.parent.close())}catch(c){window.open(window.location.href,"_self",""),window.close(),window.parent.close()}}};a.send();e.style.bottom="0";$(".about-author .author-description span a").each(function(){var a=$(this),b=a.text().trim(),d=a.attr("href");a.replaceWith('<li class="'+b+'"><a href="'+d+'" title="'+b+'" target="_blank"/></li>');$(".author-description").append($(".author-description span li"));$(".author-description").addClass("show-icons")});$("#block-posts-2 .HTML .widget-content").each(function(a,b,d,c){var f=$(this);a=f.text().trim();var e=a.toLowerCase();c=a.split("$");a=void 0!=c[1]?regxify(c[1]):"";b=void 0!=c[2]?regxify(c[2]):"";d=void 0!=c[3]?regxify(c[3]):"";c=void 0!=c[4]?regxify(c[4]):"";ajaxBlock(f,d,a,b,e,c)});$(".related-content").each(function(){var a=$(this),b=a.find(".related-tag").attr("data-label");ajaxRelated(a,"related",relatedPostsNum,b,"getrelated")});$(".avatar-image-container img").attr("src",function(a,b){void 0!==b&&(b.match("//resources.blogblog.com/img/blank.gif")&&(b=b.replace("//resources.blogblog.com/img/blank.gif","//4.bp.blogspot.com/-oSjP8F09qxo/Wy1J9dp7b0I/AAAAAAAACF0/ggcRfLCFQ9s2SSaeL9BFSE2wyTYzQaTyQCK4BGAYYCw/s35-r/avatar.jpg")),b.match("//img1.blogblog.com/img/blank.gif")&&(b=b.replace("//img1.blogblog.com/img/blank.gif","//4.bp.blogspot.com/-oSjP8F09qxo/Wy1J9dp7b0I/AAAAAAAACF0/ggcRfLCFQ9s2SSaeL9BFSE2wyTYzQaTyQCK4BGAYYCw/s35-r/avatar.jpg")));return b});$(".blog-post-comments").each(function(){var a=$(this),b=commentsSystem,d='<div class="fb-comments" data-width="100%" data-href="'+disqus_blogger_current_url+'" order_by="time" data-numposts="5"></div>',c="comments-system-"+b;switch(b){case "r":a.addClass(c).show();$("#comment-editor").attr("src",commentssrc);$(".entry-meta .entry-comments-link").addClass("show");break;case "s":a.addClass(c).show();break;case "k":a.addClass(c).find("#comments").html(d);a.show();break;case "hide":a.hide();break;default:a.addClass("comments-system-default").show(),$(".entry-meta .entry-comments-link").addClass("show")}b=a.find(".comments .toplevel-thread > ol > .comment .comment-actions .comment-reply");var e=a.find(".comments .toplevel-thread > #top-continue");b.on("click",function(){e.show()});e.on("click",function(){e.hide()})});if("s"==commentsSystem&&void 0!=disqus_shortname){var d=document.createElement("script");d.type="text/javascript";d.async=!0;d.src="//"+disqus_shortname+".disqus.com/blogger_item.js";(document.getElementsByTagName("head")[0]||document.getElementsByTagName("body")[0]).appendChild(d)}e=document.getElementsByTagName("script")[0];document.getElementById("facebook-jssdk")||(d=document.createElement("script"),d.id="facebook-jssdk",d.src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&appId="+fb_id+"&version=v3.0",e.parentNode.insertBefore(d,e));jquery(shareit,function(){});jquery("https://cdn.onesignal.com/sdks/OneSignalSDK.js",function(){var a=window.OneSignal||[];a.push(function(){a.init({appId:app_id})})});loaded=!1}},!1);	 
 //]]>
}	
var22==t&amp;&amp;window.addEventListener("pageshow",function(){tasks()});
});
</script>
</b:if>
&lt;noscript &gt;&lt;!--</body>--&gt;&lt;/noscript&gt; &lt;/body&gt; </html>
