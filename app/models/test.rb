class Test < ApplicationRecord
  def self.sort_by_category(category)
    Test.where(category_id: category).order(title: :desc)
  end
end
