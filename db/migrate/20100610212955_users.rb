class Users < ActiveRecord::Migration
  def self.up
     create_table :users do |t|
       t.string :username
       t.string :password
     end
    User.create :username => 'test', :password => 'test'
  end

  def self.down
    drop_table "users"
  end
end
