class StaticController < ApplicationController
  def main
    @users = User.all
  end
end
