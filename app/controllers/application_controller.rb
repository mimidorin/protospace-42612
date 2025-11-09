class ApplicationController < ActionController::Base
  # Deviseのコントローラが動くときだけ、追加パラメータを許可
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # 新規登録時に許可
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [:name, :profile, :occupation, :position]
    )

    # アカウント編集時に許可
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:name, :profile, :occupation, :position]
    )
  end
end
