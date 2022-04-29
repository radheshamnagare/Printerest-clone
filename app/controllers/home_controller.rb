class HomeController < ApplicationController
  def index
      if user_signed_in?
          redirect_to imageposts_path
      end
  end

  def features

  end
  
end
