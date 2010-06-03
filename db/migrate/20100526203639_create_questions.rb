class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :content
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :good_answer

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
