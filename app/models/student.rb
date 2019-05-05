# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not 

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.student_names
    
    self.all.map do |student| 
      student.name
    end  
  end

  def self.search(name)
    self.student_names.select {|n| n.downcase == name.downcase}
  end


end
