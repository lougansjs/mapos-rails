class HomesController < ApplicationController
  def index
  end

  def show
    @apps = App.all
  end
end
