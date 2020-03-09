class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.references :family, foreign_key: true
      t.integer :happiness
      t.integer :honesty
      t.integer :reliability
      t.integer :consistency
      t.integer :respect
      t.integer :benefits
      t.integer :kids
      t.integer :safetyAndComfort
      t.integer :pay
      t.string :workAgain
      t.integer :reputation
      t.string :url

      t.timestamps
    end
  end
end
