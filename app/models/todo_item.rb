class TodoItem < ApplicationRecord
  validates :title, presence: { message: "titleは50文字以内で入力してください" }, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 300, message: "titleは300文字以内で入力してください" }
end
