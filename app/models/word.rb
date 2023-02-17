class Word < ApplicationRecord
  belongs_to :user
  validates :core, presence: true, uniqueness: true
  validates :family, presence: true

  has_many :translations, dependent: :destroy
  has_many :sentences, dependent: :destroy
end
