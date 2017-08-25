module Reponsive
  def render_json_object(object)
    render :json => object
  end
  def implement_status(action, status)
    render json: {action=>status}
  end
end