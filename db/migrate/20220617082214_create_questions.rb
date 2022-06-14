class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :test
      t.string :title, null: false
      t.timestamps
    end
  end
end
