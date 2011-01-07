module ApplicationHelper
  def textilize source
    RedCloth.new(source).to_html
  end
end
