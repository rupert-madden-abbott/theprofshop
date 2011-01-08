/* DO NOT MODIFY. This file was compiled Sat, 08 Jan 2011 04:52:58 GMT from
 * /home/rupert/projects/ruby/theprofshop/app/scripts/application.coffee
 */

(function() {
  if (history && history.pushState) {
    $(function() {
      $('#pages th a, #pages .pagination a').live('click', function() {
        $.getScript(this.href);
        history.pushState(null, document.title, this.href);
        return false;
      });
      $('#pages_search input').keyup(function() {
        $.get($('#pages_search').attr('action'), $('#pages_search').serialize(), null, 'script');
        history.replaceState(null, document.title, $("#pages_search").attr("action") + "?" + $("#pages_search").serialize());
        return false;
      });
      return $(window).bind("popstate", function() {
        return $.getScript(location.href);
      });
    });
  }
}).call(this);
