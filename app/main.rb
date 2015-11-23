require_relative '../app/models/legislator'
def names
	puts "testing!"
	legislator = Legislator.all
	puts "Please enter a state"
	state_entry = gets.chomp.upcase
	puts "\nSenators: "
	Legislator.find_sen_by_state(state_entry).each { |sen_name|
		p sen_name
	}
	puts "\nRepresentatives: "
	Legislator.find_rep_by_state(state_entry).each { |rep_name|
		p rep_name
	}
end

names
# Legislator.first.name