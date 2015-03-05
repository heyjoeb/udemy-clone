# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  owner_id    :integer
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ActiveRecord::Base
	#course student
	has_and_belongs_to_many :users

	#course creator
	belongs_to :user, foreign_key: :owner_id
end
