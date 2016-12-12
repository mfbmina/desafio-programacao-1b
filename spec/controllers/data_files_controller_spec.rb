require "rails_helper"

RSpec.describe DataFilesController, type: :controller do
  let(:data_file) { create(:data_file) }

  describe "GET index" do
    it "assigns @data_files" do
      get :index
      expect(assigns(:data_files)).to eq([data_file])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns @data_file" do
      get :show, params: { id: data_file.id }
      expect(assigns(:data_file)).to eq(data_file)
    end

    it "renders the show template" do
      get :show, params: { id: data_file.id }
      expect(response).to render_template("show")
    end
  end

  describe "GET new" do
    it "assigns @data_file" do
      get :new
      expect(assigns(:data_file)).to be_a_new(DataFile)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST create" do
    context 'when params are valid' do
      it "assigns @data_file" do
        expect { post :create, params: { data_file: attributes_for(:data_file) } }.to change(DataFile, :count).by(1)
      end

      it "redirects to the show page" do
        post :create, params: { data_file: attributes_for(:data_file) }
        expect(response).to redirect_to(data_file_path(assigns(:data_file)))
      end
    end

    context 'when params are not valid' do
      it "assigns @data_file" do
        expect { post :create, params: { data_file: attributes_for(:data_file, file: '') } }.to change(DataFile, :count).by(0)
      end

      it "redirects to the show page" do
        post :create, params: { data_file: attributes_for(:data_file, file: '') }
        expect(response).to render_template("new")
      end
    end
  end
end
