class AddTestsCategory < ActiveRecord::Migration[6.1]
  def up
    add_column(:tests, :category_id, :bigint, default: 0)
    Test.update_all(category_id: '0')
    change_column(:tests, :category_id, :bigint, default: 0, null: false)
  end

  def down
    remove_column(:tests, :category_id)
  end
end
