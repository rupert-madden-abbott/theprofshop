/* DO NOT MODIFY. This file was compiled Sat, 08 Jan 2011 03:34:01 GMT from
 * /home/rupert/projects/ruby/theprofshop/app/scripts/application.coffee
 */

(function() {
  var $;
  $ = jQuery;
  $('#pages th a, #products .pagination a').live('click', function() {
    $.getScript(this.href);
    return false;
  });
  $('#pages_search input').keyup(function() {
    $.get($('#pages_search').attr('action', $('#pages_search').serialize, null, 'script'));
    return false;
  });
}).call(this);
