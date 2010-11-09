#!/usr/bin/ruby

lines = nil

# read in file
File.open ARGV[0] do |f|
    lines = f.to_a
end

# replace types
{
    "filename" => "java.io.File"
}.each do |from,to|
    lines = lines.map{|l|l.gsub(/\b#{from}\b/, to)}
end

# write out
File.open ARGV[0], "w" do |f|
    f << lines
end



