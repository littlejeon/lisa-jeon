class WelcomeController < ApplicationController
  skip_before_action :authorize
  def index
    # binding.pry
  end
end
