class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :courses_users, :owner_id, :course_id
  end
end
