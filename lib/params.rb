# coding: utf-8
#
def params
  ARGV.find_all { |arg|
    arg =~ /^'.*'$/ || arg =~ /^".*"$/ || arg =~ /^「.*」$/
  }.map { |arg|
    arg.sub(/^['"]/,'').sub(/['"]$/,'').sub('「','').sub('」','')
  }
end
