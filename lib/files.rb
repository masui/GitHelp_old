#
#
#
def files
  files = Dir.glob("*").find_all { |file|
    file !~ /~$/ &&
      file !~ /^\#/
  }
end
