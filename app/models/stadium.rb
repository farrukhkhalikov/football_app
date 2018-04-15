class Stadium < ApplicationRecord
  self.table_name = "stadiums"
  has_many :comments, dependent: :destroy
end
