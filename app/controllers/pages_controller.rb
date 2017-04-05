class PagesController < ApplicationController
  def home
  end
 # POST /hours and minutes
 # https://github.com/Evanto/HNapp/blob/master/app/controllers/comments_controller.rb
 def create
   @pages = Page.create
 end

 def show
 end

 def index

 end

 def new
   @pages = Page.new
 end

end
