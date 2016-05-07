# coding: utf-8
#
def args
  ARGV.map { |arg|
    arg.sub(/^['"]/,'').sub(/['"]$/,'')
  }
end
