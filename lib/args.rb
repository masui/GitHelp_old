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
  a.length > 0 ? a : ['']
end
