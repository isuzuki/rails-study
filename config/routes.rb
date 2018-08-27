Rails.application.routes.draw do
  resources :items, only: [:index]

  # GETの404の記述例
  # get '*not_found', controller: 'application', action: 'render_404'
  # get '*not_found' => 'application#render_404'

  # matchの404の記述例
  match '*not_found' => 'application#render_404', via: :all
  # match '*not_found', :to => 'application#render_404', via: :all
  # この書き方はsyntaxエラーになる
  # match '*not_found', controller: 'application', action: 'render_404', via: all:
end
