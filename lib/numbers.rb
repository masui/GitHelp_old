# coding: utf-8
#
def numbers(argv=ARGV)
  a = []
  argv.each { |arg|
    if arg =~ /^(\d+)[^\d]*$/ then
      a << $1
    end
  }
  a.length > 0 ? a : ['1']
end
