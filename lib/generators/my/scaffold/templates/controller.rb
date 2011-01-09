class <%= plural_class_name %>Controller < ApplicationController
  helper_method :sort_col, :sort_direction
  
  <%= controller_methods :actions %>
  
  private
  
  def sort_col
    <%= class_name %>.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end

