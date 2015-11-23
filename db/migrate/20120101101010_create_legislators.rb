require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateLegislators< ActiveRecord::Migration
  def change
    create_table :legislators do |t|
        t.string :title
    	t.string :firstname
    	t.string :lastname
        t.string :party
        t.string :state
        t.integer :in_office
        t.string :gender
        t.string :phone
        t.string :fax
        t.string :website
        t.string :webform
        t.string :twitter_id
    	t.date :birthdate
    	t.timestamps null: false
    end
  end
end