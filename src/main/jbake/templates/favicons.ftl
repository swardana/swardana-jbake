<#ftl output_format="HTML">
<link rel="shortcut icon" href="<#if content.rootpath??>${content.rootpath}</#if>favicon.ico">
<link rel="icon" href="<#if content.rootpath??>${content.rootpath}</#if>favicon.ico" sizes="16x16 32x32">

<!-- iOS -->
<link rel="mask-icon" color="#FFFFFF" href="<#if content.rootpath??>${content.rootpath}</#if>img/favicons/apple-touch-icon.png">

<#list [16, 32] as x>
    <link rel="apple-touch-icon" sizes="${x}x${x}" href="<#if content.rootpath??>${content.rootpath}</#if>img/favicons/favicon-${x}.png">
</#list>

<!-- Windows 8 IE 10 -->
<meta name="msapplication-TileColor" content="#FFFFFF" />
<meta name="msapplication-TileImage" content="<#if content.rootpath??>${content.rootpath}</#if>img/favicons/mstile-150x150.png" />

<!-- Windows 8.1 + IE11 and above -->
<meta name="msapplication-config" content="<#if content.rootpath??>${content.rootpath}</#if>browserconfig.xml" />

<!-- Web App manifest -->
<link rel="manifest" href="<#if content.rootpath??>${content.rootpath}</#if>web.manifest">
<meta name="theme-color" content="#FFFFFF" />