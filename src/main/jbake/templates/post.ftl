<#import "base.ftl" as parent>
<#import "macros.ftl" as macro>

<@layout>${content.body}</@layout>

<#macro layout>
  <@parent.layout type="post">
    <h1>${content.title}</h1>
    <time datetime="${content.date?string("yyyy-LL-dd")}">${content.date?string("dd LLL yyyy")}</time>
    <@macro.taglist tags=content.tags />
    <#nested>
    <p><em>
      If you have any comments or corrections please feel free to email them to me. Also, if you found any of the content on this website useful consider <a href="https://www.buymeacoffee.com/swardana">buy me a coffee</a> ;)
    </em></p>
    <#if (content.previousContent)?? || (content.nextContent)?? >
      <hr>
      <ul>
        <#if (content.nextContent)?? >
          <li>Next: <a href="${content.rootpath}${content.nextContent.uri}">${content.nextContent.title}</a></li>
        </#if>
        <#if (content.previousContent)?? >
          <li>Previous: <a href="${content.rootpath}${content.previousContent.uri}">${content.previousContent.title}</a></li>
        </#if>
      </ul>
    </#if>
  </@parent.layout>
</#macro>
