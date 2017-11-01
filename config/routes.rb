Rails.application.routes.draw do
  get 'display/status'
  get 'display/accelerating'
  get 'display/brake'
  get 'display/lights'
  get 'display/parking'
  get 'cars/create' => 'cars#create'

end
