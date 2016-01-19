def greeting 
	greet_phrase = ARGV.delete_at(0)
	ARGV.each do |name|
		puts "#{greet_phrase} #{name}"
	end
end


greeting