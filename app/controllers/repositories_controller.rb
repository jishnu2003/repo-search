# frozen_string_literal: true

class RepositoriesController < ApplicationController
  def index
    @repos = Repos::Search.call(params[:search], search_opts) unless params[:search].nil?
  end

  private

  def search_opts
    @current_page = [1, params[:page].to_i].max
    {
      page_no: @current_page
    }
  end
end
