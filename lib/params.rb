# coding: utf-8
#
def params
  ARGV.find_all { |arg|
    arg =~ /^'.*'$/ || arg =~ /^".*"$/
  }
end
