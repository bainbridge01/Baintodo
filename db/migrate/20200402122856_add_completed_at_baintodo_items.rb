class AddCompletedAtBaintodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :baintodo_items, :completed_at, :datetime
  end
end
