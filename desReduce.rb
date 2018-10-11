if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end

filename = ARGV[0]
puts "Going to open '#{filename}'"

fh = open filename

out_file = File.new("des7.broken", "w")

while (line = fh.gets)
    #line = line[0..22]
    out_file.puts(line[0..20])
end

filename = "des7.broken"
count = IO.readlines(filename).size
puts "There are #{count} lines in #{filename}"; 

fh.close