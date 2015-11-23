require_relative '../app/models/legislator'
def rep_percentage
	puts "Please enter a gender to find the percentage"
	gender_entry = gets.chomp.upcase
	case gender_entry
	when "M"
		p "Male : #{Legislator.where(gender: "M").count.to_f}"
		p "Total : #{Legislator.all.count.to_f}"
		p "Percentage : #{(Legislator.where(gender: "M").count.to_f/Legislator.all.count.to_f) * 100}"
	when "F"
		p "Female : #{Legislator.where(gender: "F").count}"
		p "Total : #{Legislator.all.count}"
		p "Percentage : #{(Legislator.where(gender: "F").count.to_f/Legislator.all.count.to_f) * 100}"
	else
		puts "You're just making it up! :p"
	end
end

rep_percentage



# def names
# 	puts "Please enter a state"
# 	state_entry = gets.chomp.upcase
# 	puts "\nSenators: "
# 	Legislator.find_sen_by_state(state_entry).each { |sen_name|
# 		p sen_name
# 	}
# 	puts "\nRepresentatives: "
# 	Legislator.find_rep_by_state(state_entry).each { |rep_name|
# 		p rep_name
# 	}
# end
# names

