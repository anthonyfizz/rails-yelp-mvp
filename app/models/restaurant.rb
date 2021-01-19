class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: { message: 'cannot be blank' }
  validates :address, presence: { message: 'cannot be blank' }
  validates :category, presence: { message: 'cannot be blank' }
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian']}


end
