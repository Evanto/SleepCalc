class PagesController < ApplicationController
  def home
  end
 # POST /hours and minutes

 def create
   @page = Page.new(page_params)

   if @page.save!
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
   @page = Page.new
 end

 private

 def page_params
 params.require(:page).permit(:hours, :minutes)
 end

end
