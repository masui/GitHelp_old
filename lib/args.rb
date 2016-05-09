# coding: utf-8
#
def args(argv=ARGV)
  a = []
  argv.each { |arg|
    if arg =~ /^(\d+)([^\d]+)?$/ then
      a << $1
      a << $2 if $2.to_s != ''
    else
      a << arg.sub(/^['"]/,'').sub(/['"]$/,'').sub('「','').sub('」','')
    end
  }
  a
end

if $0 == __FILE__
  argv = ['3時間', '"b"', '8c', '9']
  puts args(argv)
end
