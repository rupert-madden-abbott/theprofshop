module ApplicationHelper
  def textilize source
    RedCloth.new(source).to_html
  end
  
  def sortable col, title = nil
    title ||= col.titleize
    css_class = "sortable" + (col == sort_col ? " current #{sort_direction}" : "")
    direction = col == sort_col && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, params.merge(:sort => col, :direction => direction, :page => nil), {:class => css_class, :title => "Sort " + direction}
  end
end
