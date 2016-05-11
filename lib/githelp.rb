# coding: utf-8

require "githelp/version"
require 're_expand'

require "githelp/args"
require "githelp/files"
require "githelp/params"
require "githelp/patterns"
require "githelp/tags"
require "githelp/numbers"
require "githelp/branches"
require "githelp/changes"
require "githelp/glossary"
require "githelp/git_check"

module Githelp
  #
  # パタンを指定してコマンド候補リストを得る
  #
  def githelp(pat)

    datadir = File.expand_path('../../data', __FILE__)
    # $LOAD_PATH.unshift File.expand_path('../data', __FILE__)

    entries = []
    Dir.open(datadir).each { |file|
      next unless File.file?("#{datadir}/#{file}")
      next if file !~ /\.rb$/
      # require file
      a = eval File.read("#{datadir}/#{file}")
      entries += a if a
    }

    g = ExpandRuby::Generator.new # re_expandのジェネレータ
    entries.each { |entry|
      g.add entry[0], entry[1] if entry
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
end

# require 're_expand'
# 
# $libdir = File.dirname(__FILE__)
# require "#{$libdir}/files"
# require "#{$libdir}/args"
# require "#{$libdir}/params"
# require "#{$libdir}/patterns"
# require "#{$libdir}/tags"
# require "#{$libdir}/numbers"
# require "#{$libdir}/branches"
# require "#{$libdir}/changes"
# require "#{$libdir}/glossary"
# 
# #
# # パタンを指定してコマンド候補リストを得る
# #
# def githelp(pat)
#   datadir = "#{$libdir}/../data"
# 
#   entries = []
#   Dir.open(datadir).each { |file|
#     next unless File.file?("#{datadir}/#{file}")
#     next if file !~ /\.rb$/
#     a = eval File.read("#{datadir}/#{file}")
#     entries += a if a
#   }
# 
#   g = ExpandRuby::Generator.new # re_expandのジェネレータ
#   entries.each { |entry|
#     g.add entry[0], entry[1] if entry
#   }
#   res = g.generate pat
#   listed = {}
#   res[0].find_all { |a| # 0 ambig
#     if listed[a[1]]
#       false
#     else
#       listed[a[1]] = true
#     end
#   }
# end

