Rails.application.routes.draw do
  resources :events, :path => 'eventos' do
  	post :register, on: :member
    collection do
      get 'register'
    end
  end
  devise_for :users, :controllers => {registrations: 'registrations'}
  get "/paginas/:pagina" => "paginas#show"
  root "paginas#show", pagina: "home"
end
