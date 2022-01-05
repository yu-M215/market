Rails.application.routes.draw do
  # ユーザー用
  # URL /users/sign_in ...
  devise_for :users,skip: [:passwords,], controllers: {
    registrations: "publics/registrations",
    sessions: 'publics/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin,skip: [:registrations, :passwords], controllers: {
    sessions: "admins/sessions"
  }
end
