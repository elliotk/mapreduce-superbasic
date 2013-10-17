#!/usr/bin/env ruby

$stdin.each do |line| 
  words = line.split(/\W+/)
  words.each { |word| puts "#{word.downcase}\t#{1}" }
end

