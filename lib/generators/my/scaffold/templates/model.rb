class <%= class_name %> < ActiveRecord::Base
  attr_accessible <%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
