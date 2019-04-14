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

  private 
  def self.search(name)
     @students = Student.where('NAME like ?', "%#{name}%")
     if name == ''
      Student.all
     else
      @students
     end
  end
end
