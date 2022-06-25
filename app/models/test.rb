class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :completed_tests
  has_many :users, through: :completed_tests
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :title, :level, presence: true

  scope :sort_by_category, ->(category) { where(category: category).order(title: :desc) }
end
