# coding: utf-8

class GitHelpTest < Minitest::Test
  def test_args
    assert args(['3時間', '"b"', '8回']) == ['3','時間','b','8','回']
  end
end

