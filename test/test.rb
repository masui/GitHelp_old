require 'minitest/autorun'
require "../lib/githelp"

Dir.open(".").each { |file|
  if file =~ /_test\.rb$/ then
    eval File.read(file)
  end
}

