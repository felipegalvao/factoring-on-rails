Rails.application.routes.draw do
  root 'budgets#new'
  post '/', to: 'budgets#create'
  get '/:id', to: 'budgets#show', as: :budget
end
