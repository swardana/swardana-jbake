<#import "base.ftl" as parent>
<#import "macros.ftl" as macro>

<@parent.layout>
  <@macro.postlist title="Latest 3 posts" posts=published_posts limit=3 />
  <p>More posts can be found in <a href="${content.rootpath}${config.archive_file}">the archive</a>.</p>
</@parent.layout>
