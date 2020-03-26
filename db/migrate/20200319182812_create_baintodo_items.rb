class CreateBaintodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :baintodo_items do |t|
      t.string :content
      t.references :baintodo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
