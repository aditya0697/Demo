class HomeController < ApplicationController
  def index
    @user = User.new
    @user = User.where( usertype: "labour" )

  end
end
