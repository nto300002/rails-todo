class ChangeTodoItemsTitleLimit < ActiveRecord::Migration[7.0]
  def change
    change_column :todo_items, :title, :string, limit: 50
    change_column :todo_items, :description, :text, limit: 200
  end
end
