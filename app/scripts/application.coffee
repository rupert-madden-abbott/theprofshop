if history && history.pushState
  $ ->
    $('#pages th a, #pages .pagination a').live 'click', ->
      $.getScript(@href)
      history.pushState(null, document.title, @href)
      false
    $('#pages_search input').keyup ->
      $.get($('#pages_search').attr('action'), $('#pages_search').serialize(), null, 'script')
      history.replaceState(null, document.title, $("#pages_search").attr("action") + "?" + $("#pages_search").serialize())
      false
    $(window).bind "popstate", ->
      $.getScript(location.href)

