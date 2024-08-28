class HomeController < ApplicationController
  def index
    @message = user_signed_in? ? "Hello #{current_user.email}!" : "You are not signed in"
  end
end
