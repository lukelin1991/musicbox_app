Rails.application.routes.draw do
  resources :playlist_songs
  resources :playlists
  resources :songs
  resources :artists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
