class User < ApplicationRecord
  has_many :completed_tests
  has_many :tests, through: :completed_tests

  validates :name, :email, :password, presence: true

  def test_by_level(level)
    tests.where(level: level)
  end
end
