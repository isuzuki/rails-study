class ApplicationController < ActionController::Base
  rescue_from ActionController::UnknownFormat, with: :render_404

  def render_404
    render file: 'errors/404.html', status: 404, layout: 'application', content_type: 'text/html'
    # .txtや.pdfなどでアクセスされる場合、同一フォーマットのテンプレートを出力しようとしてエラーとなる
    # render template: 'errors/404', status: 404, layout: 'application', content_type: 'text/html'
  end
end
