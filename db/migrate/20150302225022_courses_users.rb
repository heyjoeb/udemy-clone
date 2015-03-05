class CoursesUsers < ActiveRecord::Migration
  def change
  	create_table :courses_users do |t|
      t.integer :owner_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
