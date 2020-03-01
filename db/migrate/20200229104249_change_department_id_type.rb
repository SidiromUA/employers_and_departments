class ChangeDepartmentIdType < ActiveRecord::Migration[6.0]
  def change
    change_column :employees, :department_id, :integer
  end
end
