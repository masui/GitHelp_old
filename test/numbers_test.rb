# coding: utf-8

require 'test_helper'

include Githelp

class GitHelpTest < Minitest::Test
  def test_numbers
    assert numbers(['3時間', '"b"', '8c']) == ['3','8']
  end
end

