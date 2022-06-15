class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  
  def self.sort_by_category(category)
    Test.where(category_id: category).order(title: :desc)
  end
end
