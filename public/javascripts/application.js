/* DO NOT MODIFY. This file was compiled Sun, 09 Jan 2011 09:14:13 GMT from
 * /home/rupert/projects/ruby/theprofshop/app/scripts/application.coffee
 */

(function() {
  $(document).ready(function() {
    if (history && history.pushState && $('.archivable').length) {
      $('.sortable, .pageable a').live('click', function() {
        $.getScript(this.href);
        history.pushState(null, document.title, this.href);
        return false;
      });
      $('#searchable input').keyup(function() {
        $.get($('#searchable').attr('action'), $('#searchable').serialize(), null, 'script');
        history.replaceState(null, document.title, $("#searchable").attr("action") + "?" + $("#searchable").serialize());
        return false;
      });
      return $(window).bind("popstate", function() {
        return $.getScript(location.href);
      });
    }
  });
}).call(this);
