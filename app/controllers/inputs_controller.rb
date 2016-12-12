class InputsController < ApplicationController
  before_action :set_input, only: :show

  def index
    @inputs = Input.all.page(params[:page]).per(10)
  end

  def show
  end

  private

  def set_input
    @input = Input.find(params[:id])
  end
end
