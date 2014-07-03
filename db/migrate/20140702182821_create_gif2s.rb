class CreateGif2s < ActiveRecord::Migration
  def change
    create_table :gif2s do |t|
      t.string :name
      t.string :caption

      t.timestamps
    end
  end
end
