require 'rails_helper'

describe ArticlesController, type: :controller do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      puts request.inspect
      get :index
      puts response.inspect
      puts response.body
      expect(response).to have_http_status(200)
    end
  end
end
