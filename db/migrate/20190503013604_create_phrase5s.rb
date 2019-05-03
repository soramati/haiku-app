class CreatePhrase5s < ActiveRecord::Migration[5.2]
  def change
    create_table :phrase5s do |t|
      t.string :phrase, limit: 5, null: false, unique: true
      t.timestamps
    end
  end
end
