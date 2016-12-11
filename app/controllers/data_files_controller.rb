class DataFilesController < ApplicationController
  before_action :set_data_file, only: :show

  def index
    @data_files = DataFile.all
  end

  def show
  end

  def new
    @data_file = DataFile.new
  end

  def create
    @data_file = DataFile.new(data_file_params)

    respond_to do |format|
      if @data_file.save
        ImportFromFileWorker.perform_async(@data_file.id)
        format.html { redirect_to @data_file, notice: 'Data file was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_data_file
    @data_file = DataFile.find(params[:id])
  end

  def data_file_params
    params.require(:data_file).permit(:file)
  end
end
