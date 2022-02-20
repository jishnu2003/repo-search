# frozen_string_literal: true

module Repos
  class Search < BaseService
    attr_reader :name, :opts

    def initialize(name, opts = {})
      @name = name
      @opts = opts
    end

    def call
      repos = fetch_repos
      repos
    end

    private

    def fetch_repos
      SearchRepo.where(name, opts)
    end
  end
end
