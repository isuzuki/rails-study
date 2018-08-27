class ApplicationController < ActionController::Base
  def render_404
    render template: 'errors/404', status: 404, layout: 'application', content_type: 'text/html'
  end
end
