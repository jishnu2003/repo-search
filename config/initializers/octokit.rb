# frozen_string_literal: true

require 'octokit'

OCTOKIT = if ENV['access_token'].present?
  Octokit::Client.new(access_token: ENV['access_token'])
else
  Octokit::Client.new
end
