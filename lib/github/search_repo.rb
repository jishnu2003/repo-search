# frozen_string_literal: true

class SearchRepo
  class << self
    def where(name, opts = {})
      per_page = opts[:per_page] || 10
      page_no = opts[:page_no] || 1
      repos = OCTOKIT.search_repositories("#{name} in:name", { per_page: per_page, page_no: page_no })
      parse_response(repos, opts)
    end

    def parse_response(repos, opts)
      OpenStruct.new(
        {
          data: extract_repos(repos),
          total_count: repos.total_count,
          page_no: opts[:page_no]
        }
      )
    end

    def extract_repos(repos)
      repos.items.map { |repo| OpenStruct.new({ full_name: repo.full_name, url: repo.html_url }) }
    end
  end
end
