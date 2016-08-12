Rails.application.routes.draw do

  root to: 'pages#home'

  get 'pages/home'
  get 'questions/one'
  get 'questions/two'
  get 'questions/three'
  get 'questions/four'
  get 'questions/five'
  get 'rankings/score'

end
