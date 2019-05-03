class CreatePhrase5bs < ActiveRecord::Migration[5.2]
  def change
    create_table :phrase5bs do |t|
      t.string :phrase
      t.timestamps
    end
  end
end
