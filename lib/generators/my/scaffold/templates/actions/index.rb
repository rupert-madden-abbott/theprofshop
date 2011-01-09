  def index
    @<%= plural_name %> = <%= class_name %>.search(params[:search]).order(sort_col + " " + sort_direction).paginate(:per_page => "10", :page => params[:page])
  end
