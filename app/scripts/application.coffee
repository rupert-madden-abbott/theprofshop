$(document).ready ->
  if history && history.pushState && $('.archivable').length
    $('.sortable, .pageable a').live 'click', ->
      $.getScript(@href)
      history.pushState(null, document.title, @href)
      false
    $('#searchable input').keyup ->
      $.get($('#searchable').attr('action'), $('#searchable').serialize(), null, 'script')
      history.replaceState(null, document.title, $("#searchable").attr("action") + "?" + $("#searchable").serialize())
      false
    $(window).bind "popstate", ->
      $.getScript(location.href)
