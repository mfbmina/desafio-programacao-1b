require "rails_helper"

RSpec.describe InputsController, type: :controller do
  let(:input) { create(:input) }

  describe "GET index" do
    it "assigns @inputs" do
      get :index
      expect(assigns(:inputs)).to eq([input])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns @input" do
      get :show, params: { id: input.id }
      expect(assigns(:input)).to eq(input)
    end

    it "renders the show template" do
      get :show, params: { id: input.id }
      expect(response).to render_template("show")
    end
  end
end
