<#ftl output_format="HTML">

<!-- Open graph -->
<meta property="og:title" content="<#if content.title?? >${content.title}<#else>${env.title}</#if>">
<meta property="og:description" content="<#if content.spoiler?? >${content.spoiler}<#else>${env.description}</#if>">
<meta property="og:type" content="website">
<meta property="og:locale" content="${env.lang}">
<meta property="og:site_name" content="${env.title}">
<#if content.cover?? >
  <meta property="og:image" content="<#if content.rootpath??>${content.rootpath}</#if>${content.cover}"/>
</#if>
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="675" />

<!-- Twitter -->
<meta name="twitter:title" content="<#if content.title?? >${content.title}<#else>${env.title}</#if>">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="https://twitter.com/${env.social.twitter}">
<meta name="twitter:description" content="<#if content.spoiler?? >${content.spoiler}<#else>${env.description}</#if>">
<#if content.cover?? >
  <meta name="twitter:image" content="<#if content.rootpath??>${content.rootpath}</#if>${content.cover}">
</#if>
<meta name="twitter:creator" content="@${env.social.twitter}">
