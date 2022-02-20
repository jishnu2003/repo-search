# frozen_string_literal: true

class RepositoriesController < ApplicationController
  def index
    @repos = Repos::Search.call(params[:search]) unless params[:search].nil?
  end
end
