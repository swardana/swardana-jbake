<#ftl output_format="HTML">
<header>
  <h1 class="home">
    <a href="/">${env.author.name}</a>
  </h1>

  <nav>
    <ul class="nav">
      <li class="nav-item <#if content.type?? && content.type?matches("masterindex", "i")>nav-item-active</#if> ">
        <a href="<#if content.rootpath?? >${content.rootpath}<#else>/</#if>">Home</a>
      </li>
      <li class="nav-item <#if content.type?? && content.type?matches("archive", "i")>nav-item-active</#if>">
        <a href="<#if content.rootpath?? >${content.rootpath}</#if>${config.archive_file}">Archive</a>
      </li>
      <li class="nav-item <#if content.uri?? && content.uri?contains("about")>nav-item-active</#if>">
        <a href="<#if content.rootpath?? >${content.rootpath}</#if>about.html">About Me</a>
      </li>
    </ul>
  </nav>
</header>
