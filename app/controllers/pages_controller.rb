class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :mydimension, :patrykpysiak]

  def mydimension
    @disable_navbar = true
    @disable_footer = true
  end

  def patrykpysiak
  end

  def norsk
  end

  def norsksetninger
  end

  def norskadjectiv
  end

  def norsksubstantiv
  end

end
