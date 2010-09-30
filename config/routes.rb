ActionController::Routing::Routes.draw do |map|
  
  map.connect 'questions/upload',:controller => 'questions', :action => 'upload'
  map.resources :questions
  map.resources :test
  map.connect 'user/chpass', :controller => 'user', :action => 'chpass'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format', :controller => 'test', :action => 'new'
end
