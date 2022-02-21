# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Repositories", type: :request do
  describe "GET Repositories" do
    it "return matching repositories" do
      get "/repositories", params: { search: 'jishnu2003' }
      repos = assigns(:repos)
      expect(response).to be_successful
      expect(repos.total_count).to be > 5
      expect(repos.page_no).to eq 1
    end

    it "return matching repositories" do
      get "/repositories", params: { search: 'github', page: 2 }
      repos = assigns(:repos)
      expect(response).to be_successful
      expect(repos.total_count).to be > 5
      expect(repos.page_no).to eq 2
    end
  end
end
