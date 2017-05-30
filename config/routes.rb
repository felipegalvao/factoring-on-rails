Rails.application.routes.draw do
  root 'budgets#new', as: :budgets_new
  post '/', to: 'budgets#create', as: :budgets_create
  get '/:id', to: 'budgets#show', as: :budget
end
