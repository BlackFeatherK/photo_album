Rails.application.routes.draw do
  # 我們正常設定路由時必須一個一個的設定。
  # url 裡的 :id 我們會在 controller 裡用到 => params[:id]

  # get 'photos', to: 'photos#index'
  #   # http method => get, url => localhost:3000/photos,controller => photos, action => index
  # post 'photos', to: 'photos#create'
  #   # http method => post,url => localhost:3000/photos, controller => photos, action => create
  # get 'photos/new', to: 'photos#new'
  #   # http method => get, url => localhost:3000/photos/new, controller => photos, action => new
  # get 'photos/:id/edit', to: 'photos#edit'
  #   # http method => get, url => localhost:3000/photos/:id/edit, controller => photos, action => edit
  # get 'photos/:id', to: 'photos#show'
  #   # http method => get, url => localhost:3000/photos/:id, controller => photos, action => show
  # patch 'photos/:id', to: 'photos#update'
  #   # http method => patch, url => localhost:3000/photos/:id, controller => photos, action => update
  # put 'photos/:id', to: 'photos#update'
  #   # http method => put, url => localhost:3000/photos/:id, controller => photos, action => update
  # delete 'photos/:id', to: 'photos#destroy'
  #   # http method => delete, url => localhost:3000/photos/:id, controller => photos, action => destroy

  # 但 rails 的 RESTful 一個指令就幫我們完成了上面所有的路由
  resources :photos
end
