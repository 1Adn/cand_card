class Session < ApplicationRecord
  belongs_to :tag
  has_many :question_cards, dependent: :destroy
  has_many :image_cards, dependent: :destroy
end
