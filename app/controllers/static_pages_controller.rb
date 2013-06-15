class StaticPagesController < ApplicationController
  skip_before_filter :signed_in_user

  def home
  end

  def help
  end

  def about
  end

  def contact
  end
end
