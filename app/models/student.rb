# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(search_str)
    if search_str.empty?
      return Student.all
    else
      # Student.all.each{ |s| puts s.name }
      # puts search_str
      return Student.all.find_all{ |s| s.name.downcase.include?(search_str.downcase) }
    end
  end
end
