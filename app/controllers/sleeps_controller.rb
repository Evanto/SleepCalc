class SleepsController < ApplicationController

  def home
  end
 # POST /hours and minutes

 def new
   @sleep = Sleep.new
 end

 def create
   @sleep = Sleep.new(sleep_params)

   if @sleep.save!
     redirect_to sleeps_path
   else
     render :new, notice: "Post was"
   end
 end

 def show
 end

 def index

 end


 private

 def sleep_params
 params.require(:sleep).permit(:hours, :minutes)
 end


end
