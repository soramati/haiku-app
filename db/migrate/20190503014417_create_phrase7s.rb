class CreatePhrase7s < ActiveRecord::Migration[5.2]
  def change
    create_table :phrase7s do |t|
      t.string :phrase, limit: 7, null: false, unique: true

      t.timestamps
    end
  end
end
