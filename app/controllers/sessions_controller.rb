class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def show
    @session = Session.find(params[:id])
  end

  def new 
    @article = Session.new
  end 

  def create
    @article = Session.new(session_params)

    if @session.save
      redirection_to @session
    else
      render :new, status: :unprocessable_entity
    end 
  end
end
