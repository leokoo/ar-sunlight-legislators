require_relative '../../db/config'
class Legislator < ActiveRecord::Base
	def self.find_sen_by_state(state)
		sen_arr = Legislator.where(state: state, title: "Sen")
		sen_arr.map{|x| x = x.name + " " + "(#{x.party})"}
	end

	def self.find_rep_by_state(state)
		rep_arr = Legislator.where(state: state, title: "Rep")
		rep_arr.map{|x| x = x.name + " " + "(#{x.party})"}
	end

	def name
		"#{firstname} #{lastname}"
	end
end