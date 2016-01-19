require_relative "entry.rb"

class AddressBook
	attr_accessor :entries

	def initialize 
		@entries = []
	end

	def add_entry(name, phone, email)
		index = 0
		@entries.each do |entry|
			if name < entry.name
				break
			end
			index += 1
		end
		@entries.insert(index, Entry.new(name, phone, email))
	end

	def remove_entry(name, phone_number, email)
		@entries.each_with_index do |entry, index|
			if entry.name == name && entry.phone_number == phone_number && entry.email == email
				@entries.delete_at(index)
				break
			end
		end
	end
end