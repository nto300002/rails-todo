class ChangeTodoItemsDescriptionLimit < ActiveRecord::Migration[7.0]
  def change
    change_column :todo_items, :description, :text, limit: 300
  end
end
