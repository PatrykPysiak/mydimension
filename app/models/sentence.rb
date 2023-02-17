class Sentence < ApplicationRecord
  belongs_to :word
  validates :body, presence: true
end
