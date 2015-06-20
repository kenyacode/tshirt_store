class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def home
    if current_user
      redirect_to t_shirts_path
    end
  end

  def dashboard
    @t_shirts = current_user.t_shirts
  end
end
