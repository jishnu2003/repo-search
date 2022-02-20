# frozen_string_literal: true

require 'octokit'

OCTOKIT = Octokit::Client.new

Octokit.configure do |c|
  c.auto_paginate = true
end
