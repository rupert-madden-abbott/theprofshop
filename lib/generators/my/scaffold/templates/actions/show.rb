  def show
    if params[:permalink]
      @<%= singular_name %> = <%= class_name %>.find_by_permalink(params[:permalink])
      raise ActiveRecord::RecordNotFound, "<%= model_name.underscore.humanize.titleize %> not found" if @<%= singular_name %>.nil?
    else
      @<%= singular_name %> = <%= class_name %>.find(params[:id])
    end
  end
