<#assign env = data.get("env.yml")>

<#macro layout type="home">

  <!DOCTYPE html>
  <html lang="${env.lang}">
    <head>
      <#include "head.ftl">
    </head>
    <body>
      <#include "header.ftl">
      <main class="tmpl-${type}">
        <#nested>
      </main>
    </body>
  </html>

</#macro>
