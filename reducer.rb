#!/usr/bin/env ruby

def output(previous_key, total)
  unless previous_key.nil? || previous_key.empty?
    puts "#{total}\t#{previous_key}" if total > 1000 
  end
end

previous_key = nil
total = 0

$stdin.each do |line|
  key, value = line.split("\t")
  if key != previous_key
    output(previous_key, total)
    previous_key = key
    total = 0
  end
  total += value.to_i
end

output(previous_key, total)

