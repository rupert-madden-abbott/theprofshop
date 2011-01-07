module PagesHelper
  def page_title(page_title)
    if page_title == 'Home'
      title(page_title, false)
    else
      title(page_title)
    end
  end
end
