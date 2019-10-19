class TodoList < ApplicationRecord
  belongs_to :user
  validates_presence_of :user

  has_many :todo_items, :dependent => :destroy
end
