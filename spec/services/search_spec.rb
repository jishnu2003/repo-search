# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Repos::Search do
  describe '.call' do
    it 'should return list of all matching repositories' do
      repos = described_class.call('jishnu2003', { page_no: 1 })
      expect(repos.total_count).to be > 5
      expect(repos.page_no).to be 1
    end
  end
end
