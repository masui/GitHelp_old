# coding: utf-8

require 're_expand'

def githelp(progdir, pat)
  require "#{progdir}/lib/files"
  require "#{progdir}/lib/args"
  require "#{progdir}/lib/params"
  require "#{progdir}/lib/branches"
  require "#{progdir}/lib/changes"
  require "#{progdir}/lib/glossary"

  datadir = "#{progdir}/data"

  entries = []
  Dir.open(datadir).each { |file|
    next unless File.file?("#{datadir}/#{file}")
    next if file !~ /\.rb$/
    a = eval File.read("#{datadir}/#{file}")
    entries += a if a
  }

  g = ExpandRuby::Generator.new # re_expandのジェネレータ
  entries.each { |entry|
    g.add entry[0], entry[1]
  }
  res = g.generate pat
  listed = {}
  res[0].find_all { |a| # 0 ambig
    if listed[a[1]]
      false
    else
      listed[a[1]] = true
    end
  }
end
