class SessionsController < ApplicationController
  before_action :set_session, only: %i[show edit update destroy]

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to @session, notice: "Session was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @session.destroy
    redirect_to root_path, notice: "Session was successfully deleted."
  end
  def edit
  end

  def update
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:name, :tag_id)
  end
end
