class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :mydimension, :home ]

  def mydimension
    @disable_navbar = true
  end

  def home
  end
end
