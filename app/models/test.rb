class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  
  scope :sort_by_category, ->(cetagory) {where(category_id: category_id).order(title: :desc)}
end
