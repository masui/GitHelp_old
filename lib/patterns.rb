# coding: utf-8
#
def patterns(argv=ARGV)
  a = []
  argv.each { |arg|
    if arg =~ /^(\d+)[^\d]*$/ then
      # a << $1
    elsif arg =~ /^'.*'$/ || arg =~ /^".*"$/ || arg =~ /^「.*」$/
      # a << arg.sub(/^['"]/,'').sub(/['"]$/,'').sub('「','').sub('」','')
    else
      a << arg
    end
  }
  a.length > 0 ? a : ['##PATTERN##']
end


