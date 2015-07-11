class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.integer :up_votes, :default => 0
      t.integer :down_votes, :default => 0
      t.integer :reported_spam_count, :default => 0
      t.boolean :is_valid, :default => true
      t.references :topic, index: true

      t.timestamps
    end
  end
end
