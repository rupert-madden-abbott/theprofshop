$(function() {
  $('#pages th a, #products .pagination a').live('click', function() {
    $.getScript(this.href);
    return false;
  });
  $('#pages_search input').keyup(function() {
    $.get($('#pages_search').attr('action'), $('#pages_search').serialize(), null, 'script');
    return false;
  });
});
