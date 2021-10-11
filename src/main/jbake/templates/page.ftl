<#import "base.ftl" as parent>

<@layout>${content.body}</@layout>

<#macro layout>
  <@parent.layout type="post">
    <h1>${content.title}</h1>
    <time datetime="${content.date?string("yyyy-LL-dd")}">${content.date?string("dd LLL yyyy")}</time>
    <#nested>
  </@parent.layout>
</#macro>
