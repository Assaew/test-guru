class CreateCompletedTests < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_tests do |t|
      t.references :user, null: false
      t.references :test, null: false
      t.timestamps
    end
  end
end
