module ApplicationHelper
  def textilize source
    RedCloth.new(source).to_html
  end
  
  def sortable col, title = nil
    title ||= col.titleize
    css_class = col == sort_col ? "current #{sort_direction}" : nil
    direction = col == sort_col && sort_direction == 'asc' ? 'desc' : 'asc'
    
    link_to title, {:sort =>col, :direction => direction}, {:class => css_class, :title => "Sort " + direction}
  end
end
