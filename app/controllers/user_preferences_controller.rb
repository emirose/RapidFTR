class UserPreferencesController < ApplicationController

  def update
    @user = User.find_by_user_name(current_user_name)

    if @user.update_attributes(params[:user])
      flash[:notice] = I18n.t("user.messages.time_zone_updated")
    end
    redirect_to root_path
  end
end
