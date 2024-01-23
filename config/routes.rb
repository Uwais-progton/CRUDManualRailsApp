
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "students#index"
  resources :students
  #delete '/delete/:id', to: "root#delete"
end































# Rails.application.routes.draw do
#   # Display a form to create a new student
#   get '/students/new', to: 'students#new', as: 'new_student'

#   # Create a new student
#   post '/students', to: 'students#create'

#   # Display the details of a specific student
#   get '/students/:id', to: 'students#show', as: 'student'

#   # Display a form to edit a specific student
#   get '/students/:id/edit', to: 'students#edit', as: 'edit_student'

#   # Update a specific student
#   patch '/students/:id', to: 'students#update'

#   # Delete a specific student
#   delete '/students/:id', to: 'students#destroy'

#   # Display a list of all students
#   get '/students', to: 'students#index', as: 'students'
# end

