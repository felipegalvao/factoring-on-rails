Rails.application.routes.draw do
  root 'budgets#new'

  get 'budgets/show'

  get 'budgets/create'


end
