class ChangeRoleTypeToString < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :role, :string
  end

  def down
    change_column :users, :role, :integer
  end
end
