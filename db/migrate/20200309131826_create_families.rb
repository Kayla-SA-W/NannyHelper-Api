class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :familyName
      t.string :parentOneName
      t.string :parentTwoName
      t.integer :numberOfKids
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
