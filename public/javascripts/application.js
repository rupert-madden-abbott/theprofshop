/* DO NOT MODIFY. This file was compiled Sat, 08 Jan 2011 04:09:05 GMT from
 * /home/rupert/projects/ruby/theprofshop/app/scripts/application.coffee
 */

(function() {
  $(function() {
    $('#pages th a, #pages .pagination a').live('click', function() {
      $.getScript(this.href);
      return false;
    });
    return $('#pages_search input').keyup(function() {
      $.get($('#pages_search').attr('action'), $('#pages_search').serialize(), null, 'script');
      return false;
    });
  });
}).call(this);
