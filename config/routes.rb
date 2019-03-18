Rails.application.routes.draw do
  get 'parser/index'

  root 'parser#index'

  post 'import_file', to: 'parser#import_file'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
