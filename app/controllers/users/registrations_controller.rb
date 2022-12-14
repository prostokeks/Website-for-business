class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :last_name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :avatar, :role, :level, :about, :phone, :work_group, :gender, :birthday, hobby_ids:[], skill_ids:[], language_ids:[]])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    root_path
  end

end
