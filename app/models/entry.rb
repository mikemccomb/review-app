class Entry < ApplicationRecord
  belongs_to :subject
  belongs_to :category
end
