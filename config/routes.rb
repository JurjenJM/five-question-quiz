Rails.application.routes.draw do

  get 'rankings/score'

  root to: 'pages#home'

  get 'pages/home'

  get 'questions/1'

  get 'questions/2'

  get 'questions/3'

  get 'questions/4'

  get 'questions/5'

end
