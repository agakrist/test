class StaticPagesController < ApplicationController

  def welcome
    @title = 'Hello world'
  end

  def about_us
    @title = "it's about page"
  end

end
