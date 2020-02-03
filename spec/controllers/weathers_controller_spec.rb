require 'rails_helper'

RSpec.describe Api::V1::WeathersController, type: :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index, params: { local: "João Pessoa" }
      expect(response.status).to eq(200)
    end
  end
end


RSpec.describe Api::V1::WeathersController, type: :controller do
  describe "GET index" do
    it "has a 404 status code" do
      get :index, params: { local: nil }
      expect(response.status).to eq(404)
    end
  end
end