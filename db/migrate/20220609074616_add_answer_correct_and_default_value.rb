class AddAnswerCorrectAndDefaultValue < ActiveRecord::Migration[6.1]
  def change
    add_column(:answers, :correct, :integer,null: false, default: 0)
  end
end
