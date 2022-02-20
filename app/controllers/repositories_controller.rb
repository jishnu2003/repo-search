# frozen_string_literal: true

class RepositoriesController < ApplicationController
  def index
    @current_page = [1, params[:page].to_i].max
    opts = {
      page_no: @current_page
    }
    @repos = Repos::Search.call(params[:search], opts) unless params[:search].nil?
  end
end
