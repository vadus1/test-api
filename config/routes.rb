Rails.application.routes.draw do
  root 'home#index'

  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
end
