class Task < ApplicationRecord
  belongs_to :business
 has_many :users, through: :userTasks
end