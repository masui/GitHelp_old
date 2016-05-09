# coding: utf-8

require 're_expand'

$libdir = File.dirname(__FILE__)
require "#{$libdir}/files"
require "#{$libdir}/args"
require "#{$libdir}/params"
require "#{$libdir}/branches"
require "#{$libdir}/changes"
require "#{$libdir}/glossary"

#
# パタンを指定してコマンド候補リストを得る
#
def githelp(pat)
  datadir = "#{$libdir}/../data"

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
