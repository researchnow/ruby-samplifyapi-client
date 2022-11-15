#! /usr/bin/env ruby

gemspec = `ls *.gemspec`
output = `gem build #{gemspec}`
output =~ /^\s+File: (.+)$/
puts `gem push --key github --host https://rubygems.pkg.github.com/researchnow #{$1}`