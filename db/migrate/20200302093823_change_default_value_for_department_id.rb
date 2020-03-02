class ChangeDefaultValueForDepartmentId < ActiveRecord::Migration[6.0]
  def change
    change_column :employees, :department_id, :integer, null: false
  end
end
