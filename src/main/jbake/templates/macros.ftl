<#macro taglist tags>
  <#list tags as tag>
    <a href="<#if content.rootpath?? >${content.rootpath}</#if>tags/${tag}.html" class="post-tag">
      ${tag}
    </a>
  </#list>
</#macro>

<#macro postlist title posts limit=0>
  <h1>${title}</h1>
  <#list posts>
    <ol reversed class="postlist" style="counter-reset: start-from ${posts?size + 1}">
      <#items as post>
        <#if limit != 0 && post?counter gt limit >
          <#break>
        </#if>
        <li class="postlist-item">
          <a href="<#if content.rootpath?? >${content.rootpath}</#if>${post.uri}" class="postlist-link">
            <#if post.title?? >${post.title}<#else><code>${post.uri}</code></#if>
          </a>
          <time class="postlist-date" datetime="${post.date?string("yyyy-LL-dd")}">
            ${post.date?string("dd LLL yyyy")}
          </time>
          <@taglist tags=post.tags />
        </li>
      </#items>
    </ol>
  <#else>
    <#-- do nothing -->
  </#list>
</#macro>
