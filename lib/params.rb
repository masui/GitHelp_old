# coding: utf-8
#
def params(argv=ARGV)
  a = []
  argv.each { |arg|
    if arg =~ /^(\d+)[^\d]*$/ then
      a << $1
    elsif arg =~ /^'.*'$/ || arg =~ /^".*"$/ || arg =~ /^「.*」$/
      a << arg.sub(/^['"]/,'').sub(/['"]$/,'').sub('「','').sub('」','')
    end
  }
  a.length > 0 ? a : ['xxx']
end
