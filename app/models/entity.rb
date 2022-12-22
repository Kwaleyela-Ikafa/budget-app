class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  # has_and_belongs_to_many :groups
  has_many :group_entities

  validates :name, presence: true
  validates_numericality_of :amount, only_integer: true, greater_than_or_equal_to: 0
end
