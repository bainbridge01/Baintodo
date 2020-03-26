class CreateBaintodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :baintodo_lists do |t|
      t.string :title
      t.text :descrption

      t.timestamps
    end
  end
end
