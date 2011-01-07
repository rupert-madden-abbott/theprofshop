class Page < ActiveRecord::Base
  attr_accessible :name, :permalink, :content
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
