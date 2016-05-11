# coding: utf-8
#

module Githelp
  def numbers(argv=ARGV)
    a = []
    argv.each { |arg|
      if arg =~ /^(\d+)[^\d]*$/ then
        a << $1
      end
    }
    a.length > 0 ? a : ['1']
  end
end
