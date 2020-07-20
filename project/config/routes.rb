Rails.application.routes.draw do
  get 'welcome/index'
  # the line below was added to direct localhost:[yourport] to the welcome index
  root 'welcome#index'
end
