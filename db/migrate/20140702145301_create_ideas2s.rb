class CreateIdeas2s < ActiveRecord::Migration
  def change
    create_table :ideas2s do |t|
      t.string :gifs
      t.string :ideas

      t.timestamps
    end
  end
end
