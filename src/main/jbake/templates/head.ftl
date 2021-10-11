<#ftl output_format="HTML">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><#if content.title?? >${content.title}<#else>${env.title}</#if></title>
<meta name="description" content="<#if content.spoiler?? >${content.spoiler}<#else>${env.description}</#if>">
<meta name="author" content="${env.author.name}">
<meta name="keywords" content="<#if content.tags??><#list content.tags as tag>${tag}<#sep>, </#sep><#else>${env.keywords}</#list><#else>${env.keywords}</#if>">
<meta name="generator" content="JBake">

<#include "social.ftl">
<#include "favicons.ftl">

<#if content.canonical?? >
  <link rel="canonical" href="<#if content.rootpath?? >${content.rootpath}</#if>${content.canonical}"/>
</#if>

<#if content.prism?? >
  <link id="prismCSS" rel="stylesheet" href="<#if content.rootpath?? >${content.rootpath}</#if>css/prism-base16-monokai.dark.css">
</#if>
<link id="styleCSS" rel="stylesheet" href="<#if content.rootpath??>${content.rootpath}</#if>css/style.css">
