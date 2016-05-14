# encoding: utf-8
# frozen_string_literal: true

Rails.application.routes.draw do
  root 'leads#index'

  get "/signup" => 'leads#new'

  post "/upload" => 'leads#upload'

  get "leads/:id" => 'leads#show'

  resources :leads, only: [:new, :create, :show, :index]

end
