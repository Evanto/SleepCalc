class PagesController < ApplicationController
  def home
  end
 # POST /hours and minutes
 # https://github.com/Evanto/HNapp/blob/master/app/controllers/comments_controller.rb
 def create
   @pages = Page.new(page_params)

   if @pages.save!
     redirect_to pages_path
   else
     render :new
   end
 end

 def show
 end

 def index

 end

 def new
   @pages = Page.new(page_params)
 end

 private

 def page_params
 params.require(:page).permit(:hours, :minutes)
 end

end
