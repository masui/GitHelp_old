# -*- coding: utf-8 -*-

class GitHelpTest < Minitest::Test
  def test_onehour
    githelp("..", " 1時間 ").each { |a|
      assert a.length == 2
      assert a[0] =~ /1時間/
    }
  end

  def test_diff
    githelp("..", " 比較 ").each { |a|
      assert a[1] =~ /diff/
    }
  end
end

