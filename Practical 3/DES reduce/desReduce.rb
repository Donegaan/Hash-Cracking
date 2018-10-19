if ARGV.length != 1
    puts "Nee the name of a file."
    exit;
end

filename = ARGV[0] #take in des mismatched strings
puts "Opening '#{filename}'"

fh = open filename

out_file = File.new("des7.broken", "w")

while (line = fh.gets)
    out_file.puts(line[0..20]) # string including descrypt hash is 21 characters long when reduced to 7 characters
end

puts"Finished"

fh.close