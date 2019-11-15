class ShowsController < ApplicationController
  before_action :find_show, only: [:show]
    
  def index
      @shows = Show.all
    end

    def new 
      @show = Show.new 
    end
    def create
        @show = Show.new(show_params)
        @show.save 
        redirect_to show_path(@show)
    end 
    def show  
    end 
    
  private 
    def show_params
      params.require(:show).permit(:name, :show_id, :episode_id, :guest_id, :rating)
    end  
    def find_show
      @show = Show.find(params[:id])
    end 
  end 
  