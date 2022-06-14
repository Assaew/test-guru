class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :completed_tests
  has_many :users, through: :completed_tests

  validates :title, presence: true
  validates :level, presence: true

  scope :sort_by_category, ->(category) { where(category: category).order(title: :desc) }
end
