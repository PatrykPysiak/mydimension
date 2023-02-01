class Word < ApplicationRecord
  belongs_to :user
  #has_many :sentences, dependent: :destroy
  validates :core, presence: true, uniqueness: true
  validates :family, presence: true
end
