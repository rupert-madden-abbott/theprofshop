$ = jQuery

$('#pages th a, #products .pagination a').live 'click', ->
  $.getScript @href
  false
  
$('#pages_search input').keyup ->
  $.get($('#pages_search').attr 'action', $('#pages_search').serialize, null, 'script')
  false


