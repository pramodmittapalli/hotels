class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.string :location
      t.date   :check_in
      t.date   :check_out
      t.integer   :guests
      t.integer   :rooms
      
      t.timestamps
    end
  end

  def self.down
    drop_table :searches
  end
end
