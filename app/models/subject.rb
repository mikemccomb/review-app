class Subject < ApplicationRecord
  belongs_to :category
  has_many :entries, dependent: :destroy
end
