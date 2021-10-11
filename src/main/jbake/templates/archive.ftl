<#import "base.ftl" as parent>
<#import "macros.ftl" as macro>

<@parent.layout>
  <@macro.postlist title="Archive" posts=published_posts />
</@parent.layout>
