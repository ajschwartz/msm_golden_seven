Rails.application.routes.draw do

  get('/', { :controller => 'movies', :action => 'index'})

  #--------------------------------------------------------------------------------------

  # DIRECTOR ACTIONS

  # directors - create
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form'})
  get('/create_director', { :controller => 'directors', :action => 'create_row'})

  # directors - read
  get('/directors', { :controller => 'directors', :action => 'index'})
  get('/directors/:id', { :controller => 'directors', :action => 'show'})

  # directors - delete
  get('/delete_director/:id', { :controller => 'directors', :action => 'delete_row'})

  # directors - update
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form'})
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row'})

  #--------------------------------------------------------------------------------------

  # ACTORS ACTIONS

  # actors - create
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form'})
  get('/create_actor', { :controller => 'actors', :action => 'create_row'})

  # actors - read
  get('/actors', { :controller => 'actors', :action => 'index'})
  get('/actors/:id', { :controller => 'actors', :action => 'show'})

  # actors - delete
  get('/delete_actor/:id', { :controller => 'actors', :action => 'delete_row'})

  # actors - update
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form'})
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row'})

  #--------------------------------------------------------------------------------------

  # MOVIES ACTIONS

  # movies - create
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form'})
  get('/create_movie', { :controller => 'movies', :action => 'create_row'})

  # movies - read
  get('/movies', { :controller => 'movies', :action => 'index'})
  get('/movies/:id', { :controller => 'movies', :action => 'show'})

  # movies - delete
  get('/delete_movie/:id', { :controller => 'movies', :action => 'delete_row'})

  # movies - update
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form'})
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row'})

end
