class WakesController < ApplicationController

  def home
  end
 # POST /hours and minutes

 def new
   @wake = Wake.new
 end

 def create
   @wake = Wake.new(wake_params)

   if @wake.save!
     redirect_to wakes_path
  # else
    # render :new
#   end
 end

 def show
 end

 def index

 end


 private

 def wake_params
 params.require(:wake).permit(:hours, :minutes)
 end


end
