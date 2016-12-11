class InputsController < ApplicationController
  before_action :set_input, only: [:show]

  def index
    @inputs = Input.all
  end

  def show
  end

  private

  def set_input
    @input = Input.find(params[:id])
  end
end
