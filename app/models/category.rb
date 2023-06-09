class Category < ApplicationRecord
  has_many :subjects
  has_many :entries, through: :subjects

  validates :name, presence: true
end
