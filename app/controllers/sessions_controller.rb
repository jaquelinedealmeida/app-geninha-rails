class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def new 
    @session = Session.new
  end 

  def create
    @session = Session.new(session_params)

    if @session.save
      redirect_to @session
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def edit 
    @session = Session.find(params[:id])
  end 

  def update 
    @session = Session.find(params[:id])

    if @session.update(session_params)
      redirect_to @session
    else 
      render :edit, status: :unprocessable_entity
    end
  end   

  def destroy 
    @session = Session.find(params[:id])
    @session.destroy

    redirect_to root_path, status: :see_other
  end 

  private 
    def session_params 
      params.require(:session).permit(:title, :timetable)
    end 
end
