<#import "base.ftl" as parent>
<#import "macros.ftl" as macro>

<@parent.layout>
  <@macro.postlist title="Tagged “${tag}”" posts=tag_posts />
  <p>More posts can be found in <a href="${content.rootpath}${config.archive_file}">the archive</a>.</p>
</@parent.layout>
